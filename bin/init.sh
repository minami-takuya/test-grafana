#!/bin/bash

dir=$(cd $(dirname $0); pwd)

# slack_api_url_file
slack_url_file_path="${dir}/../alertmanager/slack_api_url_file.txt"
slack_url_file_eanble=true

echo "Creating a slack_api_url_file"
if [ -e $slack_url_file_path ];then
  read -p "slack_api_url_file exists. orderride? [y/N]" yn
  if [[ ! $yn = [yY] ]]; then
    slack_url_file_eanble=false
  fi
fi

if ${slack_url_file_eanble}; then
  read -p "Enter the slack hook url for the notification : " slack_url
  # Error occurs when a newline code is present(slack_url_file)
  echo -n $slack_url > $slack_url_file_path;
fi
echo ""
# finished slack_api_url_file

# TODO
