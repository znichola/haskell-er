# Effective Haskell

[Rebecca Skinner - Effective Haskell](https://effective-haskell.com/) as first heard about on [ep 39](https://haskell.foundation/podcast/39/) of the [The Haskell Interlude](https://haskell.foundation/podcast/) podcast.

I'll try to follow the examples from the book, let's see how far I get.

---

  “The Haskell motto *avoid success at all costs*”

Rebecca Skinner. “Effective Haskell.”

---

#### Chapter 1

To customise the promt for ghci `:set prompt "λ "` “You can also add it to your ghci configuration file, at ${HOME}/.ghci.”

better version with color `echo :set prompt '"\ESC[1;32mλ| \ESC[m"' > .ghci`
