---
title: Installing and using Git
---

In this course you will be assigned a Git source-code repository (or
repo for short) that you will use to turn in all assignments.

# What is Git?

Git is a textfile revision system.  One uses it to mangage revisions
of text files between multiple people using a single set of files.
Git will keep track of who made which changes and when (the revision
history), provide tools for undoing and redoing changes (handling
merging), allow remote access to the repository, and even support
multiple timelines of the files (branching).

In this short tutorial I'll go through everything you need to know in
order to use Git in this course.

# Installing Git

First we need to get Git on your computer if it's not there already.
If you are running Linux, you are done, and can skip this section.
Otherwise, Mac OS X users need only open the Terminal app, and type
`git` at the commandline.  If Git's not install already, then it will
tell you what you need to do.

So if you're a Windows user, then please install Git from
[here](https://git-scm.com/ ).  This is all you need to install to use
Git in this course.

This will install a commandline interface to Git called GitBash, and
it looks like [this](https://gitforwindows.org/img/gw1.png ).  I like
using the commandline, because the same commands work no matter which
operating system you are using.  Thus, I can help everyone using the
same solutions to problems we run into.

Throughout the remainder of this tutorial I will say "open the
commandline" to mean open either the terminal on Unix-based systems
(Linux, Mac OS X, etc) or GitBash on Windows.

# Setting up Git

We now need to setup Git so that it knows who you are.  

- Your name:

  ```
  > git config --global user.name "John Doe"
  ```

  Replace "John Doe" with your full name.  This is the name Git will
  use to record your changes in the revision history.
  
- Your email:

  ```
  > git config --global user.email jdoe@augusta.edu
  ```

  The revision history also records your email.  Set this to your AU
  email address.
  
This completes the Git basic setup.

# Cloning your repo

At this point you have emailed me with your
[Github](https://www.github.com ) login and I have replied with the
link to your Git repo.  If not, then please do this step first.

At this point we need to __clone__ your repo from Github to your
computer.  To do this open first create a folder on your computer that
you will use to keep everything in this class in.  I'll call it
`pl_dir` in this tutorial.  Then open the commandline and navigate to
`pl_dir`:

```
> cd path_to_pl_dir/pl_dir
```
At this point you have changed your working directory to `pl_dir`.
You can check that this worked by running the command:

```
> pwd
```

This stands for "present working directory".  

Now that your working directory is `pl_dir` we can clone your course
repository using the following command:

```
> git clone URL
```

replace `URL` with the URL I sent you.

Now check to make sure that the clone was successful (if it weren't
you should have gotten an error message):

```
> ls 
```

This command is "list files" and simply lists all the files in your
working directory.  If you see your repo, then you are good to
go. Otherwise an error happened, and so try again, but if you can't
figure it out, then ask on Slack.


# Editing files in your repo

A Git repo is just a special directory that Git knows about.  Once
it's cloned to your computer you can treat it as a standard folder on
your computer that is full of textfiles that are managed by Git.  The
only time you need to use the commandline or Git is when you are ready
to tell Git about the changes you've made.

So to get an idea of how this works.  Using the file explorer (Finder
on Mac OS X) go and take a look at your repo in `pl_dir`.    The first
time you clone your repo it will contain the following files:

- `sf_src` : The source code for the book we are using in this course.
- `git_tutorial` : Some example files for this tutorial.

Move into `sf_src` by double clicking on it, and then move into
`vol1-lf`.  These are all the files for the book including the Coq
source code.  Double click `index.html`.  As you can see these are
just files.

When you are working on your assignments you can use your graphical
based means of exploring files and folders, and simply treat the files
as normal files.  Open them with editors and save them, etc.

Let's do an example.  Open `git_tutorial/example.txt` in your favorite
text editor.  Answer the question and save it.

Now we are going to tell Git about your changes, commit them to the
revision history, and then push them to Github where I can see and get
your changes too.

Open the commandline and move into the the `git_tutorial` folder:

```
> cd path_to_pl_dir/pl_dir/git_tutorial
```

Now tell Git about your changes by committing them:

```
> git commit -a -m 'Answered the question.'
```

This is adds all the changes you've made to the files in your working
directory to the revision history.  This is a completely local
operation, it doesn't communicate it to Github.

You can see the revision history using the command:

```
> git log
```

This lists all the changes by everyone who've made changes to the
files in your repo.  For example, you will see mine listed as well,
and I will see yours.

The command `git commit -a -m` says you want to commit each change to
the files in my working directory using the commit message provided;
we used `'Answered the question'`.  This message should be a detailed
description of the changes you have made.  As you can see in the
revision history when using `git log` this shows up in the history.
I'll read these to see what you have done.

