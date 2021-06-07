# lay
Lisp another yogurt

lay是使用Common Lisp编写的AUR Helper。旨在帮助用户自动化构建软件包（而不是安装）。

## 用法
由于编译较受本机环境限制，建议下载release使用

``` bash
    lay
    lay <操作> [...]
```

操作：

``` bash
    lay -h         帮助
    lay -V         版本号
    lay -S  [包名] 构建包
    lay -Ss [包名] 搜索包
    lay -Sy        更新旧的构建包(TODO)
```

如果不使用参数那么将执行 lay -Sy(TODO)

## 编译
确保本机安装了quicklisp和sbcl
```bash
git clone https://github.com/weiliang1503/lay.git
cd lay
sbcl --script build.lisp
```
然后执行./lay即可
