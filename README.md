Website for CSCI:3300
======================

* This site is based on Ranjit Jhala's site for his graduate PL course: See https://github.com/UCSD-PL/230-web

To build, make sure you install [stack](https://github.com/commercialhaskell/stack/blob/master/doc/install_and_upgrade.md)


Build the site
--------------

To *build* the site locally into `_site/`:

```
make 
```

To *delete* all temporary files:

```
make clean
```

To *build* and *update* the webpage remotely:

```
make update
```



Add new lectures or homeworks
-----------------------------

To add a new Haskell lecture, create the new file

	lectures/lec-XXX.lhs

then add a link to it in 

	lectures.markdown 

and then do

	make update

The analogous instructions apply to create a new homework.

To add a new Theory lecture, create the new lecture dir under:

	lectures/theory/XXXX

then add LaTex to that dir followed by adding a link to the PDF in 

	lectures.markdown 

then add a match and copy directive in

src/Site.hs

and then do

	make update

Todo
----

Get stack to build the theory lectures before copying them to _site.

