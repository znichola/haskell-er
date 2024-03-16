# Becomming a functional Haskell-er

read through the introduction [here](https://haskell-via-sokoban.nomeata.de/) but the examples use an online code edditor, bleh. Also readthrough some of the [haskell for readers](http://haskell-for-readers.nomeata.de/) which is interesting

But now reading through the [learn you a haskell](https://learnyouahaskell.github.io/) online book and am very happy with it.

An idea I had is to try doing the questions from the exam02 but with haskell, maybe I can hookup the existing checkers to test the solutions? idk

[Jeroen Fokker's Functional Parsers](http://cmsc-16100.cs.uchicago.edu/2021-autumn/Lectures/18/documents/parsers.pdf) briefly looked at but not studied, it uses gofer not quit haskell.


## Installing haskell on 42 macs

It's a real nightmare, but maybe this is the command that will do the trick? who konws. It installs into the sgoinfre/haskell, maybe you need to make the folder beforehand.

```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | GHCUP_INSTALL_BASE_PREFIX=/System/Volumes/Data/mnt/sgoinfre/haskell BOOTSTRAP_HASKELL_INSTALL_NO_STACK=1 sh
```
