#!/bin/sh

ssh -p 29418 git gerrit query owner:$USER status:open '(label:Code-Review>=0 NOT label:Code-Review=2)'    \
    | perl -00nE '($url) = /url: (.*)/m; ($subj) = /subject: (.*)/m; say "$url - $subj" if $url && $subj' \
    | sort

