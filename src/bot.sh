#!/bin/bash
STADY=$1

sleep 5

if [ "$CI_JOB_STATUS" == "success" ]; then
  MESSAGE="🤩🤩🤩 Стадия $STADY $CI_JOB_NAME прошла успешно! Ура! Можно радоваться! 🎉🎉🎉 $CI_PROJECT_URL/pipelines"
else
  MESSAGE="😭😭😭 Стадия $STADY $CI_JOB_NAME к сожалению не прошла! Попробуй все исправить и запустить еще раз! Ты все равно молодец! 💪💪💪 $CI_PROJECT_URL/pipelines"
fi

curl -X POST "https://api.telegram.org/bot"TOKEN/sendMessage" -d chat_id=ID -d text="$MESSAGE"

# с CI_ ...- глобальные переменные gitlab-runner