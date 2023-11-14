# decompileDex
自动化反编译dex文件生成smali文件脚本。在脱壳下来的dex文件夹下，将项目clone下来，然后内容放置到当前目录

 ![image-20231114174133751](./README.assets/image-20231114174133751.png)

按照`run.sh` --> `DexRepair.sh` --> `removeOrigDex.sh` --> `decompile.sh`文件的顺序执行。就会生成out文件夹下就是dex中所有的smali文件了。

 ![image-20231114174548212](./README.assets/image-20231114174548212.png)
