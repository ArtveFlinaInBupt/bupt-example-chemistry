#import "/facade.typ": *

#let either = grid.with(columns: (50%, 50%), align: center + horizon)

#show: show-body-file

= MIT 5.12 Organic Chemistry I – 题集 2

本套题是 MIT 5.12 Organic Chemistry I 的题集 2，你可在#link("https://ocw.mit.edu/courses/5-12-organic-chemistry-i-spring-2005")[MIT OCW]上找到本课程的相关资源，包含这套题。采用 CC BY-NC-SA 4.0 协议授权。

#p[
  圈出下列结构中所有的亲电性碳原子，并用共振贡献结构解释。

  #figure(skl(cycle(6, {
    sg()
    db()
    sg()
    br({
      db(offset: "right")
      fg("N", lewis: (lewis-charge(charge: $+$, angle: 45deg),))
      br(angle: -1, sg())
      sg(angle: 3, from: 0)
    })
    sg()
    sg()
    sg()
  })))
][
  画出所有孤对电子，圈出所有亲核性原子，并用共振贡献结构解释。

  #figure(skl(cycle(5, {
    sg()
    sg()
    sg()
    br(db() + fg("O"))
    sg()
    br(angle: 5, {
      db(offset: "right")
      br(sg(), angle: 7)
      sg(angle: 3)
      fg("O", lewis: (lewis-charge(charge: $-$, angle: 45deg),))
    })
    sg()
  })))
][
  圈出碱性较强的分子，并解释。

  #p(
    either(
      skl(fg("F", lewis: (lewis-charge(charge: $-$, angle: 45deg),))),
      skl(fg("Br", lewis: (lewis-charge(charge: $-$, angle: 45deg),))),
    ),
    either(
      skl({
        fg("S")
        br(sg(angle: 5) + sg(angle: 7))
        sg(angle: 1)
        sg(angle: -1)
      }),
      skl({
        fg("O")
        br(sg(angle: 5) + sg(angle: 7))
        sg(angle: 1)
        sg(angle: -1)
      }),
    ),
    either(
      skl(cycle(6, {
        sg()
        sg()
        sg()
        br({
          sg()
          fg("C", lewis: (lewis-charge(charge: $-$, angle: 45deg),))
          br(sg(), angle: -1)
          sg(angle: 3)
        })
        sg()
        sg()
        sg()
      })),
      skl(cycle(6, {
        sg()
        sg()
        sg()
        br({
          sg()
          fg("C")
          br(sg(), angle: 4)
          br(sg(), angle: -2)
          sg()
        })
        sg()
        sg()
        sg()
      })),
    ),
    either(
      skl({
        fg("H_3C")
        sg(angle: 1)
        br(angle: 3, db() + fg("O"))
        sg(angle: -1)
        fg("OH")
      }),
      skl({
        fg("H_3C")
        sg(angle: 1)
        br(angle: 3, db() + fg("O"))
        sg(angle: -1)
        fg("NH_2")
      }),
    ),
  )
][
  圈出能作为路易斯酸的分子，框出能作为路易斯碱的分子。

  #grid(
    columns: (1fr,) * 6,
    align: center + horizon,
    skl(fg("NH_3")),
    skl({
      sg(angle: 1)
      sg(angle: -1)
      sg(angle: 1)
      fg("OH")
    }),
    skl(fg("BBr_3")),
    skl({
      fg("C", lewis: (lewis-charge(charge: $+$, angle: 45deg),))
      br(angle: 7, sg())
      br(angle: -1, sg())
      sg(angle: 3)
    }),
    skl({
      br(sg(angle: 0) + fg("Cl"))
      br(sg(angle: 3) + fg("CH_3"))
      br(sg(angle: 6) + fg("H_3C"))
      sg(angle: 9)
      fg("CH_3")
    }),
    skl({
      fg("H")
      sg()
      fg("Cl")
    }),
  )
][
  命名下列烷烃。

  #p(
    figure(skl({
      br(angle: 5, {
        sg()
        br(angle: 3, sg())
        sg(angle: 7)
      })
      br(angle: 2, {
        sg()
        br(angle: 0, sg())
        sg(angle: 4)
      })
      br(angle: 8, {
        sg()
        sg(angle: 6)
        sg(angle: 8)
      })
      br({
        sg(angle: -1)
        sg(angle: 1)
        sg(angle: -1)
        br(sg(angle: 9) + sg(angle: 11))
        sg(angle: 1)
        sg(angle: -1)
        sg(angle: 1)
      })
    })),
    figure(skl(
      cycle(angle: 2, 4, {
        sg()
        br({
          sg()
          sg(angle: -2)
          br(sg(angle: 1))
          br(sg(angle: 7))
          sg(angle: -2)
        })
        sg()
        sg()
        sg()
      }),
    )),
    figure(skl(
      cycle(5, {
        sg()
        br(cfl() + fg("CH_3"))
        sg()
        br(cfl() + fg("Cl"))
        sg()
        sg()
        sg()
      }),
    )),
    figure(skl({
      let base-sep = 1 / 4
      hook("a0")
      sg(angle: -1, atom-sep: base-sep * 2)
      sg(angle: 1, atom-sep: base-sep * 4)
      br(sg(angle: 3, atom-sep: base-sep * 3) + hook("a1"))
      sg(angle: -1, atom-sep: base-sep * 4)
      sg(angle: 9.5, atom-sep: base-sep * 4)
      sg(angle: 5, atom-sep: base-sep * 4)
      sg(angle: 5.5, atom-sep: base-sep * 3)
      br({
        sg-on-top(angle: 3, atom-sep: base-sep * 4)
        sg(angle: 4, links: ("a1": sg()))
      })
      sg(angle: 7, atom-sep: base-sep * 2.5)
      sg(angle: 5, atom-sep: base-sep * 3, links: ("a0": single()))
    })),
  )
][
  画出下列分子的结构式。

  #show emph: it => it.body
  #show emph: set text(style: "italic")
  #p(
    [反式-碘-4-仲丁基环辛烷（_trans_-iodo-4-_sec_-butylcyclooctane）。],
    [6-叔丁基-4,5-二乙基-3,3-二甲基辛烷（6-_tert_-butyl-4,5-diethyl-3,3-dimethyloctane）。],
    [实际上 #(m.refn)("1.", 2) 中的名称本身是错的。你画的分子的正确的名称应该是什么？],
  )
][
  将每个碳原子、氮原子和羟基标记为 1°, 2°, 3°, 4°（伯、仲、叔、季），并把每个 1°、2°、3° 碳原子分别标记为甲基（Y）、亚甲基（E）或次甲基（I）。

  #figure(skl({
    fg("HO")
    sg(angle: -1)
    sg(angle: 1)
    cycle(6, {
      sg()
      sg()
      cycle(5, {
        sg()
        sg()
        br(sg() + fg("NH_2"))
        sg()
        sg()
        sg()
      })
      sg()
      br(sg(angle: 3))
      sg()
      sg()
      sg()
    })
  }))
][
  画出 2-甲基戊烷。

  #ps(
    [画出绕 C2–C3 键旋转时六个能量极大值与极小值所对应的纽曼投影式。],
    [计算每一个构象的能量。（假定乙基的相互作用能与甲基相同。）],
    [用这些数值作出势能对二面角的关系图。],
    [标出最稳定的构象。],
    [标出最不稳定的构象。],
    [绕 C2–C3 键旋转的能垒是多少？],
  )
][
  画出下列分子的椅式构象以及经过环翻转后的椅式构象。分别画出沿 C1–C6 轴和 C3–C4 轴观察时每种构象的纽曼投影式。哪一种构象更稳定？为什么？

  #figure(skl(cycle(6, {
    br(cdl() + fg("Br"))
    sg()
    sg()
    br(cdl() + fg("CH_3"))
    sg()
    br(cdl() + fg("CH_3"))
    sg()
    sg()
    sg()
  })))
][
  用纽曼投影式指出每个甲基与环己烷环之间所产生的邻位交叉相互作用。

  #figure(skl(cycle(6, {
    br({
      cfl()
      branch(sg(angle: 4))
      branch(sg(angle: 10))
      sg()
    })
    sg()
    br(cfl())
    sg()
    sg()
    br(cfl())
    sg()
    sg()
    sg()
  })))
][
  在胆固醇结构中的每一个手性中心旁边标上星号。

  #figure(skl({
    fg("HO")
    sg(angle: 1)
    cycle(6, {
      sg()
      sg()
      cycle(6, {
        db()
        sg()
        sg()
        cycle(6, {
          sg()
          cycle(5, {
            sg()
            sg()
            sg()
            br({
              sg()
              br(sg(relative: 60deg))
              sg(relative: -60deg)
              sg(relative: -60deg)
              sg(relative: 60deg)
              sg(relative: -60deg)
              br(sg(relative: -60deg))
              sg(relative: 60deg)
            })
            sg()
            sg()
          })
          sg()
          br(sg(angle: 3))
          sg()
          sg()
          sg()
        })
        sg()
        sg()
        sg()
      })
      sg()
      br(sg(angle: 3))
      sg()
      sg()
      sg()
    })
  }))
][
  将下列每个分子标记为手性，非手性或非手性/内消旋。并将每个立体中心标记为 R 或 S。

  #grid(
    columns: (1fr,) * 3,
    row-gutter: 2em,
    align: center + horizon,
    skl({
      fg("H_3C")
      sg()
      db(angle: 2, offset: "left")
      sg()
      br({
        sg(angle: -2)
        sg()
        fg("Br")
      })
      cfl(angle: 2)
      branch(db(angle: 4) + fg("O"))
      sg()
      fg("NH_2")
    }),
    skl({
      fg("C")
      br(angle: 6, {
        db()
        br(cfl(angle: -4) + fg("Me"))
        cdl(angle: 4)
        fg("Et")
      })
      db()
      br(sg(angle: -2) + fg("Me"))
      sg(angle: 2)
      fg("Et")
    }),
    skl({
      fg("HO")
      sg(angle: -1)
      br(db(angle: -3) + fg("O"))
      sg(angle: 1)
      br(cdl(angle: 3) + fg("OH"))
      sg(angle: -1)
      br(cdl(angle: -3) + fg("OH"))
      sg(angle: 1)
      br(db(angle: 3) + fg("O"))
      sg(angle: -1)
      fg("OH")
    }),

    skl(cycle(6, {
      br(cdl(angle: 7) + fg("HO"))
      sg()
      sg()
      br(cdl(angle: -1) + fg("OH"))
      sg()
      sg()
      br(cdl(angle: 3) + fg("Br"))
      sg()
      sg()
    })),
    skl({
      hook("a0")
      sg(angle: 1)
      hook("a1")
      sg(angle: -1.5)
      sg(angle: 6, atom-sep: 2em * 1.2)
      br({
        sg-on-top(angle: 3, atom-sep: 2em * 1.5, links: ("a1": sg()))
        sg(angle: 1)
        fg("OH")
      })
      sg(angle: 7, atom-sep: 2em * .9, links: ("a0": sg()))
    }),
    skl({
      hook("a0")
      sg(angle: -.5)
      sg(angle: .5, atom-sep: 2em * .9)
      br(sg(angle: 3, atom-sep: 2em * .75) + fg("Cl"))
      sg(angle: 8)
      br(sg(angle: 1) + fg("Cl"))
      sg(angle: 5.5)
      sg(angle: 6.5, atom-sep: 2em * .9, links: ("a0": sg()))
    }),
  )
][
  指出下列每一对分子是对映体，非对映体还是同一化合物。

  #p(
    either(
      skl({
        fg("HO")
        cdr(angle: 1)
        br(sg(angle: 4) + fg("H_3C"))
        br(cfl(angle: 9) + fg("H"))
        sg()
        br(cdl(angle: 3) + fg("H"))
        br(sg(angle: 10) + fg("CH_2OH"))
        cfl(angle: 1)
        fg("OH")
      }),
      skl({
        br(sg(angle: 3) + fg("CH_3"))
        br(sg(angle: 7) + fg("H"))
        br(sg(angle: 11) + fg("OH"))

        import cetz.draw: circle, line
        import calc: cos, sin
        let r = .5em
        circle((0, 0), radius: r, fill: white)
        for deg in (90deg, 210deg, 330deg) {
          line((0, 0), (r * cos(deg), r * sin(deg)))
        }

        br(sg(angle: 1) + fg("H"))
        br(sg(angle: 5) + fg("HO"))
        br(sg(angle: 9) + fg("CH_2OH"))
      }),
    ),
    either(
      skl({
        sg(angle: -1)
        db(angle: 1, offset: "left")
        sg(angle: -1)
        br(cfl(angle: 8) + fg("HO"))
        br(cdl(angle: 10) + fg("H"))
        sg(angle: 1)
      }),
      skl({
        sg(angle: 1)
        db(angle: -1, offset: "left")
        sg(angle: 1)
        br(cfl(angle: 2) + fg("H"))
        br(cdl(angle: 4) + fg("HO"))
        sg(angle: -1)
      }),
    ),
    either(
      skl({
        fg("Br")
        sg(angle: -1)
        br(sg(angle: 1) + fg("H"))
        br(sg(angle: 9, to: 1) + fg("H_3C"))
        sg(angle: 10, atom-sep: 1.5)
        br(sg(angle: 3) + fg("CO_2H"))
        br(sg(angle: 7) + fg("Br"))
        sg(angle: -1)
        fg("H")
      }),
      skl({
        fg("Br")
        sg(angle: -1)
        br(sg(angle: 1) + fg("H"))
        br(sg(angle: 9, to: 1) + fg("H_3C"))
        sg(angle: 10, atom-sep: 1.5)
        br(sg(angle: 3) + fg("CO_2H"))
        br(sg(angle: 7) + fg("H"))
        sg(angle: -1)
        fg("Br")
      }),
    ),
  )
]
