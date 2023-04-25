#' calcul de la décennie d'une année 
#'
#' @param annee A number.
#' @return A number.
#' @examples
#' decennie_a_partir_annee(1984)
#' decennie_a_partir_annee(2019)
decennie_a_partir_annee <- function(annee) {
  return(annee - annee %% 10)
}



#' Calcul de stratistiques agrégées : moyenne, écart type ou variance
#'
#' @param vecteur A vector of numerical element
#' @param stat : moyenne, écart-type, sd
#'
#' @return A number.
#' @examples
#' stat_dispersion(c(12,45,98),"moyenne")
#' stat_dispersion(c(12,45,98),"sd")
stat_dispersion <- function(vecteur, stat = "moyenne", ...) {
  if (stat == "moyenne") {
    x <- mean(vecteur, na.rm = TRUE, ...)
  } else if (stat == "ecart-type" || stat == "sd") {
    x <- sd(vecteur, na.rm = TRUE, ...)
  } else if (stat == "variance") {
    x <- var(vecteur, na.rm = TRUE, ...)
  }
  return(x)
}

#test unitaire 
fonction_de_stat_agregee(rnorm(10))
fonction_de_stat_agregee(rnorm(10), "ecart-type")
fonction_de_stat_agregee(rnorm(10), "variance")
