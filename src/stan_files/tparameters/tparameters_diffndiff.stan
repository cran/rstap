  vector[K] delta;
  vector[Q] beta; 
  matrix[N,Q] X; 
  vector[q] b;
  vector[len_theta_L] theta_L;

  //construction of X, 
  {
      int cnt_s = 1;
      int cnt_t = 1;
      int cnt_id = 1;
      vector[N] mean_vec;
      for(q_ix in 1:Q){
          for(n in 1:N){
            if(stap_code[q_ix] == 0)
                X[n,q_ix] = assign_exposure(log_ar[q_ix], weight_mat[q_ix,1], u_s, dists_crs[cnt_s], theta_s[cnt_s], q_ix, n);
            else if(stap_code[q_ix] == 1)
                X[n,q_ix] = assign_exposure(log_ar[q_ix], weight_mat[q_ix,2], u_t, times_crs[cnt_t], theta_t[cnt_t], q_ix, n);
            else
                X[n,q_ix] = assign_st_exposure(log_ar[q_ix], weight_mat[q_ix,1], weight_mat[q_ix,2], u_s, u_t, dists_crs[cnt_s], times_crs[cnt_t], theta_s[cnt_s], theta_t[cnt_t], q_ix, n);
            if(n % 3 == 0){
               cnt_id = 1; 
               mean_vec[n - 2] =  mean(X[n-2:n,1]);
               mean_vec[n-1] = mean_vec[n-2];
               mean_vec[n] = mean_vec[n-2];
               }
            cnt_id = cnt_id + 1;
            if( diff_code[q_ix] == 1 )
                X[n,q_ix] = X[n,q_ix] - X[n,diff_one[q_ix]];
            }

            if( (stap_code[q_ix] == 0 || stap_code[q_ix] == 2) && diff_one_ups[q_ix] != 1)
                cnt_s = cnt_s + 1;
            if( (stap_code[q_ix] == 1 || stap_code[q_ix] == 2) && diff_one_ups[q_ix] != 1)
                cnt_t = cnt_t + 1;
      }
      X[,1] = X[,1] - mean_vec;
  }

  if(prior_dist_for_stap == 0) beta = z_beta;
  else if (prior_dist_for_stap == 1) beta = z_beta .* prior_scale_for_stap + prior_mean_for_stap;
  else if (prior_dist_for_stap == 2) for (q_ix in 1:Q) {
    beta[q_ix] = CFt(z_beta[q_ix], prior_df_for_stap[q_ix]) * prior_scale_for_stap[q_ix] + prior_mean_for_stap[q_ix];
  }
  
