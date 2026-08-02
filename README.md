# Bupt Example – Chemistry

《大邮化学集》是[大邮集集模板](https://github.com/ArtveFlinaInBupt/bupt/)的简单使用例一例。

大邮集集模板脱胎于《大邮数学集》——欢迎使用大邮集集模板创造更多作品！

相比《大邮数学集》，《大邮化学集》只保留了最基础的内容，去掉了 95% 以上的组织脚本、构建代码、脚手架等开发 QoL 设施。您可考虑尽情发挥创意。

《大邮化学集》源代码中技术部分采用 MIT 开源协议；题目内容部分与生成的 PDF 产物采用 CC BY-NC-SA 4.0 协议。

## 构建

需安装 [Typst](https://github.com/typst/typst)。

```sh
# 克隆仓库：
git clone --recurse-submodules git@github.com:ArtveFlinaInBupt/bupt-example-chemistry.git
cd bupt-example-chemistry
# ... 或者如果已经克隆了仓库但没管 submodule：
git submodule update --init --recursive

typst compile main.typ
```

字体的安装和配置可参考生成的 PDF 产物的附录 A。你也可阅读源码并尝试修改字体配置，换用你的设备中自带，且没有版权风险的字体。
