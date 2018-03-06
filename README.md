## 1.0 Algorithmic Composition
A collection of musical experiments utilizing ChucK and TidalCycles, two audio programming languages. ChucK is a concurrent, strongly-timed audio programming language that can be used for real-time synthesis, composition and performance. ChucK could be described as an interpreted, contemporary derivative of CSound in that it is used to programmatically create sound. However ChucK places more emphasis upon on-the-fly, real-time code changes, allowing it to be used in a dynamic and highly iterative fashion.

TidalCycles is a live coding environment designed for musical improvisation. TidalCycles is a mini-language (Domain Specific Language) embedded within Haskell. To this end, TidalCycles extends Haskell with it's own domain-specific pattern constructs whilst leveraging standard Haskell constructs. TidalCycles emphasizes the use of modular, rhythmic patterns that are used to create musical sequences.

Some overlap exists between the two languages, though the contrasting features serve as a more interesting point of examination in terms of each language's creative application. In particular, ChucK presents as an imperative way of programming sequences whilst Tidal naturally utilizes a declarative style native to Haskell. ChucK also places a greater emphasis upon patch synthesis, as opposed to Tidal's pattern-centric, rhythm-orientated sequence construction.

## 2.0 Getting Started
Ensure ChucK is installed. OS specific installation instructions are detailed extensively within the ChucK main (linked below), providing source and binary options (a necessary consideration for linux systems). ChucK scripts can then be run via the CLI using the following syntax:
```
chuck <chuck_script.ck>
```
Alternatively, scripts may be run (as well as developed, layered and organized in a more flexibly way) via Audicle. Installation and configuration of Audicle is also detailed within the ChucK main.

Ensure Haskell, Atom and SuperCollider (backend Synth) are installed for use. Installation and configuration instructions for all OS' are detailed extensively within the Tidal main (linked below). Tidal scripts are typically executed within an interactive, editor-based environment. To allow for this, intialize SuperDirt within SuperCollider:
```
SuperDirt.start
```
And then boot the TidalCycles plugin from within atom. Other plugin variations also exist for Sublime and EMacs etc.

## 3.0 Built With
ChucK 1.4.0.0 (numChucKs), miniAudicle 1.4.0.0 (gidora). GHC 8.2.2, Cabal 2.0.0.1, SuperCollider 3.9.1. 

## 4.0 Authors
Sam Hardy - Implementation.

## 4.1 Resources
| Title/Author  | Link  |
| ------------- | ----- |
| ChucK: Strongly-timed, Concurrent, and On-the-fly Music Programming Language - Princeton University | http://ChucK.cs.princeton.edu/ |
| ChucK Release Notes - Princeton University | http://ChucK.cs.princeton.edu/release/ |
| The DIY Orchestra of the Future - G. Wang | https://www.ted.com/talks/ge_wang_the_diy_orchestra_of_the_future |
| Programming for Musicians and Digital Artists: Creating Music with ChucK - A. Kapur, P. Cook, S. Salazar, G. Wang  | https://www.kadenze.com/courses/introduction-to-programming-for-musicians-and-digital-artists/info |
| TidalCycles, A Language for Live Coding Patterns | https://tidalcycles.org/ |
| TidalCycles, Installation and Configuration | https://tidalcycles.org/getting_started.html |