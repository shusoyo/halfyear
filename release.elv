#!/usr/bin/env elvish

# 删除旧的 Release
gh release delete latest --yes

# 删除本地和远程的 `latest` 标签
git tag -d latest
git push origin --delete latest

# 创建新的 `latest` 标签
git tag -a latest -m "latest"
git push origin latest

# 创建新的 Release 并上传文件
gh release create latest ^
  --title "pdf" ^
  --notes "latest" ^
  --prerelease ^
  calculus/main.pdf

