# 一个很全面细致的vim配置方法网址

[教程1:VIM配置成强大IDE](http://www.cnblogs.com/zhangsf/archive/2013/06/13/3134409.html)
教程1中有很多的东西，可以在用到时仔细研究。

# vim之ctags使用

[教程2:vim之ctags使用](http://www.cnblogs.com/pangchol/p/3455662.html)


# 学习和使用笔记

## 关于ctags和符号查找

1. 使用ctags先生成 tags文件。对于c语言，直接使用ctags生成即可，对于C++语言，一般使用额外的选项来生成。
常用的如教程1中的"ctags -R --c++-kinds=+p --fields=+iaS --extra=+q" 命令。在SNPS的源代码中，都直接生成了tags文件，
所以这一步可以直接省略了。

2. 在vim中添加 tags+=./tags 表示搜索当前目录下的tags文件。让vim知道到哪里去找。这一步也可以是在vimrc中设置。

3. 常用的tag命令的用法。
    - Ctrl+] 跳到当前光标下的单词的标签。
    - Crtl + W + ] 在新窗口显示当前光标下的单词的标签，光标跳到标签定义处。
    - :stag TagName 新窗口显示TagName标签，光标跳到标签处
    - :tag TagName 显示TagName标签，光标跳到标签处
    - 其他的tag命令可以参考教程1

## 关于标签浏览器显示
可以按转taglist插件来显示当前文件中的所有tagName


