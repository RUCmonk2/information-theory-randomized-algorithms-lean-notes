# Lean 在 AI4Math / AI4TCS 中的应用

> 完整讲解见 [Lean 4 与 mathlib 自学讲义](讲义/Lean自学讲义.pdf)第 7--8 章；本文件保留为应用入口和最小实践清单。

## 1. Lean 的位置

Lean 是 proof assistant 和可编程形式系统。它适合作为 verifier 或 proof checker，不等于自动发现数学真理的模型。AI 系统可以负责生成候选定义、证明步骤、程序或修复建议，Lean kernel 负责检查最终证明项。

## 2. 典型闭环

```text
自然语言问题
  -> 形式化 statement
  -> 模型/搜索器生成 proof 或 program
  -> Lean 编译与 kernel 检查
  -> 失败状态/错误信息反馈给搜索
  -> 人类核对语义、假设、创新性和复杂度
```

## 3. AI4Math 入口

- theorem proving：在 mathlib、miniF2F 等环境中搜索证明；
- autoformalization：把中文/英文数学陈述转成 Lean statement；
- proof repair：根据 error message 修复局部证明；
- conjecture/object discovery：模型提出候选，再用 Lean、算术求解器或穷举验证；
- proof data engineering：把 theorem、定义、依赖和失败轨迹组织成可检索数据。

## 4. AI4TCS 入口

- 形式化算法不变量、终止性和正确性；
- 验证小型程序综合或算法发现候选；
- 把随机算法的有限版本、抽样过程或 combinatorial construction 变成可审计对象；
- 用 Lean、SMT、穷举和随机测试分层验证候选，而不是只看 evaluator 分数；
- 对算法复杂度、适用假设和边界情况进行显式记录。

## 5. 必须区分的证据

| 证据 | 能说明什么 | 不能单独说明什么 |
| --- | --- | --- |
| Lean kernel 接受 | 当前形式化命题可证明 | 自然语言翻译正确、结论有创新性 |
| 小规模穷举通过 | 在枚举范围内没有发现反例 | 任意规模正确 |
| 随机测试通过 | 在抽样测试上表现良好 | worst-case 保证 |
| evaluator 分数提高 | 目标基准上的经验收益 | 渐近复杂度改进或理论最优 |

## 6. 推荐工具入口

- Mathematics in Lean：<https://leanprover-community.github.io/mathematics_in_lean/>
- Functional Programming in Lean：<https://lean-lang.org/functional_programming_in_lean/>
- Theorem Proving in Lean 4：<https://lean-lang.org/theorem_proving_in_lean4/>
- LeanDojo：<https://leandojo.org/>
- miniF2F：<https://github.com/openai/miniF2F>

## 7. 最小实践题

选择一个有限、边界清晰的题目：

1. 用 Python 写 baseline 和随机/穷举测试；
2. 用 Lean 定义对象和一个核心不变量；
3. 让 Lean 检查一个小规模定理；
4. 写出尚未形式化的部分和可能的语义漏洞。

不建议一开始直接复现大型 theorem-proving benchmark 或训练模型。
