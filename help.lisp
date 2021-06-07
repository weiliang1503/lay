(in-package lay)

(defun lay_help ()
  (princ
"lay是一个AUR helper。但它不会帮你安装软件包，仅会帮你构建软件包。

用法：
    lay
    lay <操作> [...]

操作：
    lay -h         帮助
    lay -V         版本号
    lay -S  [包名] 构建包
    lay -Ss [包名] 搜索包
    lay -Sy        更新旧的构建包

如果不使用参数那么将执行 lay -Syu
"))
