---
title: UNIX Shell, the best IDE
author: 
    - name: Eduardo Barbosa 
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

## IT'S HARD!

- Used to GUIs
- Like gaming 
- Can't read error messages 

<aside class="notes">
Gathers all tools in the same place
GUI apps don't communicate well with each other (no commom interface)

Unix tools share a commom interface (stream of text and files)

Vim vs Emacs (never needing to leave)

IDEs are good, unix just happens to be the best
</aside>

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

# Advanced Package Tool
