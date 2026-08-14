# 项目 C：用 Lean 形式化一条随机算法定理

## 目标

先选择有限、可控的概率命题，练习从自然语言算法说明到形式化定义、假设、不变量和 kernel-checked theorem 的完整链路。

## 题目梯度

### 入门

- 有限集合上均匀抽样概率之和为 1；
- indicator variable 的期望等于事件概率；
- reservoir sampling 简化状态的大小不超过 `k`。

### 进阶

- 有限样本空间上的 union bound；
- 一个简单抽样估计器的无偏性；
- 随机哈希无碰撞事件的有限版本。

### 暂不作为第一题

- 完整 Chernoff bound；
- 连续分布、测度论概率；
- 完整 Count-Min Sketch 端到端定理。

## 工作步骤

1. 先写自然语言命题，并列出所有假设；
2. 用 Python 做有限样本枚举，检查命题是否真的成立；
3. 在 Lean 中定义有限对象和概率计数；
4. 先证明结构性 lemma，再证明主 theorem；
5. 记录哪些内容尚未形式化，以及中文语义可能在哪里丢失。

## 交付物

- 一个能 `lake build` 的 Lean 项目；
- `Problem.md`：自然语言、数学形式和 Lean statement 的逐项对照；
- `ProofStatus.md`：已证明、已测试、未完成和依赖的 mathlib 引理；
- 至少一个反例或失败形式化记录。
