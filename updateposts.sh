#!/bin/bash

JEKYLL_ENV=production bundle exec jekyll build
git add . && git commit -m 'onFileChangeHook' && git push
scp -r _site/_posts/202* neko@box.alumni.re:/neko.her.st
echo "done!"