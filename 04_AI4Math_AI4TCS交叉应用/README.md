# AI4Math / AI4TCS 交叉应用路线

这部分把基础知识转成研究能力。三个项目都刻意限制在小规模、强 verifier、单机可复现的范围内。

## 完整讲义入口

- [AI4Math / AI4TCS 交叉应用讲义 PDF](讲义/AI4Math_AI4TCS交叉应用讲义.pdf)
- [LaTeX 源码与章节索引](讲义/README.md)

原有项目 Markdown 保留为快速启动清单。领域边界、generator--verifier 闭环、三个项目的完整方法、适应性过拟合、反例协议、统计验收和两周执行手册以完整讲义为主。

## 选择建议

| 项目 | 主要基础 | 最终 verifier | 推荐度 |
| --- | --- | --- | --- |
| A. 信息论与学习增强 Sketch | 熵、KL、Sketch、尾界 | exact baseline + 误差/空间实验 + 失败分布 | 最高，最接近已有背景 |
| B. 随机算法候选的自动验证器 | 随机算法、测试、搜索 | 穷举小规模 + hidden random tests | 高，最接近 AI4TCS |
| C. 用 Lean 形式化一个随机算法定理 | Lean、概率、算法不变量 | Lean kernel | 高，最接近 AI4Math 基础设施 |

不要同时做三个项目。先选一个两周最小交付，另两个只保留阅读问题。

## 共同研究模板

```text
object
representation
generator
verifier
guarantee
generalization
human-auditable artifact
```

每个项目都要明确：成功条件、失败条件、停止条件和不声称的结论。

## 两周节奏

### 第 1 周

- 读 1-2 篇核心材料；
- 定义对象和 baseline；
- 写 verifier；
- 构造最小反例；
- 只做一个参数轴的实验。

### 第 2 周

- 加入 hidden 或 out-of-distribution 测试；
- 做一次失败分析；
- 对照理论保证和经验结果；
- 整理可复现命令、配置、结果表和下一步判断。

## 交付格式

- `README.md`：问题、环境、运行命令和结论边界；
- `notes/问题与方法.md`：定义、相关工作、假设和 verifier；
- `scripts/`：最小运行脚本；
- `results/summary.csv`：固定字段的结果；
- `notes/失败分析.md`：至少一个反例或未解决问题。
