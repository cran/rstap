# Part of the rstap package for estimating model parameters
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
#' Datasets for rstap examples
#' 
#' Small datasets for use in \pkg{rstap} examples and vignettes.
#'
#' @name rstap-datasets 
#' @aliases homog_longitudinal_bef_data homog_longitudinal_subject_data homog_longitudinal_distance_data homog_longitudinal_time_data homog_subject_data homog_distance_data 
#'
#' @format 
#' \describe{
#' \item{\code{homog_longitudinal_bef_data}}{
#' Simulated data for the longitudinal simulation
#' \itemize{
#' \item \code{subj_ID}: The subject unique identifier
#' \item \code{measure_ID}: The measurement unique identifier
#' \item \code{bef_ID} The Built Environment Unique identifier
#' \item \code{measure_date} The date at which the subject was measured
#' \item \code{date_open}: The date at which the business opened
#' \item \code{date_close}: The date at which the business may have closed; NA if the business is still open
#' \item \code{date}: The date at which the subject first moved to the location associated with the distance and time with the built environment feature
#' \item \code{class}: The kind of built environment feature. Only one is in the simulated dataset - "Coffee Shop"
#' \item \code{dist}: The distance between the subject and BEF at the date to be associated with the measure ID
#' \item \code{time}: The time for which the subject was "exposed" to the BEF at corresponding distance 
#' }
#' }
#' 
#' Source: \href{https://biostatistics4socialimpact.github.io/rstap/articles/longitudinal-I.html}{Longitudinal Vignette}
#' 
#' \item{\code{homog_longitudinal_subject_data}}{
#' \itemize{
#' \item \code{subj_ID}: The subject unique identifier
#' \item \code{Income}: Simulated continuous covariate
#' \item \code{measure_date}: The simulated date the subject was measured
#' \item \code{ran_int}: Random intercept generated for the longitudinal I simulation
#' \item \code{y}: Continuous outcome simulated for longitudinal I simulation - meant to be akin to BMI
#' \item \code{y_bern}: Bernoulli outcome simulated
#' \item \code{sex}: Discrete 1-0 covariate simulated to be akin to sex 
#' \item \code{Coffee_Shop}: The "true" Coffee Shop Exposure covariate
#' \item \code{centered_income}: scaled and centered version of Income covariate
#' \item \code{centered_age}: scaled and centered version of Age covariate
#' }}
#'
#' Source: \\href{https://biostatistics4socialimpact.github.io/rstap/articles/longitudinal-I.html}{Longitudinal Vignette}
#'
#' \item{\code{homog_subject_data}}{
#' \itemize{
#'  \item{subj_id}{The subject unique identifier}
#'  \item{y}{Continuous simulated outcome, meant to be BMI}
#'  \item{sex}{discrete factor coded "M" for male, "F" for females}
#'  }
#' }
#'
#' Source: \href{https://biostatistics4socialimpact.github.io/rstap/articles/Introduction.html}{Introduction Vignette}
#'
#' \item{\code{homog_distance_data}}{
#' \itemize{
#'  \item \code{subj_id}: The subject unique identifier
#' \item \code{BEF} Built Environment Feature class identifier - only one included in this dataset "Fast_Food"
#' \item{Distance}: The euclidean distance between the row's subject and Fast Food restaurant locations'
#' }}
#' 
#' Source: \href{https://biostatistics4socialimpact.github.io/rstap/articles/Introduction.html}{Introduction Vignette}
#' 
#'}
NULL
