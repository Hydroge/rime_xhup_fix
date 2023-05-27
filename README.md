# 小鹤音形 RIME 输入法改良方案

## 使用方法

1. 打开小鹤下载站：http://flypy.ysepan.com/
2. 打开「3.1.挂接——辅助码」
3. 下载「小鹤音形“小狼毫”for Windows.zip」
4. 安装改良方案：下载`flypy.custom.yaml`后放入「用户文件夹」。右键点击小狼毫“中”字图标，在菜单中选择“用户文件夹”，或者直接找到C:\Users\你的用户名\AppData\Roaming\Rime放入。
5. （可选）将`rime.lua`和`default.custom.yaml`文件放入「用户文件夹」，或参照以上文件对本机对应文件进行修改。

## 改良特色

- ~~将`\`符号用作「．」，全角句点或繁体间隔号。顿号请用`/`键来处理。~~
- 取消方括号翻页功能，增强方括号的符号支持。现在方括号可输入诸如`「」【】〔〕[]`这样的符号了。在多次敲击`[`或者`]`的时候，会在候选框中来回选择符号，与Rime的默认的输入法方案一致。
- 由于简体中文的间隔号是`·`，作为半角符号在全角符号体系中有割裂感。现在`|`增添日语的全角间隔号`・`，从而保证半角全角的统一性。
- 在`default.custom.yaml`当中，屏蔽了F4切换输入法的功能，以后只用`Ctrl+\``来更换输入法。
- 在`rime.lua`当中，优化了日期和时间的快速输入。

## 文件目录

- `flypy.custom.yaml`是常规版本，设置轻便简洁。
- `flypy.custom_Symbol_Extended.yaml`是字符增广版本，支持更多标点符号。
- `flypy.custom_Symbol_Extended_2.yaml`是超级字符增广版本，在上一个文件的基础上，支持了斜杠开头的更多符号输入。

## 已知问题

- 在输入数字之后输入标点可能会出现问题。比如在输入数字后输入句号，需要连按两下才能出来数字，以及在输入数字之后输入冒号会出现半角的冒号。不知道修复方案，欢迎大家在Issues当中提出，或者直接fork并修改。

## 注意事项

本方案可能仅适用于Windows操作系统，但如果想要兼容其他操作系统应该也不麻烦。

只需要对照`flypy.schema.yaml`和`flypy.custom.yaml`作出的改动，再根据自己操作系统的方案修改即可。

考虑输入方案可能会随时变动，因此不再提供根据`flypy.custom.yaml`改动的`flypy.schema.yaml`文件，若想获取，可以直接对比两者进行修改。
