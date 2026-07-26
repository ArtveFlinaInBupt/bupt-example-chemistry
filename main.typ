#import "/facade.typ": *

#show: set-document-metadata.with(info: (
  author: "fa_555",
  title: "大邮化学集",
  date: datetime.today(),
))

#include "cover.typ"

#[ // 前言
  #show: show-foreword

  = 前言

  《大邮化学集》是大邮集集模板的简单使用例一例。源码可以在

  你也许会发现本文件的编译非常慢——性能瓶颈似乎在 Typst `alchemist` / `cetz` 包，而不是大邮集集模板。

  #divider()

  大邮集集模板脱胎于《大邮数学集》——欢迎使用大邮集集模板创造更多作品！

  相比《大邮数学集》，《大邮化学集》只保留了最基础的内容，去掉了 95% 以上的组织脚本、构建代码、脚手架等开发 QoL 设施。您可考虑尽情发挥创意。

  大邮集集模板采用 MPL-2.0 开源协议；《大邮化学集》源代码中技术部分采用 MIT 开源协议；题目内容部分与生成的 PDF 产物采用 CC BY-NC-SA 4.0 协议。

  我后续会在大邮集集模板中追加稍详细的使用文档。

  #h(1fr); #text(font: font.mono)[fa\_555]


  #attention-page[献给我自己]
]

#[ // 目录
  #show: show-outline

  #outline(target: heading)
]

#[ // 正文
  #show: show-body-start

  #include "problemset/demo.typ"
]

#[ // 附录
  #show: show-appendix

  = 字体清单

  您可参考本仓库的 CI 文件 `.github/workflows/main.yaml`，`/template/config.typ` 中的字体配置（如下）：

  #raw(block: true, lang: "typ", {
    let code = read("template/config.typ")
    code = code.slice(code.position("#let font "))
    code = code.slice(0, 2 + code.position("\n)") - code.len())
    code
  })

  #figure((m.vtable)(
    columns: 3,
    table.header([字体名], [用途], [License]),

    [思源宋体（Source Han Serif SC）],
    [中文衬线体],
    [SIL OFL 1.1],

    [思源黑体（Source Han Sans SC）],
    [中文、西文非衬线体],
    [SIL OFL 1.1],

    [STIX Two Text],
    [西文衬线体],
    [SIL OFL 1.1],

    [Fira Code],
    [等宽编程字体],
    [SIL OFL 1.1],

    [Font Awesome Free],
    [图标字体],
    [SIL OFL 1.1（字体）\ CC BY 4.0（图标）],
  ))
]
