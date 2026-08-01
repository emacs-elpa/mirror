#!/bin/bash

### ELPA mirror synchronization script

# Copyright (C) 2026 Daniel Mendler

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

### Code:

archives=(
    elpa.gnu.org::gnu-devel/       devel/gnu
    elpa.gnu.org::gnu/             stable/gnu
    elpa.nongnu.org::nongnu-devel/ devel/nongnu
    elpa.nongnu.org::nongnu/       stable/nongnu
    melpa.org::packages-snapshots/ devel/melpa
    melpa.org::packages-releases/  stable/melpa
)

for (( i=0; i<${#archives[@]}; i+=2 )); do
    src="${archives[i]}"
    dst="${archives[i+1]}"
    exc="${dst}.exclude"

    mkdir -p "$dst"
    touch "$exc"

    # Synchronize files.
    echo "================================ sync $src -> $dst ================================"
    rsync --stats -az --delete --exclude-from=.gitignore --exclude-from="$exc" "$src" "$dst" || exit 1
    echo

    # Delete files which are too large, and ignore them from now on.
    while IFS= read -r -d '' file; do
        rel="${file#"$dst"/}"
        grep -Fxq -- "$rel" "$exc" || echo "$rel" >> "$exc"
        rm -f -- "$file"
    done < <(find "$dst" -type f -size +99M -print0)

    # Delete unused signatures, and ignore them from now on.
    while IFS= read -r -d '' file; do
        if [[ ! -f "${file%.sig}" ]]; then
            rel="${file#"$dst"/}"
            grep -Fxq -- "$rel" "$exc" || echo "$rel" >> "$exc"
            rm -f -- "$file"
        fi
    done < <(find "$dst" -type f -name '*.sig' -print0)
done

# Add all changes. Exit if there are no changes.
git add -A
git diff --staged --quiet && echo "No changes" && exit 0

# Configure git.
git config user.name "emacs-elpa"
git config user.email "sync@emacs-elpa"

# Find unused tag of the form YYYY-mm-dd.n.
today=$(date -u +"%Y-%m-%d")
tag="$today"
n=2
while [[ -n "$(git tag -l "$tag")" ]]; do
    tag="$today.$n"
    n=$((n + 1))
done

# Commit, add tag and push.
git commit -m "sync: $tag" &&
    git tag --no-sign "$tag" &&
    git push origin HEAD --tags &&
    exit 0

exit 1
