---
title: Shells Scripting
author: Karl.Senior
date: 2021-03-22
extensions:
  - terminal
---

# Shell Scripting
 - Brief Overview
 - Lack of practice
 - Made this at 2 AM
 - https://youtu.be/tc4ROCJYbm0

---

# What is Shell Scripting?
  - A program that runs on a shell
  - File manipulation
  - Text Printing
  - System monitoring and backup
  - Task Automation

---

# Langauges for shell scripting
  - Perl 5
  - Python
  - Dart
  - sh and its derivatives

| Shell | Expanded                    | Family                    |
|-------|-----------------------------|---------------------------|
| sh    | Bourne Shell                | ~                         |
| csh   | C Shell                     | ~                         |
| tcsh  | *TENEX Copmeletion Shell    | csh                       |
| bash  | Bourne Again Shell          | sh                        |
| zsh   | Z Shell                     | sh                        |
| fish  | Friendly Interactive Shell  | ~                         |
| dash  | Debian Almquist shell       | sh                        |
| xonsh | Python-powered shell        | sh                        |
| rush  | Bourne Shell                | Made by me and friends :) |

* Not totally accurate
* Btw it's not hard to write your own shell

---

# Vocab
  - Any questions ask about these terms ask now

| Word                          | Definition                                                                |
|-------------------------------|---------------------------------------------------------------------------|
| Shell                         | An environment to connect with your OS                                    |
| Terminal Emulator             | An emulator that mimics an environment for old monitor and keyboard setup |
| TTY                           | Teletypewriter *                                                          |
| Command Line (CLI)            | A line on which commands are typed to be runned                           |
| Command Prompt                | The prompt at the start of the command line / Export $PS1                 |
| Terminal User Interface (TUI) | A program that runs in the terminal                                       |

* http://www.linusakesson.net/programming/tty/index.php
* I use the Alacritty terminal emulator (written in rust) with zsh

---

# Piping and Redirection revisited
  - Piping: Take the output of one program and make it the input to another's
  - Redirection: Change the input/output/error to somewhere else

| File                  | File Descriptor |
|-----------------------|-----------------|
| Standard Input STDIN  | 0               |
| Standard Input STDOUT | 1               |
| Standard Input STDERR | 2               |

---

# Advance Piping and Redirection
  - What if I wanted to find all files ending with x extension, select one, and then start in in my text editor?
  - What if I was only interested in errors?

| Symbol             | Meaning                                                           |
|--------------------|-------------------------------------------------------------------|
| -                  | Stdin                                                             |
| > file             | Redirect stout to a file (overwites)                              |
| >> file            | Append stout to a file                                            |
| < file             | Take input from a file                                            |
| 2> file            | Redirect stdout to file                                           |
| 2> /dev/null       | Anything here will be discarded (only write to this special file) |
| 1> output 2> error | Redirect stdout to output and stdout to error                     |
| 2>&1               | Redirect stderr to stdout                                         |
| \&                 | Redirect both stderr and stdout                                   |


---

# Functions, Variables, and Aliases
  - Alias: Nicknames that will be expanded by bash (shortcut)
  - Functions: Contain logic that can take arguments

```terminal8
bash -il
```
---

## For loops
```bash
for i in (0..100);
do
echo $i;
done
```

## While loops
```bash
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done
```

- `man bash`

---

# Live-demo time

---

# Cron jobs and nohup
  - Schedule jobs
  - Automate task
  - immune to hangups
