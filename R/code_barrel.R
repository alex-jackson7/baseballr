#' Code whether a batted ball is a "barrel" based on a Statcast dataset from baseballsavant.mlb.com
#'
#' This function allows you to code a batted ball as a barrel as defined by the Statcast research team using data as provided by baseballsavant.mlb.com.
#' @param df A dataframe generated by baseballsavant.mlb.com that must include the following variables: hit_angle and hit_speed.
#' @keywords MLB, sabermetrics, Statcast
#' @export
#' @examples
#' \dontrun{code_barrel(df)}

code_barrel <- function(df) {
  df$barrel <- with(df, ifelse(hit_angle <= 50 & hit_speed >= 98 & hit_speed * 1.5 - hit_angle >= 117 & hit_speed + hit_angle >= 124, 1, 0))
  df
}
