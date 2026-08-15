# mathlib 与证明搜索

> 完整讲解见 [Lean 4 与 mathlib 自学讲义](讲义/Lean自学讲义.pdf)第 6 章；本文件保留为工具和调试流程速查。

## 1. 从类型开始检索

```lean
#check Nat.add_comm
#check List.reverse_reverse
#print Nat.add_comm
```

先确认目标中每个对象的完整类型，再搜索引理。很多“证明困难”其实是导入不对、隐式参数不匹配或命题写错。

## 2. 常用工具

| 工具 | 用途 |
| --- | --- |
| `exact?` | 在本地环境中寻找可直接填入目标的证明 |
| `apply?` | 寻找可以应用到当前目标的引理 |
| `rw?` | 建议可能的重写引理 |
| `simp?` | 建议可用的简化规则 |
| `aesop?` | 对结构化逻辑目标尝试自动搜索 |
| `#check` | 检查表达式和引理类型 |
| `#print` | 查看定义、定理或实例 |
| `set_option pp.all true` | 展开隐式参数，诊断类型不匹配 |

自动 tactic 产生的脚本要读懂后再保留；不要把 tactic 成功当成理解完成。

## 3. 调试流程

```text
复制最小失败例子
-> 删除无关 imports 和代码
-> 查看 proof state
-> 检查目标是否写对
-> #check 需要的引理
-> 先手写一小步
-> 再用 simp?/exact? 缩短
```

## 4. 资源与版本

- mathlib 文档：<https://leanprover-community.github.io/mathlib4_docs/>
- Lean 参考手册：<https://lean-lang.org/doc/reference/latest/>
- 项目必须固定 Lean toolchain；更新版本后重新 `lake update` 并记录变化。
- 论文复现时，把“形式定义、定理、测试数据、编译命令”分开存放。

## 5. 练习

从一个简单的概率或随机算法事实开始：先在 Python 中测试，再在 Lean 中只形式化有限、清晰的一部分。例如有限集合上的均匀计数、抽样概率的求和为一，或一个状态更新保持计数器非负。

## 完成标准

能独立把一个 20 行以内的失败 theorem 缩减成最小例子，并说明失败来自定义、导入、类型、缺少假设还是缺少引理。
