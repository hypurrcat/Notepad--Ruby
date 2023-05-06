# Notepad---Ruby
A rudimentary "text editor" created entirely as a joke. Programmed in Ruby.

This project was created to act as a rudimentary text editor in any command line/terminal capable of running Ruby scripts.

## Dependencies
The [Ruby Programming Language](https://www.ruby-lang.org), which you can download [here](https://www.ruby-lang.org/en/downloads/). See Downloads page for downloads and installation instructions.

## How to Run
If you have successfully installed Ruby, running Notepad-- Ruby should be easy. First, open a command line/terminal in the folder/directory the Notepad-- file is contained in. If one cannot be directly opened there, open a command line/terminal and navigate to that directory via commands (i.e. ```cd```).

Once the terminal is accessing the same directory as the Notepad--.rb file, type/paste the following command to run the program:
```
ruby ./Notepad--.rb
```
The program should now be opened.

## How to Use Notepad--
Upon running the program successfully, the user will be greeted with an ASCII title screen and instructions following the title. Typing ```START``` (case sensitive) will allow the user to start creating/writing their file in the program.

Now, any text the user types will be committed to the file until the user types the sentinel value (exit statement) to stop writing the file's text. To stop writing text to a file, the user must type ```Notepad--, please exit this program. I am done typing my file now.```

Once this sentence has been typed, the user will be prompted to enter the name of the file they want to save to, followed by the file's extension (i.e. .py, .c, .txt, .csv, etc.).

## Credits
[Ruby](https://www.ruby-lang.org/en/) for creating the language and interpreter used to write and run this program.
