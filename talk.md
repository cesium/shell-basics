---
title: UNIX Shell, o melhor IDE
author: 
    - name: Eduardo Barbosa 
      github: github
      twitter: coiso
    - name: Nelson Estevão
      github: asdfj
      twitter: afja
date: 15 de outubro, 2018
keywords: [bash, CeSIUM]
---

# Navigation Commands

## Print Working Directory

```bash
$ pwd
/home/username
```

<aside class="notes">
Here are some speaker notes.

This can *contain markdown*.
</aside>

## List

|          |      |               |
|----------|------|---------------|
| **`ls`** | `-a` | (all files)   |
|          | `-l` | (long format) |
|          | `-t` | (by time)     |

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
