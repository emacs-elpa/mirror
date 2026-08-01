#!/bin/bash

shopt -s globstar nullglob

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
    exc="${dst}/.exclude"
    touch "$exc"

    # Synchronize files.
    echo "================================ sync $src -> $dst ================================"
    rsync --stats -az --delete --exclude-from=.gitignore --exclude-from="$exc" "$src" "$dst"
    echo

    # Delete files which are too large.
    find "$dst" -type f -size +99M -delete

    # Delete unused signatures and ignore them from now on.
    for sig in "$dst"/*.sig; do
        if [[ ! -f "${sig%.sig}" ]]; then
            rel="${sig#"$dst"/}"
            grep -Fxq "$rel" "$exc" || echo "$rel" >> "$exc"
            rm -f -- "$sig"
        fi
    done
done

# Configure git.
git config user.name "emacs-elpa"
git config user.email "sync@emacs-elpa"

# Add all changes. Exit if there are no changes.
git add -A
git diff --staged --quiet && echo "No changes" && exit 0

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
