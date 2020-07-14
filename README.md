# Speed up your Bash commands!

> WINDOWS

1. Create a .bashrc file under "~/.bashrc."

~ is usually your "C:\Users\\\<your user name>" folder. Typing:

    echo ~

in the Git Bash terminal, it will tell you what that folder is.

a. If you can't create the file (e.g. running Windows), run the below command:

    copy > ~/.bashrc

The window will output an error message (command not found), but the file will be created and ready for you to edit.

2. Access your ~ folder as shown above and open the .bashrc file in your preferred editor.

3. Copy and paste the content of `win.bashrc` file of this repository, restart your Bash terminal and magic is done!

You can now use the existing shortcuts and functions that are explained below (soon) and you'ee able to create your own functions and shortcuts as well! Enjoy it!


> LINUX

Copy the content of the `lnx.bashrc` to the top of your .bashrc file under your user folder.

Look for lines that change the value of variable `PS1` and comment those lines.


> WSL

Copy the content of the `lnx.bashrc` to the top of your .bashrc file under your user folder in the WSL workspace.

Look for lines that change the value of variable `PS1` and comment those lines.
