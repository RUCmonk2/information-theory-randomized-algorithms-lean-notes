# 随机算法与数据流 Sketch

> 完整讲解见 [随机算法自学讲义](讲义/随机算法自学讲义.pdf)第 3--4 章，其中包含 reservoir sampling、通用哈希、Count-Min、Count Sketch、AMS/F2 的算法和误差证明。

## 1. 先建立统一接口

```text
初始化(seed, 参数)
更新(key, value)
查询(key 或全局统计量)
合并(summary_1, summary_2)
```

每个实现都要记录 seed、哈希函数、宽度/深度、流长度、查询集合和评估指标。

## 2. 推荐顺序

### Reservoir sampling

目标：理解单遍流、常数空间、无偏采样和随机索引。

### Count-Min Sketch

目标：理解非负更新下的 one-sided overestimate、哈希碰撞和 `width/depth` 对误差/失败概率的影响。

### Count Sketch

目标：理解随机符号、median-of-means 和对 signed frequency 的处理。

### AMS/F2 与 mergeability

目标：理解把全局二阶矩转成随机变量，再用重复和中位数获得高概率保证。

## 3. 必做对照实验

固定同一批流数据，至少比较：

- exact counter；
- Count-Min 不同宽度/深度；
- Count Sketch 不同重复次数；
- 随机 seed 对误差分位数的影响；
- 两段摘要先分别更新再 merge，与整段流直接更新的差异。

输出不要只放平均误差，还要放最大误差、95% 分位数、失败次数和内存。

## 4. 与现有材料连接

先读：

- `图流Sketch概念整理/Small_Summaries_for_Big_Data阅读总结.md`；
- `papers/论文索引.md` 中的数据流/Sketch 条目；
- `AI4Math与AI4TCS前沿梳理/04_结合当前背景的选题建议.md` 的 learning-augmented streaming/sketch 部分。

## 完成标准

能从代码和公式双向解释一个 Sketch：代码中的每个数组/哈希对应哪个随机变量，误差曲线对应哪条保证，merge 操作需要什么假设。
