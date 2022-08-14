# Casual SICP
- Practice with SICP. Let's create a compiler and interpreter.
- Why casual? -> Since I don't want to guarantee solving every practice.

# Textbook
- [https://github.com/hiroshi-manabe/sicp-pdf/blob/japanese/jsicp.pdf](https://github.com/hiroshi-manabe/sicp-pdf/blob/japanese/jsicp.pdf)

# Installation
- [Reference](https://mura-s.hatenadiary.jp/entry/2019/08/22/213004)

```
brew install gauche
```

```
git clone git@github.com:shirok/Gauche-compat-sicp.git
cd Gauche-compat-sicp
./configure
make install
```

```
brew install rlwrap
```

# Run
- Run code: `gosh filename.scm`
  - Note: Add `(use compat.sicp)` at the first line of each file
- REPL: `rlwrap gosh`
