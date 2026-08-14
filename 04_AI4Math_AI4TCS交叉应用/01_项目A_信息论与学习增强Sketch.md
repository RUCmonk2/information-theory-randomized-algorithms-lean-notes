# 项目 A：信息论与学习增强 Sketch

## 目标

在 Count-Min 或 Count Sketch 上加入一个可控的预测器/side information，研究 prediction error、估计误差、空间和鲁棒性之间的关系。

## 最小版本

- 数据：合成频率流，包含均匀、Zipf、突发和分布漂移四类；
- baseline：exact counter + Count-Min；
- predictor：先用可解释的频率先验或上一窗口预测，不训练神经网络；
- verifier：对所有 key 计算绝对/相对误差，并保留 worst-case key；
- 变量：prediction error、sketch width/depth、seed、流长度；
- 输出：误差曲线、空间曲线、不同 seed 的分位数和失败案例。

## 研究问题

1. 预测准确时，收益体现为空间、误差还是查询时间？
2. 预测错误时，是否仍然保留经典 baseline 的保证？
3. prediction interface 是否可以用互信息或 KL 形式描述？
4. mergeability 在加入预测器后是否保留？

## 两周停止条件

- 若无法定义清晰的 prediction error 或 verifier，停止增加模型复杂度；
- 若收益只出现在单一分布，加入分布漂移和 adversarial toy 测试；
- 若没有理论保证，明确把结果标成经验研究，不声称 learning-augmented algorithm 的一般性定理。

## 推荐产出

一份 4-6 页 Markdown 研究笔记、一个不依赖 GPU 的 Python baseline、一个 `summary.csv`，以及至少一个“预测反而有害”的反例。
