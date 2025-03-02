func @corr_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %centerX : index, %centerY : index, %constantValue : f32)
{
  dip.corr_2d %inputImage, %kernel, %outputImage, %centerX, %centerY, %constantValue {boundary_option = "CONSTANT_PADDING"} : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, f32
  return
}

func @corr_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %centerX : index, %centerY : index, %constantValue : f32)
{
  dip.corr_2d %inputImage, %kernel, %outputImage, %centerX, %centerY , %constantValue {boundary_option = "REPLICATE_PADDING"} : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, f32
  return
}
