# Cairo Decision Tree

This is a Cairo implementation of a Decision transpiled from ONNX to [Orion](https://github.com/gizatechxyz/orion).

## Identified Bug

CairoVM failed to run the program (while it works with scarb `cairo-run`). I investigated and found that it was failing with the `calc_ap_changes` function of the [cairo-lang-sierra-ap-change] crate(https://crates.io/crates/cairo-lang-sierra-ap-change). In [main.rs](src/main.rs) you can find a reproduction of the error. If you run `cargo run` you'll get the following error:

```
Error: ProgramRegistryError(FunctionIdAlreadyExists(FunctionId { id: 7525693132902674641, debug_name: Some("orion::operators::tensor::math::gather::gather[expr84]") }))%
```