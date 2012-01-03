
# Cervix: case - control study with errors in covariates 
#  http://www.openbugs.info/Examples/Cervix.html

# from the JAGS readme in classic-bugs/vol2/cervix:

## ``The epidemiology in this example is a little out of date. It is now known
##   that Human Papillomavirus (HPV) is a necessary cause of cervical cancer.
##   Although HSV-2 may have a role as a cofactor in some cases, trying to
##   model its effect on cervical cancer without taking into account HPV is
##   rather pointless.'' 


# status: (not work)
#  1. there is discrete parameters 
#  2. If we just the complete data --- not discrete parameters needed, not work
#     


data {
  int(0,) Nc; 
  int(0,) Ni; 
  int xc[Nc];
  int wc[Nc];
  int dc[Nc];
  int wi[Ni];
  int di[Ni];
} 

parameters {
  double(0, 1) phi[2, 2];
  double(0, 1) q; 
  double beta0C; 
  double beta; 
  # note that xi is discrete parameters with support {0, 1} 
  //int xi[Ni]; 
} 

model {
  for (n in 1:Nc) {
    xc[n] ~ bernoulli(q); 
    dc[n] ~ bernoulli(inv_logit(beta0C + beta * xc[n])); 
    wc[n] ~ bernoulli(phi[xc[n] + 1, dc[n] + 1]); 
  } 
/*
  for (n in 1:Ni) {
    xi[n] ~ bernoulli(q); 
    di[n] ~ bernoulli(inv_logit(beta0C + beta * xi[n])); 
    wi[n] ~ bernoulli(phi[xi[n] + 1, di[n] + 1]); 
  } 
*/
  q ~ uniform(0, 1); 
  beta0C ~ normal(0, 320); 
  beta ~ normal(0, 320); 
  for (i in 1:2) for (j in 1:2) 
    phi[i, j] ~ uniform(0, 1); 
} 


