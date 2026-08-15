# 信息论自学讲义

## 成品

- [信息论自学讲义.pdf](信息论自学讲义.pdf)
- [信息论自学讲义.tex](信息论自学讲义.tex)

## 章节源码

1. `sections/01_概率与熵.tex`
2. `sections/02_联合熵_互信息与KL.tex`
3. `sections/03_无失真信源编码.tex`
4. `sections/04_离散信道与容量.tex`
5. `sections/05_随机编码与可靠通信.tex`
6. `sections/06_信息论与Sketch_AI4TCS.tex`
7. `sections/07_习题与答案.tex`

## 重新编译

在仓库根目录运行：

```bash
./scripts/build_pdf.sh '01_信息论/讲义/信息论自学讲义.tex'
```

脚本使用临时目录编译，只把最终 PDF 复制回本目录，并在退出时删除 `.aux`、`.log`、`.toc`、`.out` 等中间产物。
