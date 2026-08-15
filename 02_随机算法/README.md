# 随机算法学习路线

## 完整讲义入口

- [随机算法自学讲义 PDF](讲义/随机算法自学讲义.pdf)
- [LaTeX 源码与章节索引](讲义/README.md)

原有三个 Markdown 文件现在承担预习、实验入口和检索功能。完整算法、概率证明、例题、习题与答案以讲义为主。

## 学习目标

随机算法的核心能力是把随机性写进算法协议，并精确回答：随机源是什么、正确性事件是什么、失败概率多大、成本是多少、失败时如何恢复。

## 学习顺序

1. 讲义第 1 章：指示变量、union bound、Markov/Chebyshev、Chernoff/Hoeffding 和概率放大；
2. 讲义第 2 章：Monte Carlo/Las Vegas、随机快速排序、Freivalds 和 Karger；
3. 讲义第 3 章：Bernoulli/reservoir sampling、Fisher--Yates、通用哈希和随机位成本；
4. 讲义第 4 章：Count-Min、Count Sketch、AMS/F2 和 mergeability；
5. 讲义第 5 章：概率方法、条件期望、随机舍入、Markov 链和随机游走；
6. 讲义第 6 章：AI4TCS verifier、随机测试、property testing 和 Lean/SMT 分工；
7. 讲义第 7 章：综合习题与参考答案。

## 算法分析表

学习每个算法时固定填写：

| 项目 | 要回答的问题 |
| --- | --- |
| 输入与随机源 | 哪些比特是随机的，是否需要独立性 |
| 输出 | 估计值、候选解、接受/拒绝或证书 |
| 正确性 | 哪个事件代表成功 |
| 误差 | additive、multiplicative、tail probability |
| 成本 | time、space、passes、communication |
| 失败处理 | 重复运行、验证、回退到 baseline 还是允许失败 |
| 可合并性 | 两个摘要能否无损或有界误差合并 |

## 完成标准

至少能独立证明一个简单抽样估计器的无偏性和方差界，能解释 Count-Min 的 one-sided error，并能用小规模穷举测试一个随机算法的边界案例。
