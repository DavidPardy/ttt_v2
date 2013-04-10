Tic-Tac-Toe Built Using the Ruby Programming Language
========
What is Necessary to Play:
--------
- You will need Ruby installed. For Mac Users, I highly recommend [RVM](https://rvm.io/).

- Open up your Mac OS X Terminal. This can be found by hitting command + space at the same time. Type in 'terminal' and it will appear in the list. Click to open.

- You may want to make a folder for this repository. To do so, type:

		mkdir myfoldername

- To change directories to get into that folder, type

		cd my foldername

- Once your terminal is open (and in the above folder you created, if so desired), copy and paste the below line to install RVM

		\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

- RVM doesn't install Ruby, but gives you the ability to do so (as it is just a Ruby Version Manager). To install Ruby 1.9.3, type this in the terminal:

		rvm get head && rvm reload

- After that process finishes, type: 

		rvm install 1.9.3

- If you want to do a git clone of this repository, you will need [Git](https://code.google.com/p/git-osx-installer/downloads/list?can=3&q=&sort=-uploaded&colspec=Filename+Summary+Uploaded+Size+DownloadCount) installed. This is a version control management system. Choose the top .dmg package to install. Follow the directions and choose the default features.

- Now that Git and Ruby are installed

- To run the game, type in 'ruby start_game.rb'. This should bring up the board and ask for human input.

- The game is currently set up as human versus computer. The human is represented by an 'X' on the board, while the computer is shown as a 'O' on the board.