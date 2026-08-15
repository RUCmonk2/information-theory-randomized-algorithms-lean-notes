# 随机算法自学讲义

## 成品

- [随机算法自学讲义.pdf](随机算法自学讲义.pdf)
- [随机算法自学讲义.tex](随机算法自学讲义.tex)

## 章节源码

1. `sections/01_概率工具与集中不等式.tex`
2. `sections/02_随机化范式与经典案例.tex`
3. `sections/03_抽样_哈希与随机置换.tex`
4. `sections/04_数据流Sketch.tex`
5. `sections/05_随机游走_概率方法与舍入.tex`
6. `sections/06_AI4TCS验证与实验.tex`
7. `sections/07_习题与答案.tex`

## 重新编译

在仓库根目录运行：

```bash
./scripts/build_pdf.sh '02_随机算法/讲义/随机算法自学讲义.tex'
```

脚本使用临时目录编译，只把最终 PDF 复制回本目录，并在退出时删除 `.aux`、`.log`、`.toc`、`.out` 等中间产物。
