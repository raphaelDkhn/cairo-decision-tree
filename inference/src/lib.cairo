use orion::operators::tensor::{Tensor, TensorTrait};
use orion::operators::tensor::{
    U32Tensor, I32Tensor, I8Tensor, FP8x23Tensor, FP16x16Tensor, FP32x32Tensor, BoolTensor
};
use orion::numbers::{FP8x23, FP16x16, FP32x32};
use orion::operators::matrix::{MutMatrix, MutMatrixImpl};
use orion::operators::nn::{NNTrait, FP16x16NN};
use orion::operators::ml;

use node__operators_0_root_nodes::get_node__operators_0_root_nodes;
use node__operators_0_root_biases::get_node__operators_0_root_biases;
use node__operators_0_tree_indices::get_node__operators_0_tree_indices;
use node__operators_0_leaf_nodes::get_node__operators_0_leaf_nodes;
use node__operators_0_nodes_0::get_node__operators_0_nodes_0;
use node__operators_0_nodes_1::get_node__operators_0_nodes_1;
use node__operators_0_nodes_2::get_node__operators_0_nodes_2;
use node__operators_0_nodes_3::get_node__operators_0_nodes_3;
use node__operators_0_nodes_4::get_node__operators_0_nodes_4;
use node__operators_0_biases_0::get_node__operators_0_biases_0;
use node__operators_0_biases_1::get_node__operators_0_biases_1;
use node__operators_0_biases_2::get_node__operators_0_biases_2;
use node__operators_0_biases_3::get_node__operators_0_biases_3;
use node__operators_0_biases_4::get_node__operators_0_biases_4;

use _operators_0_constant_value::get__operators_0_constant_value;
use _operators_0_constant_1_value::get__operators_0_constant_1_value;
use _operators_0_constant_2_value::get__operators_0_constant_2_value;
use _operators_0_constant_3_value::get__operators_0_constant_3_value;
use _operators_0_constant_4_value::get__operators_0_constant_4_value;
use _operators_0_constant_5_value::get__operators_0_constant_5_value;
use _operators_0_constant_6_value::get__operators_0_constant_6_value;
use _operators_0_constant_7_value::get__operators_0_constant_7_value;
use _operators_0_constant_8_value::get__operators_0_constant_8_value;
use _operators_0_constant_9_value::get__operators_0_constant_9_value;
use _operators_0_constant_10_value::get__operators_0_constant_10_value;
use _operators_0_constant_11_value::get__operators_0_constant_11_value;
use _operators_0_constant_12_value::get__operators_0_constant_12_value;
use _operators_0_constant_13_value::get__operators_0_constant_13_value;
use _operators_0_constant_14_value::get__operators_0_constant_14_value;
use _operators_0_constant_15_value::get__operators_0_constant_15_value;
use _operators_0_constant_16_value::get__operators_0_constant_16_value;
use constant_69_value::get_constant_69_value;

