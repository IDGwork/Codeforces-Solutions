# Codeforces-Solutions

![C++](https://img.shields.io/badge/Language-C++-blue)
![Platform](https://img.shields.io/badge/IDE-CLion%20%7C%20VS%20Code%20%7C%20Xcode-orange)
![GitHub Repo stars](https://img.shields.io/github/stars/IDGwork/Codeforces-Solutions?style=social)

A CMake-powered C++ project containing my **solutions for Codeforces contests and practice problems**.  
Each contest is placed in a division-specific folder (`Div2`, `Div3`, etc.), and practice problems are stored separately under `Practice`.  
Templates for **single-test** and **multi-testcase** problems are provided for fast setup.

---

## 📦 What it does

- Stores **contest-based solutions**:
    - Div2 contests
    - Div3 contests
    - (extendable to Div1, Div4, Educational, etc.)
- Stores **practice problems** separately under `Practice`
- Each problem solution:
    - Lives in its own folder, e.g. `contests/Div3/Contest_0000/A/A.cpp` or `contests/Practice/A/4A/Watermelon.cpp`
    - Uses a unified template (`template_single.cpp`, `template_tc.cpp`)
    - Supports **fast input-output macros** (`fastio`)
    - Builds automatically with CMake:
      - Each `.cpp` file becomes its own executable target

- `.gitignore` keeps repo clean (ignores build dirs, IDE metadata, binaries).

---

## 🗂 Project structure

```
Codeforces-Solutions/
├─ contests/
│  ├─ Div2/
│  ├─ Div3/
│  │   └─ Contest_0000/
│  │       └─ A/
│  │           ├─ A.cpp
│  │           └─ input.txt
│  └─ Practice/
│      └─ A/
│          └─ 4A/
│              ├─ Watermelon.cpp
│              └─ input.txt
├─ template/
│  ├─ template_single.cpp
│  └─ template_tc.cpp
├─ build.sh
├─ test.sh
├─ CMakeLists.txt
└─ .gitignore
```

---

## ✅ Requirements

- [GCC / G++ 15](https://gcc.gnu.org/) (installed via Homebrew on macOS)
- [CMake](https://cmake.org/) (CLion handles this automatically)
- CLion / VS Code / Xcode
- Git for version control

---

## ▶️ Run

From the project root:

```bash
./build.sh
```

To test a specific problem:

```bash
./test.sh Practice_A_4A_Watermelon contests/Practice/A/4A/input.txt
./test.sh Div3_Contest_0000_A_A contests/Div3/Contest_0000/A/input.txt
```

If you omit the input path, `test.sh` will try to guess it automatically.

---

## 📌 Notes

- Templates are optimized for **competitive programming speed**
- `fastio` macro ensures efficient I/O
- Each contest problem compiles into a separate executable
- Extendable for more divisions (Div1, Div4, Edu)

---

## 📄 License

For educational and competitive programming practice purposes.
