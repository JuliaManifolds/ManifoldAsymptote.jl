# ManifoldAsymptote.jl


[![docs][docs-dev-img]][docs-dev-url] [![CI][ci-img]][ci-url] [![runic][runic-img]][runic-url] [![codecov][codecov-img]][codecov-url]

Export data on Manifolds to [Asymptote](https://asymptote.sourceforge.io) rendered figures.

This is a “spin-off” of code that originally resided in [`Manopt.jl`](https://github.com/JuliaManifolds/Manopt.jl) and even stems from its earlier predecessor earlier [MVIRT](https://github.com/kellertuer/MVIRT) and was just transcribed from Matlab code therein a few years back.
It still provides reasonable exports.

This first version serves as a legacy release that is still very close to the original code from Manopt, so that a switch is easy.

Next steps can be found in the issues.

An accompanying package is [`ManifoldMakie.jl`](https://github.com/JuliaManifolds/ManifoldMakie.jl) aiming to provide a similar functionality in [`Makie.jl`](https://github.com/JuliaManifolds/ManifoldMakie.jl/blob/main)

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://JuliaManifolds.github.io/ManifoldAsymptote.jl/dev/

[codecov-img]: https://codecov.io/gh/JuliaManifolds/ManifoldAsymptote.jl/graph/badge.svg?token=1OBDY03SUP
[codecov-url]: https://codecov.io/gh/JuliaManifolds/ManifoldAsymptote.jl

[ci-img]: https://github.com/JuliaManifolds/ManifoldAsymptote.jl/actions/workflows/ci.yml/badge.svg
[ci-url]: https://github.com/JuliaManifolds/ManifoldAsymptote.jl/actions/workflows/ci.yml

[runic-img]: https://img.shields.io/badge/code_style-%E1%9A%B1%E1%9A%A2%E1%9A%BE%E1%9B%81%E1%9A%B2-black
[runic-url]: https://github.com/fredrikekre/Runic.jl
