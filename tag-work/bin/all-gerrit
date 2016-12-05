#!/bin/sh

# ssh -p 29418 git gerrit query owner:self change:32552 status:open --all-approvals --current-patch-set

ssh -p 29418 git gerrit query owner:self status:open \
    | perl -00nE '($url) = /url: (.*)/m; ($subj) = /subject: (.*)/m; say "$url - $subj" if $url && $subj' \
    | sort
