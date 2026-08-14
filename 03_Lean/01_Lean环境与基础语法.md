# Lean 环境与基础语法

## 1. 安装与检查

推荐使用 `elan` 管理 Lean 版本，在终端确认：

```bash
elan --version
lean --version
lake --version
```

VS Code 安装官方 Lean 4 扩展。项目中固定 `lakefile.toml` 和 `lean-toolchain`，不要在不同版本之间混用缓存。

## 2. 创建最小项目

```bash
mkdir lean-self-study
cd lean-self-study
lake init LeanSelfStudy
lake build
```

在 `LeanSelfStudy/Basic.lean` 中从以下例子开始：

```lean
import Mathlib

example (a b : Nat) : a + b = b + a := by
  omega

example (p q : Prop) (hp : p) (hq : q) : p ∧ q := by
  exact And.intro hp hq

example (xs : List Nat) : xs.reverse.reverse = xs := by
  simpa using List.reverse_reverse xs
```

运行：

```bash
lake env lean LeanSelfStudy/Basic.lean
lake build
```

## 3. 必会语法

- `def`：定义函数或常量；
- `example` / `theorem`：声明需要证明的命题；
- `#check`：查看表达式类型；
- `#eval`：计算可执行表达式；
- `:= by`：进入 tactic proof；
- `fun x => ...`：匿名函数；
- `match ... with`：模式匹配；
- `structure` / `inductive`：定义带字段的结构或归纳类型。

## 4. 十个入门练习

1. 证明自然数加法单位元；
2. 证明 `p ∧ q -> q ∧ p`；
3. 定义列表长度并证明空列表长度为零；
4. 对列表做归纳，证明 `xs ++ [] = xs`；
5. 定义一个二叉树并写出节点数函数；
6. 证明 `n + 0 = n` 和 `0 + n = n` 的证明风格差异；
7. 使用 `rw` 和 `simp` 各证明一次同一命题；
8. 用 `#check` 找到一个 `Nat` 的序关系引理；
9. 用 `exact?` 或 `apply?` 解决一个简单目标；
10. 把一个随机算法的输入不变量写成 `Prop`，暂时只证明初始化满足它。

## 5. 记录失败

每次 Lean 报错至少记录：完整错误、当前目标、尝试的 tactic、真正缺失的是类型/假设/引理/导入中的哪一种。不要只记录“改到能编译”。
