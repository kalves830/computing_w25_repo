autopower = function(V, m, A, cdrag=0.3, crolling=0.015,pair=1.2,g=9.8) {
  
  if (m < 0) return("mass cannot be less than 0")
  if (A < 0) return("area cannot be less than 0")
  
  P = crolling*m*g*V + 1/2*A*pair*cdrag*V**3
  return(P)
  
}



#calculating power
autopower(10, 1, 1)
autopower(10, -1, -1, cdrag=0.2)
autopower(10, 1, -1, cdrag=0.2, crolling=0.01)
