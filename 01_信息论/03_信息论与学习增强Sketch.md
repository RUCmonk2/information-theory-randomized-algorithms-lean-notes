# 信息论与学习增强 Sketch

这份笔记是连接当前图流/Sketch 背景和 AI4TCS 的桥接入口。它先作为问题框架，不把尚未查证的直觉写成定理。

## 1. 统一问题模板

```text
经典 sketch A
  + 预测器 P 或 side information
  -> 学习增强算法 A(P)
  -> 预测准确时更低空间/更低误差/更快查询
  -> 预测错误时仍保留一致性或鲁棒性保证
```

必须分别定义：

- prediction interface：预测的是频率、heavy hitter、采样概率还是结构参数；
- prediction error：`l_1`、`l_2`、相对误差、KL 或分位数误差；
- consistency：预测准确时相对于经典 baseline 的收益；
- robustness：预测任意错误时不会超过什么退化上界；
- resource：内存、更新时间、查询时间和通信量。

## 2. 信息论问题

从以下问题开始，而不是直接训练模型：

1. 预测器提供的 side information 减少了哪个随机变量的不确定性？
2. 这个信息是否能转化为空间减少，还是只能转化为常数收益？
3. 预测错误是否可以用 `D_KL`、总变差或某个范数界定？
4. verifier 需要观察哪些摘要才能区分“预测正确”和“预测投机”？
5. 是否存在通信复杂度下界，阻止同时实现强收益和强鲁棒性？

## 3. 25 分钟最小任务

- 先读本目录 `01_概率与信息量.md` 中的 KL 和互信息部分；
- 选择一个 Count-Min Sketch 输入分布，写出真实频率、预测频率和误差向量；
- 画出 prediction error 与估计误差的关系；
- 明确指出这只是 toy experiment，尚未构成 consistency/robustness 定理。

## 4. 研究记录模板

```text
对象：
经典 baseline：
预测器输出：
误差定义：
verifier：
准确预测时的假设：
任意错误时的保证：
空间/时间成本：
反例或失败分布：
```

## 推荐先查的本地材料

- `图流Sketch概念整理/Small_Summaries_for_Big_Data阅读总结.md`
- `AI4Math与AI4TCS前沿梳理/04_结合当前背景的选题建议.md`
- `mhclite-repro/notes/07_mHC_vs_mHClite双随机误差对比.md`
