# 简单的中文简历模板

## 使用方法

以 Ubuntu 18.04为例，安装 XeLaTeX：
```
$ sudo apt install texlive-xetex texlive-latex-extra
```

安装思源字体：

```shell
$ sudo apt install fonts-noto-cjk fonts-noto-cjk-extra
```

查看系统中文字体：

```
$ fc-list :lang=zh
...
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans CJK SC,Noto Sans CJK SC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans CJK SC,Noto Sans CJK SC Regular:style=Regular
...
```

编译：

```
$ xelatex resume.tex
$ xelatex resume_qrcode.tex
```

也可以通过 TeXstudio 来编辑，安装：

```
$ sudo apt install texstudio
```

修改 TeXstudio 默认编译引擎：`Options` -> `Configure TeXstudio` -> `Build` -> `Default Compiler` -> `XeLaTex`，修改后可以按 F5 预览，F6 编译简历。

## 预览

| 不带二维码 | 带二维码 |
|:---:|:---:|
| [![](/examples/resume.png)](https://github.com/zither/latex-resume/blob/master/examples/resume.pdf)  | [![](/examples/resume_qrcode.png)](https://github.com/zither/latex-resume/blob/master/examples/resume_qrcode.pdf) |

## 参考列表

 - [How to write a LaTeX class file and design your own CV](https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html)
 - [billryan/resume](https://github.com/billryan/resume/tree/zh_CN)
 - [WonderCV](https://www.zhihu.com/question/20368865/answer/259314207)
 - [posquit0/Awesome-CV](https://github.com/posquit0/Awesome-CV)
