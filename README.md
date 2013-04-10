Tic-Tac-Toe Built Using the Ruby Programming Language
========
What is Necessary to Play:
--------
Please note this guide is mainly geared to help non-programmers to play the game on their Mac. There is plenty of documentation online for installing Ruby/Git/UNIX-friendly terminals on Windows.


You will need Ruby installed. For Mac Users, I highly recommend [RVM](https://rvm.io/). For Windows, [RubyInstaller](http://rubyinstaller.org/).

Open up your Mac OS X Terminal (for PC users, download a terminal that recognizes UNIX commands). This can be found by hitting command + space at the same time. Type in 'terminal' and it will appear in the list. Click to open.

You may want to make a folder for this repository. To do so, type:

		mkdir myfoldername

To change directories (cd) to get into that folder, type

		cd myfoldername

Once your terminal is open (and in the above folder you created, if so desired), copy and paste the below line to install RVM

		\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

RVM doesn't install Ruby, but gives you the ability to do so (as it is just a Ruby Version Manager). To install Ruby 1.9.3, type this in the terminal:

		rvm get head && rvm reload
After that process finishes, type: 

		rvm install 1.9.3

Git Clone Repository VS. Downloading the Zip Format of this App:
--------

If you go to the top of this page you will see a few buttons to click under 'DavidPardy/ttt_v2'. Those being 'ZIP', 'HTTP', 'SSH', and 'Git Read-Only'.

If you want to play this game without going through the hassle of installing Git, click the 'ZIP' button and it should download this application to your 'Downloads' directory. Once downloaded, copy this folder over to your 'myfoldername' you created earlier. Since the app is called 'ttt_v2' and you should still be in 'myfoldername' from earlier, type:

		cd ttt_v2

Now you are in the Tic-Tac-Toe program. To play, type:

		ruby lib/start_game.rb

If you want to do a git clone of this repository, you will need [Git](https://code.google.com/p/git-osx-installer/downloads/list?can=3&q=&sort=-uploaded&colspec=Filename+Summary+Uploaded+Size+DownloadCount) installed. This is a version control management system. Choose the top .dmg package to install. Follow the directions and choose the default features.

After installing Git, you will need to 'git clone' this repository. Make sure you have the 'HTTP' button selected at the top of this screen. To do so, type this in the terminal:

		git clone git@github.com:DavidPardy/ttt_v2.git

You will need to change directories (cd) into the cloned repository. To do so, type:

		cd ttt_v2

To run the game, type:

		ruby lib/start_game.rb

This should bring up the board and ask for human input.

The game is currently set up as human versus computer. The human is represented by an 'X' on the board, while the computer is shown as a 'O' on the board.