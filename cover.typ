#{
  import "/facade.typ": *

  show: page.with(
    numbering: none,
    paper: "a4",
    margin: 0pt,
    fill: color.tint._950,
    header: none,
    footer: none,
  )
  set text(
    top-edge: "bounds",
    bottom-edge: "bounds",
    font: font.serif,
    fill: color.tint._100,
    weight: "medium",
  )

  set place(bottom + center)
  place(dy: -24cm, text(size: 2cm, tracking: .15em)[大邮化学集])
  // place(dy: -9cm, text(size: 30em, weight: "extralight")[⌬])
  place(dy: -11cm, {
    let stroke-args = (
      stroke: (paint: color.tint._100, thickness: 0.25em),
      gap: 0.75em,
      offset-coeff: .95,
    )
    let benzene = skeletize(
      config: (atom-sep: 10em),
      cycle(6, ((single(..stroke-args), double(..stroke-args)) * 3).join()),
    )

    benzene
  })
  place(dy: -4cm, text(size: 1cm)[— 大邮集集模板使用例 —])
}
