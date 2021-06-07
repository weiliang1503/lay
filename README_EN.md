# lay
Lisp another yogurt

`lay` is an AUR Helper written in Common Lisp, designed to help users to build software packages automatically instead of installation.

## Usage
We recommend you to download the pre-built binary from release page.

``` bash
lay
lay <operation> [...]
```

Operation:

``` bash
lay -h                 display this help imformation
lay -V                 show the lay version
lay -S  [package_name] build a package
lay -Ss [package_name] search a package
lay -Sy                update an old AUR package(TODO)
```

`lay -Sy` is the default if no other operation is selected.(TODO)

## build
Please make sure that you have installed `quicklisp` and `sbcl` already.
```bash
git clone https://github.com/weiliang1503/lay.git
cd lay
sbcl --script build.lisp
```
Then run `./lay` would be OK.
