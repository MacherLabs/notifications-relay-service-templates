
curl --request POST --url "$SLACK_NOTIFICATION_URL" --header "$AUTH_HEADER_VEDALABS" --header 'content-type: application/json' \
--data '{"text": "'"Build $1: $CI_PROJECT_NAME"'","attachments": [{"fallback": "'"Commit: $DOCKER_ENV_CI_COMMIT_SHORT_SHA"'", "author_name": "'"Owner: $GITLAB_USER_LOGIN"'", "title": "'"$CI_PROJECT_NAME: $DOCKER_ENV_CI_COMMIT_SHORT_SHA"'", "text": "'"$DOCKER_ENV_CI_COMMIT_TITLE"'" ,"actions": [{"name": "action", "type": "button","text": "View","style": "","value": "complete","url": "'"$DOCKER_ENV_CI_PROJECT_URL"'"}]}]}'
