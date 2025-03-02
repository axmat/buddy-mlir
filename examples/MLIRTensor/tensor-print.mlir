func @main() {
  %init = arith.constant dense<[1.0, 2.0, 3.0]> : tensor<3xf32>
  %tensor_unranked = tensor.cast %init : tensor<3xf32> to tensor<*xf32>
  call @print_memref_f32(%tensor_unranked) : (tensor<*xf32>) -> ()

  return
}

func private @print_memref_f32(%ptr : tensor<*xf32>)
