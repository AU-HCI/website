Git Cheat Sheet
---

In this course we will be using the [Git](https://git-scm.com/) version control system.  We will be going over how Git works during lecture, and thus, this note can be seen as a cheat sheet for Git.

Before getting started using Git, please make sure you already have a [Github account](https://github.com/), and have emailed me your username.  Then you should have received an email from me with the details of where to find your private Git repository.

Throughout this note I will refer to the "terminal" which is an application that is slightly different depending on which operating system you have.  If you are on Windows, then the "terminal" refers to [Git Bash](https://gitforwindows.org/), and if you are on Mac OS X or Linux, then the "terminal" is the command console.

Installing Git
---

Everyone in this class is required to use the command line when using Git. This makes it is easier to communicate with everyone on how to use Git.  The following locations should be used to install Git:

- Windows: [Git for Windows](https://gitforwindows.org/)
- Mac OS X and Linux: Git is installed by default

Cloning your repo
---

In the email response you received regarding your new private Git repository you will find the link you can use to clone your repository.  To do this open the terminal, navigate to the location on your computer you want to save your repository, and enter the following command:

```
git clone https://github.com/CSCI3300-PL-Concepts/REPO_NAME
```

where the URL in the previous command is the link to your private repository sent to you through email.  Your repository is now downloaded to your machine, and can be used to complete your homework and work on your project.  The repository acts just like any other folder/directory on your machine.  You can create files in it just as you do any other folder/directory.  However, it has the ability to track your changes, and to send your files up to your Github account for me to download your files.

Committing and Pushing Changes
---

After you have created new or modified existing files you have to tell Git about it so that it tracks what you have done.  This is called committing.

First, if you have added any new files to your repository you have to *add* them to the git repo.  You can do this by firing off the following command:

```
git add PATH_TO_NEW_FILE
```

where `PATH_TO_NEW_FILE` is the location relative to your repository of the new file.  Do this for every new file.  Now if you have a lot of new files within the same working folder/directory, then you can use the following command:

```
git add .
```

This will add all new files in the current working directory.

Once you have added all new files, it is time to commit your changes.  This tells Git about all the new files, all your changes to existing files, and logs these changes with a commit message.

We *commit* by using the following command:

```
git commit -a -m 'LOG MESSAGE'
```

where the `-a` tells git to commit all changes, and the `-m` flag tells Git to use the following commit message, and finally, the `LOG_MESSAGE` should be a detailed message describing your changes.  This is what all of your collaborators -- like myself -- will read to get an idea of what you did.  This should be carefully crafted and accurate.

Note on traditional git use.  You should be committing frequently.  Every time you have completed a clear task, you should commit it.  It is completely standard to have lots of commits tracking all of your changes.

To view all of the commits in your repo use the following command:

```
git log
```

If you are working with multiple people within the same repository, then everyones commit messages will be listed.  This is how we can keep up with what everyone is doing.

Once you have finished committing your work, then you have to *push* your commits up to your Github account so that I can pull them from you, and grade your work.  To *push* your commits to Github use the following command:

```
git push
```

This uploads all of your commits to Github where I can access them.  You have not officially finished your homework until you have issued this command, because if you don't, then I don't get your homework.

Pulling Changes
---

The dual to pushing is *pulling*.  This downloads all the commits that have been pushed to your repository by other people, merges theirs changes, and logs them.  This is how you receive your homework and grade reports.

To *pull* all changes from Github into your repository, then use the following command:

```
git pull
```

At this point all changes that have been pushed to your repository on Github have been merged into your repository.


Work Flow Overview
---

Your work flow should look like the following:

- Pull all changes from the Github
- Make changes to existing files and create new files (like doing your homework)
- Commit your changes
- Push your changes

The reason you always pull before working is to ensure you have all the most recent files before starting your work.


More Resources
--

- [Git Videos](https://git-scm.com/videos)
- [Git Book](https://git-scm.com/book/en/v2)