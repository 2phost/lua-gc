lua-gc
======

Benchmarks

Create Diff:
diff -ur lua.new lua > lua.patch

Instructions:
Copy lua.patch to package folder.
Edit PKGBUILD in order to include lua.patch file and add it to prepare
Build with the follow command: makepkg --skipchecksums -f
Install it as normal