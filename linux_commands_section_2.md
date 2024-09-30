
# 2. File Viewing and Editing

## 2.1 Viewing File Content
- `cat`: Concatenate and display file content.
  ```bash
  cat filename.txt
  ```
- `more` / `less`: View large files one screen at a time.
  ```bash
  more filename.txt  # older, less used than less
  less filename.txt  # preferred for large files
  ```
- `head` / `tail`: Display the beginning or end of a file.
  ```bash
  head -n 10 filename.txt  # first 10 lines
  tail -n 10 filename.txt  # last 10 lines
  tail -f logfile.log      # follow live log output
  ```

## 2.2 Text Editing (Terminal Editors)
- `nano`: Simple terminal-based text editor.
  ```bash
  nano filename.txt
  ```
- `vim` / `vi`: Powerful text editor (higher learning curve).
  ```bash
  vim filename.txt
  vi filename.txt
  ```
