---
title: UNIX Shell, the best IDE
author: 
    - name: Eduardo Barbosa 
      github: herulume
      twitter: herulume
    - name: Nelson Estevão
      github: nelsonmestevao
      twitter: nelsonmestevao
date: 15 de outubro, 2018
keywords: [bash, CeSIUM]
---

# Intro

## IDE 

Integrated Development Environment

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

### IT'S HARD!

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

|          |      |                |
|----------|------|----------------|
| **`ls`** | `-a` | (all files)    |
|          | `-l` | (long format)  |
|          | `-t` | (by time)      |
|          | `-X` | (by extension) |
|          | `-S` | (by size)      |

## Change Directory

|               |      |               |
|---------------|------|---------------|
| **`cd PATH`** | `.`  | (current DIR) |
|               | `..` | (parent DIR)  |
|               | `~`  | (home DIR)    |


# Create your own

## Make Directory

|             |      |                  |
|-------------|------|------------------|
| **`mkdir`** | `-p` | (create parents) |
|             | `-v` | (verbose)        |

```bash
$ mkdir [OPT] DIR
```

## Create Empty File

```bash
$ touch FILE
```

# Advanced Package Tool
