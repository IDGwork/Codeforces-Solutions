# Codeforces-Solutions

![C++](https://img.shields.io/badge/Language-C++-blue)
![Platform](https://img.shields.io/badge/IDE-CLion%20%7C%20VS%20Code%20%7C%20Xcode-orange)
![GitHub Repo stars](https://img.shields.io/github/stars/IDGwork/Codeforces-Solutions?style=social)

A CMake-powered C++ project containing my **solutions for Codeforces contests**.  
Each contest is placed in a division-specific folder (`Div2`, `Div3`, etc.), and problems are stored in subfolders (`Contest_xxxx/Problem.cpp`).  
Templates for **single-test** and **multi-testcase** problems are provided for fast setup.

---

## 📦 What it does

- Stores **contest-based solutions**:
    - Div2 contests
    - Div3 contests
    - (extendable to Div1, Div4, Educational, etc.)
- Each problem solution:
    - Lives in its own contest folder: `contests/Div3/Contest_0000/A.cpp`
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
│  │       ├─ A.cpp
│  │       └─ input.txt
├─ template/
│  ├─ template_single.cpp
│  └─ template_tc.cpp
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
mkdir -p build
cd build
cmake ..
make
```

To run a problem solution:

```bash
./contests_Div3_Contest_0000_A < ../contests/Div3/Contest_0000/input.txt
```

Or configure CLion:
- Select the problem target (`contests_Div3_Contest_0000_A`)
- Redirect input from `input.txt`

---

## 📌 Notes

- Templates are optimized for **competitive programming speed**
- `fastio` macro ensures efficient I/O
- Each contest problem compiles into a separate executable
- Extendable for more divisions (Div1, Div4, Edu)

---

## 📄 License

For educational and competitive programming practice purposes.
