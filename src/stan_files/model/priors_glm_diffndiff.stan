  // Log-priors for stap_coefficients 
       if (prior_dist_for_stap == 1) target += normal_lpdf(z_beta | 0, 1);
  else if (prior_dist_for_stap == 2) target += normal_lpdf(z_beta | 0, 1); // Student t via Cornish-Fisher expansion


  // Log-priors for theta-scale
  {
  int cnt_s = 1;
  int cnt_t = 1;
  for(q_ix in 1:Q){
    if(stap_code[q_ix] == 0 || stap_code[q_ix] == 2){
      if(prior_dist_for_theta_s[cnt_s] == 1)
        target += normal_lpdf(theta_s[cnt_s]|prior_mean_for_theta_s[cnt_s], prior_scale_for_theta_s[cnt_s]);
      else if(prior_dist_for_theta_s[cnt_s] == 8)
        target += lognormal_lpdf(theta_s[cnt_s]|prior_mean_for_theta_s[cnt_s], prior_scale_for_theta_s[cnt_s]);
      cnt_s = cnt_s + 1;
    }
    if(stap_code[q_ix] == 1 || stap_code[q_ix] == 2){
        if(prior_dist_for_theta_t[cnt_t] == 1)
            target += normal_lpdf(theta_t[cnt_t]|prior_mean_for_theta_t[cnt_t], prior_scale_for_theta_t[cnt_t]);
        if(prior_dist_for_theta_t[cnt_t] == 8)
            target += lognormal_lpdf(theta_t[cnt_t]|prior_mean_for_theta_t[cnt_t], prior_scale_for_theta_t[cnt_t]);
        cnt_t = cnt_t + 1;
        }
      }
  }
