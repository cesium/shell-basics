---
title: UNIX Shell, the best IDE
author: 
    - name: herulume
      github: herulume
      twitter: herulume
    - name: Nelson Estevão
      github: nelsonmestevao
      twitter: nelsonmestevao
date: October 15th, 2018
keywords: [bash, CeSIUM]
---

# What is an IDE? 

## Integrated Development Environment

- Source code editor
- Code completiton
- Build automation tools
- Version control system(s) 
- Compiler / compiler integration
- Interpreter 
- The two above
- A dragon
- Mostly bad code
- Not needed unless coding Java

## Goal

- To get you used to unix based systems

<aside class="notes">
Gathers all tools in the same place
GUI apps don't communicate well with each other (no commom interface)

Unix tools share a commom interface (stream of text and files)

Vim vs Emacs (never needing to leave)

IDEs are good, unix just happens to be the best
</aside>

## IT'S HARD!

- Used to GUIs
- Like gaming
- Can't read error messages


# Navigation Commands

## Print Working Directory

```bash
$ pwd
/home/username
```
## List

|          |      |              |
|----------|------|--------------|
| **`ls`** | `-a` | all files    |
|          | `-l` | long format  |
|          | `-t` | by time      |
|          | `-X` | by extension |
|          | `-S` | by size      |


<aside class="notes">
Talk about man
</aside>

## Change Directory

|               |      |             |
|---------------|------|-------------|
| **`cd PATH`** | `.`  | current DIR |
|               | `..` | parent DIR  |
|               | `~`  | home DIR    |


<aside class="notes">
relative paths vs absolute paths
</aside>

## Relative path vs absolute path

```bash
cd /home/username/Downloads
```

```bash
$ pwd
/home/username/
$ ls
Desktop/ Downloads/ (...)
$ cd Downloads
```

# Create your own

## Make Directory

|             |      |                |
|-------------|------|----------------|
| **`mkdir`** | `-p` | create parents |
|             | `-v` | verbose        |

```bash
$ mkdir [OPT] DIR
```

## Create Empty File

```bash
$ touch FILE
```


# I/O Redirection and pipes

## What 

Redirect output and/or  input.

## Output redirection


|          |                     |                                                          |
|----------|---------------------|----------------------------------------------------------|
| **`>`**  | `command1 > file1`  | command1 is run and its output will overwrite file1      |
| **`>>`** | `command1 >> file2` | command1 is run and its output will be appended to file2 |


```bash
$ cat tmp.txt
ficheiro
tmp
$ echo "ola" > tmp.txt
$ cat tmp.txt
ola
$ echo "adeus" >> tmp.txt
$ cat tmp.txt
ola
adeus
```

## Input redirection

|          |                    |                                         |
|----------|--------------------|-----------------------------------------|
| **`<`**  | `command1 < file1` | command1 is run with file1 as its input |

```bash
$ cat tmp.txt
ficheiro
tmp
$ grep "tmp" < tmp.txt
tmp
```

## Pipe operator 

|          |                       |                                                 |
|----------|-----------------------|-------------------------------------------------|
| **`|`**  | `command1 | command2` | command2 is run with command1's output as input |

```bash
$ ls -al | grep *.hs
-rw-rw-r--  1 herulume herulume  229 Oct  4 14:11 quicksort.hs
```
```bash
ls -al > temp_file && grep *.hs < temp_file
```

# Package Manager

## Advanced Package Tool

## Pacman

## DNF

# GHC / GHCI

# GCC / GDB

## What is gcc

*De facto* C/C++ debugger.

## Instalation

- Ubuntu/Debian based
```
sudo apt install gdb
```

- Arch based
```
sudo pacman -Syu
sudo pacman -S gdb
```

- Other distros
```
Google it
```

## Compile

```
gcc -Wall -g -ansi code.c -o program
```

## Load

```bash
gdb program
```
or
```bash
gdb
(gdb) file program
```

## Run
```bash
(gdb) run
```

## Breakpoints

```bash
(gdb) break 20
```
or
```bash
(gdb) b random.c:20
```
or
```c
int test(char a, void* c){
    // code
  }
```
```bash
(gdb) b test
```

## Commands

| Command  | Short name  |
| -------- | ----------- |
|`break`   | `b`         |
|`print`   | `p`         |
|`run`     | `r`         |
|`next`    | `n`         |
|`step`    | `s`         |
|`continue`| `c`         |

# Tmux
