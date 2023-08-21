#!/usr/bin/env bash
SUBJECT="Subject: new blog post just dropped!\nContent-Type: text/html\n\n"
UNSUBCRIBE="to unsubscribe, click this <a href=\"ka.dreadmaw.industries/unsubscribe-page.html\">link</a>"
CONTENT=$(cat -)
ARR=("msmtp" "-a" "gmail")
echo "sending emails..."
for EMAIL in $(cat emails.txt); do
    ARR+=( $EMAIL )
done
printf "$SUBJECT$content\n\n$UNSUBCRIBE" | xargs -a <(cat emails.txt) msmtp -a gmail
