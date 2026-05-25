#!/bin/bash

archives=(
    elpa.gnu.org::elpa-devel/      devel/gnu
    elpa.gnu.org::elpa/            stable/gnu
    elpa.nongnu.org::nongnu-devel/ devel/nongnu
    elpa.nongnu.org::nongnu/       stable/nongnu
    melpa.org::packages/           devel/melpa
    melpa.org::packages-stable/    stable/melpa
)

for (( i=0; i<${#archives[@]}; i+=2 )); do
    src="${archives[i]}"
    dst="${archives[i+1]}"
    echo "================================ sync $src -> $dst ================================"
    rsync --stats -az --delete --exclude-from=sync.exclude "$src" "$dst"
    echo
done

git add -A
git diff --staged --quiet && echo "No changes" && exit 0

git config user.name "emacs-elpa"
git config user.email "sync@emacs-elpa"

git commit -m "sync: $(date -u +"%Y-%m-%d %H:%M:%S UTC")"
git push
