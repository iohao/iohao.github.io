# Repository Guidelines

## 项目结构与模块组织
本仓库用于托管 `iohao.github.io` 的静态发布内容。

- `apidocs/`：ionet 在线 JavaDoc（`/apidocs/index.html`）。
- `javadoc/`：ioGame 在线 JavaDoc（`/javadoc/index.html`）。
- `ionet/`：ionet 文档页面（如 `ionet/en/...`）。
- `game/`：ioGame 文档页面。
- 根目录验证文件（如 `google*.html`、`baidu_verify*.html`）用于站点归属验证，禁止删除。

多数文件属于生成产物，优先通过上游文档构建结果同步，避免在本仓库做大规模手工改写。

## 构建、测试与本地预览命令
本仓库未定义独立构建系统，主要以静态文件提交为主。

- `python3 -m http.server 8000`：在仓库根目录启动本地预览服务。
- `open http://localhost:8000/ionet/`：浏览器快速检查页面（也可访问 `/game/`、`/apidocs/`、`/javadoc/`）。
- `git status`、`git diff --stat`：提交前确认改动范围是否符合预期。

## 代码风格与命名约定
- 仅做最小化、定点修改，避免格式化无关的生成文件。
- 新增文档路径尽量使用小写和连字符，例如 `ionet/en/docs/new-topic/index.html`。
- 保持现有目录约定：页面目录下使用 `index.html`。
- 不要移除 `.nojekyll` 与搜索引擎验证文件。

## 测试指南
仓库没有自动化测试，采用手工验收：

- 本地确认 `/`、`/ionet/`、`/game/`、`/apidocs/index.html`、`/javadoc/index.html` 可访问。
- 检查改动区域中的链接与静态资源路径（CSS/JS/图片）是否正确。
- 大批量文档更新时，至少做一次桌面端和移动端快速浏览。

## 提交与 PR 规范
部署同步提交建议延续现有历史风格：

- `deploy: iohao/ionet-doc@<upstream-sha>`

非部署类维护可使用简洁前缀，如：

- `docs: 修复 ionet 导航链接`

PR 建议包含：

- 变更摘要与影响的顶层目录。
- 若为生成内容更新，注明上游仓库与提交号（或生成来源）。
- 仅在页面展示变化明显时附截图。
