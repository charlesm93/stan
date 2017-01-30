data {
  int<lower = 1> nt;
  int<lower = 1> cmt[nt];
  int evid[nt];
  int addl[nt];
  int ss[nt];
  real amt[nt];
  real time[nt];
  real rate[nt];
  real ii[nt];
}

transformed data {
  real theta_data[3, nt];
  real biovar_data[2, nt];
  real tlag_data[2, nt];
  matrix[nt, 2] x_data;

  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_data);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_data);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_data);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_data[0]);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_data[0]);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_data);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_data[0]);
  x_data = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_data[0]);
}

parameters {
  real y_p;
}

transformed parameters {
  real theta_parm[3, nt];
  real biovar_parm[2, nt];
  real tlag_parm[2, nt];
  matrix[nt, 2] x_parm;

  // expression types for last three arguments:
  // parm, parm, parm
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm, tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm, tlag_parm[0]);

  // expression types for last three arguments:
  // data, parm, parm
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_parm, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_parm, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_parm[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_parm[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_parm, tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_parm[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_parm[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_parm, tlag_parm[0]);

  // expression types for last three arguments:
  // data, data, parm
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_parm[0]);

  // expression types for last three arguments:
  // data, data, data
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data[0], biovar_data, tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_data, biovar_data, tlag_data[0]);

  
  // expression types for last three arguments:
  // parm, data, parm
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data, tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data, tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data[0], tlag_parm);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data[0], tlag_parm[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data, tlag_parm[0]);

  // expression types for last three arguments:
  // parm, data, data
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_data, tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_data, tlag_data[0]);

  // expression types for last three arguments:
  // parm, parm, data
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm, tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm[0], biovar_parm, tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm[0], tlag_data);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm[0], tlag_data[0]);
  x_parm = PKModelOneCpt(time, amt, rate, ii, evid, cmt, addl, ss,
                        theta_parm, biovar_parm, tlag_data[0]);
  
}

model {
	y_p ~ normal(0,1);
}
