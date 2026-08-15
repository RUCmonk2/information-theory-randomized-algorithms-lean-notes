# Lean 4 与 mathlib 学习路线

## 完整讲义入口

- [Lean 4 与 mathlib 自学讲义 PDF](讲义/Lean自学讲义.pdf)
- [LaTeX 源码与章节索引](讲义/README.md)

原有四个 Markdown 文件保留为环境命令、练习清单和快速检索入口。语言模型、证明结构、代码例子、算法不变量、有限随机性、AI4Math/AI4TCS 证明工程和综合习题以完整讲义为主。

## 学习目标

Lean 部分的第一目标是“读懂并写出小而可靠的证明”，不是马上训练 theorem prover。完成后应能：

- 建立并运行一个 `lake` 项目；
- 区分命题、类型、函数、结构和归纳类型；
- 阅读 proof state，使用 `intro`、`exact`、`apply`、`rw`、`simp`、`constructor`、`induction`；
- 用 `#check`、`#print`、`exact?`、`apply?`、`simp?` 搜索 mathlib；
- 将一个自然语言/算法命题拆成定义、假设、结论和可验证不变量。

## 推荐顺序

1. 讲义第 1--2 章：环境、Lake、kernel 模型、表达式、定义与计算；
2. 讲义第 3--5 章：命题即类型、归纳、递归、依赖类型、结构与等式；
3. 讲义第 6 章：mathlib 检索、自动化、最小失败例和证明调试；
4. 讲义第 7 章：算法状态不变量、有限均匀概率和随机算法证明分层；
5. 讲义第 8 章：AI4Math/AI4TCS 中的 autoformalization、proof search 与 verifier；
6. 讲义第 9 章：综合习题与参考答案；
7. 同步完成原 Markdown 中的环境命令和小练习，并在固定 toolchain 项目中编译。

## 证据边界

Lean kernel 接受证明，说明当前形式化语句在当前导入环境中成立；它不自动保证：

- 中文题目被正确翻译；
- 定义没有遗漏关键假设；
- 结论具有研究意义或原创性；
- 算法在未形式化的性能目标上更好。

## 完成标准

至少有一个独立 `lake` 项目和 10 个可编译 theorem；其中至少一个包含归纳、一个包含结构/函数定义、一个使用 mathlib 引理检索。
