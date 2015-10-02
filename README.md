About
=====

This repo is an exploration of implementing the [include directive](https://en.wikipedia.org/wiki/Include_directive) in
Haxe. In AS3/cpp, the include directive is
fairly flexible, allowing the definition of functions, constants, etc,
literally pasting the included lines into the definition (almost?) without
restriction.

The current incarnation is a macro-based solution that is based on code mentioned in [a conversation](https://groups.google.com/forum/?hl=en#!searchin/haxelang/subject$3Ainclude/haxelang/AeoT7VFKEmw/lCCmL76kr7cJ) on the mailing list.

But I haven't been able to get quite the behavior I'd hope for -- that the
lines from the included file are simple pasted into the including file. Please
see [the issues in this repo](https://github.com/jcward/haxe-includes/issues)
for details.

My macro skills are quite limited, and I hope that others will submit
PR's to bring the Haxe include functionality in closer parity to that
of other languages.

Usage
=====

Run the `build.xml` file and specify a target output, e.g.:

CPP
---
`haxe build.hxml -cpp export`

JavaScript
----------
`haxe build.hxml -js export/out.js`

Neko
----
`haxe build.hxml -neko export/out.n`

etc...
