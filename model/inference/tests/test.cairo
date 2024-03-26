use orion::operators::tensor::{Tensor, TensorTrait};
use orion::operators::tensor::{
    U32Tensor, I32Tensor, I8Tensor, FP8x23Tensor, FP16x16Tensor, FP32x32Tensor, BoolTensor
};
use orion::numbers::{FP8x23, FP16x16, FP32x32};
use orion::operators::matrix::{MutMatrix, MutMatrixImpl};
use orion::operators::nn::{NNTrait, FP16x16NN};
use orion::operators::ml;

use inference::main;

#[test]
fn testing() {
    let x = Tensor {
        shape: array![1, 4].span(),
        data: array![
            FP16x16 { mag: 458752, sign: false },
            FP16x16 { mag: 209715, sign: false },
            FP16x16 { mag: 308019, sign: false },
            FP16x16 { mag: 91750, sign: false },
        ]
            .span()
    };

    main(x);
}
