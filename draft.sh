#!/bin/bash

# 引数があればそれをタイトルに、なければ日付をタイトルにする
TITLE="${1:-$(TZ=Asia/Tokyo date '+%Y-%m-%d')}"
OUTPUT_FILE="content/posts/$TITLE.md"

# 現在の日時を取得
DATE=$(TZ=Asia/Tokyo date --iso-8601=seconds)

# 出力ディレクトリを作成（存在しない場合のみ）
mkdir -p "$(dirname "$OUTPUT_FILE")"

# ファイルに書き込む
cat <<EOF > "$OUTPUT_FILE"
+++
date = '$DATE'
draft = true
title = '$TITLE'
+++
EOF

echo "ファイルを作成しました: $OUTPUT_FILE"