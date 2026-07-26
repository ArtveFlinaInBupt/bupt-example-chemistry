/// 引用大邮集集模板
#import "/template-bump/common.typ" as bump
#import "/template-bump/model.typ": model-factory
#import "/template-bump/util.typ": *

/// 引用外部包
#import "@preview/alchemist:0.2.0": *

/// 引用本项目的其他文件
#import "/template/config.typ": *

/// 将配置注入模版；需要的配置参见 config 的内容
#let set-document-metadata = bump.set-document-metadata
#let indented-par = bump.indented-par.with(config)
#let show-foreword = bump.show-foreword.with(config)
#let show-outline = bump.show-outline.with(config)
#let show-body-start = bump.show-body-start.with(config)
#let show-body-file = bump.show-body-file.with(config)
#let show-appendix = bump.show-appendix.with(config)
#let m = model-factory(config)

/// m 中有各种工具函数。调用时可以以 (m.p)(args) 形式；或在此 let p = m.p 之后以 p(args) 形式调用。
#let p = m.p
#let ps = m.ps

/// === 下面和模板没有任何关系了 ===

/// 本项目需要用到的工具可以在这里定义。这些全都是画化学结构式用的！
#let sg = single
#let db = double
#let br = branch
#let fg = fragment
#let cfl = cram-filled-left.with(base-length: .4em)
#let cfr = cram-filled-right.with(base-length: .4em)
#let cdl = cram-dashed-left.with(base-length: .4em)
#let cdr = cram-dashed-right.with(base-length: .4em)
#let skeletize-inner = skeletize-config((atom-sep: 2em))
#let skl(..args) = {
  show math.equation: set text(top-edge: "cap-height", bottom-edge: "baseline")
  skeletize-config((atom-sep: 2em, angle-increment: 30deg))(..args)
}
#let sg-on-top = build-link((length, ctx, _, args) => {
  import cetz.draw: *
  let r = length / 10
  let w = length / 10
  rect((r, -w), (length - r, w), fill: white, stroke: none)
  line((0, 0), (length, 0), stroke: args.at("stroke", default: ctx.config.single.stroke))
})
