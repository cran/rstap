  vector<lower=0>[prior_dist_for_stap == 7 ? sum(num_normals) : Q] z_beta; 
  vector<lower=0>[Q] mix_stap[prior_dist_for_stap == 5 || prior_dist_for_stap == 6];
  real<lower=0,upper=max_distance> theta_s[Q_s+Q_st - Q_sdiff - Q_stdiff ]; //scale for spatial weight function
  real<lower=0,upper=max_time> theta_t[Q_t+Q_st - Q_tdiff - Q_stdiff];//scale for temporal weight function
