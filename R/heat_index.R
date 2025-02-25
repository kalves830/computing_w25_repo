##Writing Functions Exercise
##Computing W25
##Kyle Alves

#####################

# Define variables
#' @param T_air Air temperature in degrees Celsius
#' @param RH Relative humidity in percent
#' @return Heat index in degrees Celsius
#'
#'
#'
#'

# Define the function
heat_index <- function(T_air, RH) {
  # Ensure inputs are within valid ranges
  invalid_temp <- T_air < -100 | T_air > 100 # Degrees Celsius range
  
  invalid_humid <- RH < 0 | RH > 100 #Relative Humidity range
  
  if (any(invalid_temp)) {
    stop("Temperature must be between -100 and 100 degrees Celsius")
  }
  
  if (any(invalid_humid)) {
    stop("Relative humidity must be between 0 and 100 percent")
  }
  
  # Vectorized heat index calculation
  HI <- T_air + 0.5 * (0.81 * T_air + 46.3 + 0.1 * RH)
  
  return(HI)
}

# Test the function
heat_index(30, 50)
heat_index(35, 110) # Relative humidity is too high
heat_index(-1000, -1000) # Temperature and relative humidity are too low


