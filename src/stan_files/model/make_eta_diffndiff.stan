
  vector[N] eta;  // linear predictor
  eta =   X * beta ;
  if (has_offset == 1) eta = eta + offset;
