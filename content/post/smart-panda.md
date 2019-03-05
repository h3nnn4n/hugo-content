---
title: "Smart Panda - A Tetris Playground for AIs"
date: 2019-03-04
tags: ["artificial intelligence", "tetris"]
draft: false
---

Smart Panda is a simple Tetris Playground intended for use with Artificial Intelligences. That is,
the intended use of Smart Panda is as a Tetris engine to explore and apply some Artificial Intelligence
concepts to Tetris. The core of Smart Panda is written in [rust](https://www.rust-lang.org/), compiled to
[wasm](https://developer.mozilla.org/en-US/docs/WebAssembly) using
[wasm-pack](https://rustwasm.github.io/wasm-pack/) and
[wasm-bindgen](https://rustwasm.github.io/wasm-bindgen/). What you see happening on the browser
right now is controlled with JavaScript. That is, the heavy lifting is made in rust and javascript
does some glue logic and calls the update events from Smart Panda. This (should) allow for
some pretty amazing thing to be made here ;)

The goal is to implement a simple agent that can play the game. In the past, I made one using
a [GameBoy Emulator](https://github.com/h3nnn4n/garapa/) with a
[Genetic Algorithm](https://github.com/h3nnn4n/garapa/tree/gabate/)
and a paper was published about it with the title
_Playing the Original Game Boy Tetris Using a Real Coded Genetic Algorithm_, in case you are interested.
So now, I play to experiment more using simpler methods (I suspect that they might be enough).
Running it in the browser should allow easier exploration thanks to a more accessible
interface and ease of implementation. With the rust core speed should not be an issue.
And finally, it allows for easier visualization and divulgation. No more need to compile
C code and get hold of a shady Tetris rom.

This article still a work in progress ;)
I published in it order to test and deploy it to run on a browser without my local setup.

<iframe class='iframe' src="/smart-panda/index.html" width="700" height="600" frameBorder="0"></iframe>
