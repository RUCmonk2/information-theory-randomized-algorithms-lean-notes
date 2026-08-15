# Lean 4 与 mathlib 自学讲义

## 成品

- [Lean自学讲义.pdf](Lean自学讲义.pdf)
- [Lean自学讲义.tex](Lean自学讲义.tex)

## 章节源码

1. `sections/01_环境_项目与内核模型.tex`
2. `sections/02_表达式_定义与计算.tex`
3. `sections/03_命题即类型与基础证明.tex`
4. `sections/04_归纳类型_递归与归纳证明.tex`
5. `sections/05_依赖类型_结构与等式.tex`
6. `sections/06_mathlib检索_自动化与调试.tex`
7. `sections/07_算法不变量与有限随机性.tex`
8. `sections/08_AI4Math_AI4TCS证明工程.tex`
9. `sections/09_习题与答案.tex`

## 重新编译

在仓库根目录运行：

```bash
./scripts/build_pdf.sh '03_Lean/讲义/Lean自学讲义.tex'
```

脚本使用临时目录编译，只把最终 PDF 复制回本目录，并在退出时删除 `.aux`、`.log`、`.toc`、`.out` 等中间产物。

书中的代码应放进固定 Lean/mathlib 版本的 Lake 项目中再次编译。讲义解释概念与证明工程方法，不替代当前版本的 Lean Reference 和 mathlib API 文档。
