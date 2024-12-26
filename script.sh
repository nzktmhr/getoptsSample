#!/bin/bash

# デフォルト値の設定
name="DefaultUser"
age=0

# getoptsで引数を解析
while getopts "n:a:" opt; do
  case $opt in
    n) name=$OPTARG ;;  # -n オプションで名前を受け取る
    a) age=$OPTARG ;;   # -a オプションで年齢を受け取る
    *)
      echo "Usage: $0 -n <name> -a <age>"
      exit 1
      ;;
  esac
done

# 結果の出力
echo "Name: $name"
echo "Age: $age"
