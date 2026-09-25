# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal LeetCode practice repo. Each problem is a Swift Xcode Playground. There is no build system, package manager, linter or test suite. To run a solution, open `leetcodeandcoffee.xcworkspace` in Xcode and run the playground there. For a quick check outside Xcode, `swiftc` a single `Contents.swift`.

## Structure

- Topic folders (`Arrays and strings/`, `Hashing/`) hold one `<Problem Name>.playground/` per problem. `Hashing/` is currently empty.
- Each playground contains `Contents.swift` (the solution) and `contents.xcplayground` (iOS target, Swift 6, re-runs on source change).
- `leetcodeandcoffee.xcworkspace/contents.xcworkspacedata` lists each topic folder as a `FileSystemSynchronizedGroup`. A new topic folder must be added there to show up in Xcode. New playgrounds inside an existing topic folder are picked up automatically.

## Conventions

- Solutions use the LeetCode shape: `class Solution { func <name>(...) -> ... }`.
- Commit messages follow `Add <Problem Name> solution`, one commit per problem.