fn main(node_input: Tensor<FP16x16>) -> (Tensor<i32>, Tensor<FP16x16>,) {
    let node__operators_0_gather_output_0 = TensorTrait::gather(
        @node_input, get_node__operators_0_root_nodes(), Option::Some(1)
    );
    let node__operators_0_lessorequal_output_0 = TensorTrait::less_equal(
        @node__operators_0_gather_output_0, @get_node__operators_0_root_biases()
    );
    let node__operators_0_cast_output_0 = node__operators_0_lessorequal_output_0;
    let node__operators_0_add_output_0 = TensorTrait::add(
        node__operators_0_cast_output_0, get_node__operators_0_tree_indices()
    );
    let node__operators_0_constant_output_0 = get__operators_0_constant_value();
    let node__operators_0_reshape_output_0 = TensorTrait::reshape(
        @node__operators_0_add_output_0, node__operators_0_constant_output_0.data, false
    );
    let node__operators_0_gather_1_output_0 = TensorTrait::gather(
        @get_node__operators_0_nodes_0(), node__operators_0_reshape_output_0, Option::Some(0)
    );
    let node__operators_0_constant_1_output_0 = get__operators_0_constant_1_value();
    let node__operators_0_reshape_1_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_1_output_0, node__operators_0_constant_1_output_0.data, false
    );
    let node__operators_0_gatherelements_output_0 = TensorTrait::gather_elements(
        @node_input, node__operators_0_reshape_1_output_0, Option::Some(1)
    );
    let node__operators_0_constant_2_output_0 = get__operators_0_constant_2_value();
    let node__operators_0_reshape_2_output_0 = TensorTrait::reshape(
        @node__operators_0_gatherelements_output_0,
        node__operators_0_constant_2_output_0.data,
        false
    );
    let node__operators_0_constant_3_output_0 = get__operators_0_constant_3_value();
    let node__operators_0_mul_output_0 = TensorTrait::mul(
        node__operators_0_reshape_output_0, node__operators_0_constant_3_output_0
    );
    let node__operators_0_gather_2_output_0 = TensorTrait::gather(
        @get_node__operators_0_biases_0(), node__operators_0_reshape_output_0, Option::Some(0)
    );
    let node__operators_0_lessorequal_1_output_0 = TensorTrait::less_equal(
        @node__operators_0_reshape_2_output_0, @node__operators_0_gather_2_output_0
    );
    let node__operators_0_cast_1_output_0 = node__operators_0_lessorequal_1_output_0;
    let node__operators_0_add_1_output_0 = TensorTrait::add(
        node__operators_0_mul_output_0, node__operators_0_cast_1_output_0
    );
    let node__operators_0_gather_3_output_0 = TensorTrait::gather(
        @get_node__operators_0_nodes_1(), node__operators_0_add_1_output_0, Option::Some(0)
    );
    let node__operators_0_constant_4_output_0 = get__operators_0_constant_4_value();
    let node__operators_0_reshape_3_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_3_output_0, node__operators_0_constant_4_output_0.data, false
    );
    let node__operators_0_gatherelements_1_output_0 = TensorTrait::gather_elements(
        @node_input, node__operators_0_reshape_3_output_0, Option::Some(1)
    );
    let node__operators_0_constant_5_output_0 = get__operators_0_constant_5_value();
    let node__operators_0_reshape_4_output_0 = TensorTrait::reshape(
        @node__operators_0_gatherelements_1_output_0,
        node__operators_0_constant_5_output_0.data,
        false
    );
    let node__operators_0_constant_6_output_0 = get__operators_0_constant_6_value();
    let node__operators_0_mul_1_output_0 = TensorTrait::mul(
        node__operators_0_add_1_output_0, node__operators_0_constant_6_output_0
    );
    let node__operators_0_gather_4_output_0 = TensorTrait::gather(
        @get_node__operators_0_biases_1(), node__operators_0_add_1_output_0, Option::Some(0)
    );
    let node__operators_0_lessorequal_2_output_0 = TensorTrait::less_equal(
        @node__operators_0_reshape_4_output_0, @node__operators_0_gather_4_output_0
    );
    let node__operators_0_cast_2_output_0 = node__operators_0_lessorequal_2_output_0;
    let node__operators_0_add_2_output_0 = TensorTrait::add(
        node__operators_0_mul_1_output_0, node__operators_0_cast_2_output_0
    );
    let node__operators_0_gather_5_output_0 = TensorTrait::gather(
        @get_node__operators_0_nodes_2(), node__operators_0_add_2_output_0, Option::Some(0)
    );
    let node__operators_0_constant_7_output_0 = get__operators_0_constant_7_value();
    let node__operators_0_reshape_5_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_5_output_0, node__operators_0_constant_7_output_0.data, false
    );
    let node__operators_0_gatherelements_2_output_0 = TensorTrait::gather_elements(
        @node_input, node__operators_0_reshape_5_output_0, Option::Some(1)
    );
    let node__operators_0_constant_8_output_0 = get__operators_0_constant_8_value();
    let node__operators_0_reshape_6_output_0 = TensorTrait::reshape(
        @node__operators_0_gatherelements_2_output_0,
        node__operators_0_constant_8_output_0.data,
        false
    );
    let node__operators_0_constant_9_output_0 = get__operators_0_constant_9_value();
    let node__operators_0_mul_2_output_0 = TensorTrait::mul(
        node__operators_0_add_2_output_0, node__operators_0_constant_9_output_0
    );
    let node__operators_0_gather_6_output_0 = TensorTrait::gather(
        @get_node__operators_0_biases_2(), node__operators_0_add_2_output_0, Option::Some(0)
    );
    let node__operators_0_lessorequal_3_output_0 = TensorTrait::less_equal(
        @node__operators_0_reshape_6_output_0, @node__operators_0_gather_6_output_0
    );
    let node__operators_0_cast_3_output_0 = node__operators_0_lessorequal_3_output_0;
    let node__operators_0_add_3_output_0 = TensorTrait::add(
        node__operators_0_mul_2_output_0, node__operators_0_cast_3_output_0
    );
    let node__operators_0_gather_7_output_0 = TensorTrait::gather(
        @get_node__operators_0_nodes_3(), node__operators_0_add_3_output_0, Option::Some(0)
    );
    let node__operators_0_constant_10_output_0 = get__operators_0_constant_10_value();
    let node__operators_0_reshape_7_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_7_output_0, node__operators_0_constant_10_output_0.data, false
    );
    let node__operators_0_gatherelements_3_output_0 = TensorTrait::gather_elements(
        @node_input, node__operators_0_reshape_7_output_0, Option::Some(1)
    );
    let node__operators_0_constant_11_output_0 = get__operators_0_constant_11_value();
    let node__operators_0_reshape_8_output_0 = TensorTrait::reshape(
        @node__operators_0_gatherelements_3_output_0,
        node__operators_0_constant_11_output_0.data,
        false
    );
    let node__operators_0_constant_12_output_0 = get__operators_0_constant_12_value();
    let node__operators_0_mul_3_output_0 = TensorTrait::mul(
        node__operators_0_add_3_output_0, node__operators_0_constant_12_output_0
    );
    let node__operators_0_gather_8_output_0 = TensorTrait::gather(
        @get_node__operators_0_biases_3(), node__operators_0_add_3_output_0, Option::Some(0)
    );
    let node__operators_0_lessorequal_4_output_0 = TensorTrait::less_equal(
        @node__operators_0_reshape_8_output_0, @node__operators_0_gather_8_output_0
    );
    let node__operators_0_cast_4_output_0 = node__operators_0_lessorequal_4_output_0;
    let node__operators_0_add_4_output_0 = TensorTrait::add(
        node__operators_0_mul_3_output_0, node__operators_0_cast_4_output_0
    );
    let node__operators_0_gather_9_output_0 = TensorTrait::gather(
        @get_node__operators_0_nodes_4(), node__operators_0_add_4_output_0, Option::Some(0)
    );
    let node__operators_0_constant_13_output_0 = get__operators_0_constant_13_value();
    let node__operators_0_reshape_9_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_9_output_0, node__operators_0_constant_13_output_0.data, false
    );
    let node__operators_0_gatherelements_4_output_0 = TensorTrait::gather_elements(
        @node_input, node__operators_0_reshape_9_output_0, Option::Some(1)
    );
    let node__operators_0_constant_14_output_0 = get__operators_0_constant_14_value();
    let node__operators_0_reshape_10_output_0 = TensorTrait::reshape(
        @node__operators_0_gatherelements_4_output_0,
        node__operators_0_constant_14_output_0.data,
        false
    );
    let node__operators_0_constant_15_output_0 = get__operators_0_constant_15_value();
    let node__operators_0_mul_4_output_0 = TensorTrait::mul(
        node__operators_0_add_4_output_0, node__operators_0_constant_15_output_0
    );
    let node__operators_0_gather_10_output_0 = TensorTrait::gather(
        @get_node__operators_0_biases_4(), node__operators_0_add_4_output_0, Option::Some(0)
    );
    let node__operators_0_lessorequal_5_output_0 = TensorTrait::less_equal(
        @node__operators_0_reshape_10_output_0, @node__operators_0_gather_10_output_0
    );
    let node__operators_0_cast_5_output_0 = node__operators_0_lessorequal_5_output_0;
    let node__operators_0_add_5_output_0 = TensorTrait::add(
        node__operators_0_mul_4_output_0, node__operators_0_cast_5_output_0
    );
    let node__operators_0_gather_11_output_0 = TensorTrait::gather(
        @get_node__operators_0_leaf_nodes(), node__operators_0_add_5_output_0, Option::Some(0)
    );
    let node__operators_0_constant_16_output_0 = get__operators_0_constant_16_value();
    let node__operators_0_reshape_11_output_0 = TensorTrait::reshape(
        @node__operators_0_gather_11_output_0, node__operators_0_constant_16_output_0.data, false
    );
    let node_onnx_reducesum_84 = get_constant_69_value();
    let node_onnx_argmax_85 = TensorTrait::reduce_sum(
        @node__operators_0_reshape_11_output_0,
        Option::Some(node_onnx_reducesum_84.data),
        Option::Some(false),
        Option::None(())
    );
    let node_output = TensorTrait::argmax(
        @node_onnx_argmax_85, 1, Option::Some(false), Option::Some(false)
    );

    (node_output, node_onnx_argmax_85,)
}
