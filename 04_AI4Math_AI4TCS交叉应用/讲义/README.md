# AI4Math / AI4TCS 交叉应用讲义

## 成品

- [AI4Math_AI4TCS交叉应用讲义.pdf](AI4Math_AI4TCS交叉应用讲义.pdf)
- [AI4Math_AI4TCS交叉应用讲义.tex](AI4Math_AI4TCS交叉应用讲义.tex)

## 章节源码

1. `sections/01_领域边界_任务地图与证据等级.tex`
2. `sections/02_Generator_Verifier_Search闭环.tex`
3. `sections/03_项目A_学习增强Sketch.tex`
4. `sections/04_项目B_随机算法候选验证器.tex`
5. `sections/05_项目C_Lean自动形式化与证明.tex`
6. `sections/06_实验设计_反例与适应性过拟合.tex`
7. `sections/07_两周项目执行与可复现交付.tex`
8. `sections/08_习题与答案.tex`

## 重新编译

在仓库根目录运行：

```bash
./scripts/build_pdf.sh '04_AI4Math_AI4TCS交叉应用/讲义/AI4Math_AI4TCS交叉应用讲义.tex'
```

脚本在临时目录中构建，只保留最终 PDF。三个项目都应先做一个两周最小闭环，不应仅凭 evaluator 分数、随机测试或 Lean 编译通过扩大结论范围。
