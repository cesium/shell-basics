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
- Code completion
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
Talk about `man` command.
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

<aside class="notes">
If the FILE already exists, `touch` will update the time stamp.
</aside>

## Display/View files

```bash
$ cat [OPT] [FILES]
```

|      |                         |
|------|-------------------------|
| `-l` | number the output lines |


```bash
$ less [OPT] [FILES]
```

|      |                         |
|------|-------------------------|
| `-N` | number the output lines |

<aside class="notes">
If you give multiple files to the `cat` command, you can then concatenate them.

You can mention `head` and `tail`.
</aside>

## LESS, navigation

|   Key   |     COMMAND     |    Key    |             COMMAND            |
|:-------:|:---------------:|:---------:|:------------------------------:|
| `Space` |   *NEXT PAGE*   | `/<text>` |  *FOWARD SEARCH FOR <_text_>*  |
|   `b`   | *PREVIOUS PAGE* | `?<text>` | *BACKWARD SEARCH FOR <_text_>* |
|   `j`   |   *NEXT LINE*   |    `n`    |       *NEXT SEARCH MATCH*      |
|   `k`   | *PREVIOUS LINE* |    `N`    |     *PREVIOUS SEARCH MATCH*    |
|   `g`   |   *FIRST LINE*  |    `=`    |       *FILE INFORMATION*       |
|   `G`   |   *LAST LINE*   |    `h`    |             *HELP*             |
|  `<n>G` |   *LINE <_n_>*  |    `q`    |             *QUIT*             |

<aside class="notes">
Mention `wc` and use it with `man`.
</aside>

## Copy files and directories

```bash
$ cp [OPT] FROM TO
```

|      |                              |
|------|------------------------------|
| `-r` | copy directories recursively |

## Move (or rename) files and directories

```bash
$ mv FROM TO
```

## Remove a file

|          |      |                                |
|----------|------|--------------------------------|
| **`rm`** | `-r` | recursively remove directories |
|          | `-f` | force                       |

```bash
$ rm [OPT] FILE
```

## Remove empty directories

```bash
$ rmdir [OPT] DIR
```

|      |                     |
|------|---------------------|
| `-p` | also remove parents |

# Find stuff

## Search for files in a directory hierarchy

```bash
$ find [OPT] FILE
```

|      |                     |
|------|---------------------|
| `-name` | Find by name |
| `-size` | Find by size |
| `-iname` | Case insensitive mode |

## Print Lines Matching a Pattern


```bash
$ grep [OPT] FILE
```

|      |                     |
|------|---------------------|
| `-c` | Display the number of matched lines |
| `-i` | Ignore case sensitiviy. |
| `-l` | Display the filenames |
| `-n` | Display the line numbers |
| `-w` | Match whole word |

# Terminal Key-bindings

## Tips & Tricks

* `clear` or **`CTRL`** + **`L`**
* Browse history with **`↑`** and **`↓`**
* search reverse with **`CTRL`** + **`R`**

<aside class="notes">
You can mention the **`TAB`** completion,
</aside>

## **`CTRL`** **Key** Combination

|                    |                 |
|--------------------|-----------------|
| **`CTRL`**+**`C`** | Kill process    |
| **`CTRL`**+**`Z`** | Suspend process |
| **`CTRL`**+**`D`** | End of file     |

