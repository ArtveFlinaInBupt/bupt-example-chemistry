#let spacing = (
  first-line-indent: 2em,
  line-leading: 1em,
  par-spacing: 1em,
  list-spacing: 1em,
  list-indent: 1em,
  terms-hanging-indent: 2em,
  problem-spacing: 1.25em,
  problem-line-leading: 1.25em,
  problem-par-spacing: 1.25em,
  table-inset: (x: 1em, y: .5em),
  margin: (
    left: 20mm,
    right: 20mm,
    top: 20mm,
    bottom: 20mm,
  ),
)

#let font = (
  en: "STIX Two Text",
  serif: ((name: "STIX Two Text", covers: "latin-in-cjk"), "Source Han Serif SC"),
  sans: ("Source Han Sans SC",),
  mono: ((name: "Fira Code", covers: "latin-in-cjk"),),
  math: ("STIX Two Math",),
)

#let color = (
  tint: (
    light: rgb("#FAF8FF"),
    _50: rgb("#F5F3FF"),
    _100: rgb("#EDE9FE"),
    _200: rgb("#DDD6FE"),
    _300: rgb("#C4B5FD"),
    _400: rgb("#A78BFA"),
    _500: rgb("#8B5CF6"),
    _600: rgb("#7C3AED"),
    _700: rgb("#6D28D9"),
    _800: rgb("#5B21B6"),
    _900: rgb("#4C1D95"),
    _950: rgb("#2E1065"),
    dark: rgb("#1E0A46"),
  ),
  error: red,
  warning: yellow,
  comment: gray,
  time: green,
  tag: blue,
  todo: yellow,
)

#let footer-content = align(horizon, text(size: .75em)[大邮化学集 – 大邮集集模板使用例])

#let config = (
  spacing: spacing,
  font: font,
  color: color,
  footer-content: footer-content,
)
