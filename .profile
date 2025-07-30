PS1='\w '

ll(){ ls -lh $@; }
lt(){ find $PWD/$1 -type f; }

ga() { git add $@; }
gb() { git branch $@; }
gbs() { git bisect $@; }
gbv() { git branch -vv $@; }
gc() { git checkout $@; }
gcb() { git checkout -b $@; }
gcf() { git clean -f $@; }
gcl() { git clean $@; }
gcm() { git commit $@; }
gca() { git commit --amend $@; }
gcp() { git cherry-pick $@; }
gd() { git diff $@; }
gdn() { git diff --name-status $@; }
gds() { git diff --staged $@; }
gdt() { git difftool -y $@; }
gf() { git fetch $@; }
gl(){ git log $@; }
gm() { git merge $@; }
gp() { git push $@;}
gr() { git reset $@; }
grb() { git rebase $@; }
grh() { git reset --hard $@; }
grl() { git reflog $@; }
gs(){ git status $@; }
gsh() { git stash $@; }
gsm() { git submodule $@;}
gsp() { git stash pop $@; }
gsu() { git submodule update $@; }
wip() { git add .; git commit -m "WIP"; }
fix() { git add .; git commit --amend $@; }

d()  { docker "$@"; }
dp() { docker ps "$@"; }
dl() { docker logs "$@"; }
dr() { docker run --rm -it "$@" bash; }
de() { docker exec -it "$@" bash; }

c() { $@ | code -; }
pie() { tokei $1 -o json | tokei-pie; }
