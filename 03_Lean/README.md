# Lean 4 与 mathlib 学习路线

## 学习目标

Lean 部分的第一目标是“读懂并写出小而可靠的证明”，不是马上训练 theorem prover。完成后应能：

- 建立并运行一个 `lake` 项目；
- 区分命题、类型、函数、结构和归纳类型；
- 阅读 proof state，使用 `intro`、`exact`、`apply`、`rw`、`simp`、`constructor`、`induction`；
- 用 `#check`、`#print`、`exact?`、`apply?`、`simp?` 搜索 mathlib；
- 将一个自然语言/算法命题拆成定义、假设、结论和可验证不变量。

## 推荐顺序

1. 安装 `elan`、Lean 4 和 VS Code Lean 4 扩展；
2. 完成 `01_Lean环境与基础语法.md` 的 10 个小 theorem；
3. 阅读 `02_依赖类型与证明结构.md`，理解函数、归纳和结构；
4. 阅读 `03_mathlib与证明搜索.md`，建立检索和调试习惯；
5. 用 `04_Lean在AI4Math_AI4TCS中的应用.md` 选择一个形式化小项目。

## 证据边界

Lean kernel 接受证明，说明当前形式化语句在当前导入环境中成立；它不自动保证：

- 中文题目被正确翻译；
- 定义没有遗漏关键假设；
- 结论具有研究意义或原创性；
- 算法在未形式化的性能目标上更好。

## 完成标准

至少有一个独立 `lake` 项目和 10 个可编译 theorem；其中至少一个包含归纳、一个包含结构/函数定义、一个使用 mathlib 引理检索。
