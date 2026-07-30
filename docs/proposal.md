# moonbit-chemreport 项目申报书

## 项目名称

moonbit-chemreport：MoonBit 化工计算报告生成器

## 项目目标

面向 MoonBit 化工计算生态，建设一个可复用的报告层。项目不重复实现反应器、精馏、物料衡算等计算库，而是为这些库提供统一的结果表达：计算输入、工程假设、公式、结果、警告和数据来源都进入同一 `ChemReport` 模型，并稳定导出为 Markdown、HTML、JSON，方便进入实验记录、Web 预览、命令行工具和自动化验收。

## 背景与生态价值

化工计算代码常见问题不是“算不出数字”，而是计算依据、单位、假设、公式、警告和数据来源散落在不同脚本或文档里。MoonBit 生态如果要发展工程应用，需要一个小而稳的报告基础设施，让后续 `reactor`、`distill`、`massbalance` 等包都能复用同一报告接口。赛前在 mooncakes.io 围绕 `chemreport`、`chemical report`、`massbalance`、`reactor`、`distill` 等关键词检查，未发现成熟且高度重合的 MoonBit 报告层项目。

## 实施范围

本阶段交付一个 MoonBit 库和示例 CLI。核心包含 `Quantity`、`ChemInput`、`Assumption`、`Formula`、`ChemResult`、`ReportWarning`、`DataSource`、`ChemReport` 等模型；提供 `to_markdown`、`to_html_fragment`、`to_html_document`、`to_json` 导出；提供 `validate` 与 `has_blocking_issue` 做报告完整性检查；内置 CSTR 物料衡算示例，展示如何记录输入、假设、公式、结果和来源。

## 技术路线

采用纯 MoonBit 实现，保持无外部依赖，降低接入成本。公共 API 以构造函数和类型方法为主，避免把化工计算逻辑写死在报告层。格式导出保持字段顺序和文本布局稳定，配套快照测试，便于 CI 发现格式漂移。仓库提交 `pkg.generated.mbti`，方便评审和维护者查看公共接口变化。

## 测试与质量保障

本地和 CI 执行 `moon fmt --check`、`moon check --deny-warn`、`moon info`、`moon test --deny-warn`。测试覆盖示例报告校验、Markdown 快照、JSON/HTML 关键字段、缺失输入/结果/来源时的问题提示。CI 运行于 Linux、macOS、Windows 三个平台，保证基础跨平台可用。

## 开发计划

第一阶段完成报告模型、三种导出格式、示例 CLI、快照测试、README、License、GitHub/GitLink 公开仓库和 CI。第二阶段补充更多化工报告模板，如能量衡算、精馏塔板效率、反应器转化率摘要。第三阶段预留适配层，接入未来 MoonBit 化工计算包，并沉淀 Mooncakes 发布说明和版本兼容策略。

## 开源说明

项目使用 Apache-2.0 License。源码为本项目原创实现，除 `moon new` 生成的初始脚手架和 Apache-2.0 标准许可证文本外，不包含第三方代码拷贝。示例数据仅用于演示报告结构，不构成工程设计建议。