<aside class="notes">
<kbd>Ctrl</kbd>+<kbd>D</kbd> (`^D`) means [end of
file](http://en.wikipedia.org/wiki/Control-D#Meaning_in_Unix). It only works at
the beginning of a line (I'm simplifying a little), and has no effect if the
program isn't reading input from the terminal. In your experiment, `^D` told
the shell that you weren't going to type any more commands, so it exited; then
the terminal exited because its subprogram had terminated.

<kbd>Ctrl</kbd>+<kbd>C</kbd> (`^C`) means “interrupt”, i.e., stop what you're
doing. Technically, pressing `^C` sends the [INT
signal](http://en.wikipedia.org/wiki/SIGINT_%28POSIX%29), which by default
terminates an application, but which in many programs means go back to the top
level (e.g., in a shell, stop typing a command line and go back to a pristine
prompt).

Another key that sends a signal is <kbd>Ctrl</kbd>+<kbd>Z</kbd> (`^Z`). It
sends the [TSTP signal](http://en.wikipedia.org/wiki/SIGTSTP), which pauses the
program running in the foreground. (TSTP is short for “terminal stop”; it's
similar to [STOP](http://en.wikipedia.org/wiki/SIGSTOP) but TSTP can be ignored
whereas STOP cannot.) From the shell, you can resume that program's execution
with the `fg` command (resume in the foreground) or the `bg` command (resume in
the background).
</aside>

# I/O Redirection and pipes

## What

Redirect output and/or input.

## Output redirection

|          |                     |                                                  |
|----------|---------------------|--------------------------------------------------|
| **`>`**  | `CMD > FILE`  | CMD is run and its output will overwrite the FILE      |
| **`>>`** | `CMD >> FILE` | CMD is run and its output will be appended to the FILE |

```bash
$ cat tmp.txt
file
tmp
$ echo "hello" > tmp.txt
$ cat tmp.txt
hello
$ echo "bye" >> tmp.txt
$ cat tmp.txt
hello
bye
```

## Input redirection

|          |              |                                   |
|----------|--------------|-----------------------------------|
| **`<`**  | `CMD < FILE` | CMD is run with FILE as its input |

```bash
$ cat tmp.txt
file
$ grep "tmp" < tmp.txt
tmp
```

## Pipe operator

|          |                 |                                           |
|----------|-----------------|-------------------------------------------|
| **`|`**  | `CMD_1 | CMD_2` | CMD_2 is run with CMD_1's output as input |

```bash
$ ls -al | grep *.hs
-rw-rw-r--  1 herulume herulume  229 Oct  4 14:11 quicksort.hs
```
```bash
ls -al > temp_file && grep *.hs < temp_file
```

## Wildcards

|     |                          |
|:---:|--------------------------|
| `*` | Any number of characters |
| `?` | Any single of characters |

# Package Managers

## What are they?

Automate the process of installing, upgrading, configuring, and removing software.

## Advanced Package Tool

## Update

```bash
apt update
```

## Upgrade

```bash
sudo apt upgrade
```

## Find a Package

```bash
apt search NAME
```

## Install / Remove

```bash
sudo apt install PACKAGE
```

```bash
sudo apt remove PACKAGE
```

## Show upgradable

```bash
apt list --upgradable
```

## Remove orphans

```bash
apt autoremove
```

## Other distros

|            |           |
| --------   | --------- |
| **Arch**   | `pacman`* |
| **Fedora** | `dnf`     |

> *a bit less verbose to use

# Network Downloader

## The non-interactive network downloader.

```bash
$ wget [OPT] [URL]
```

|       |                                                        |
|-------|--------------------------------------------------------|
| `-q`  | Quit mode.                                             |
| `-O`  | Display contents on STDOUT, instead of creating a file. |

## cURL

```bash
$ curl [OPT] [URL]
```

|       |                                                        |
|-------|--------------------------------------------------------|
| `-o <file>`  | Write output to <_file_> instead of STDOUT. |
| `--create-dirs`  | To be used in combination of `-o`.           |
| `-s` | Silent or quiet mode. Don't show progress meter or error messages. |

# GHC / GHCI

## What are they?

- The (Glorious)/Glasgow Haskell Compiler
- The (Glorious)/Glasgow Haskell Compiler Interpreter

## GHC

```bash
ghc FILE.hs
```

```bash
ghc -Wall FILE.hs -o li1
```

## GHCI

|        |      |           |
| -------| -----|-----------|
|`:type` | `:t` | Type      |
|`:info` | `:i` | Docs      |
|`:load` | `:l` | Load file |
|`:set`  |      | Set confg |


# Questions?

