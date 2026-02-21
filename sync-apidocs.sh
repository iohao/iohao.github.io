#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_APIDOCS="/Users/join/gitme/ionet/target/reports/apidocs"
TARGET_APIDOCS="${REPO_DIR}/apidocs"

echo "[1/3] 同步远程代码：git pull"
git -C "${REPO_DIR}" pull

echo "[2/3] 删除当前仓库 apidocs 目录"
rm -rf "${TARGET_APIDOCS}"

echo "[3/3] 复制新的 apidocs 到当前仓库"
if [[ ! -d "${SOURCE_APIDOCS}" ]]; then
  echo "错误：源目录不存在 -> ${SOURCE_APIDOCS}" >&2
  exit 1
fi

cp -R "${SOURCE_APIDOCS}" "${TARGET_APIDOCS}"

echo "完成：apidocs 已同步。"
