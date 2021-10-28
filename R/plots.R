
#' Create Biplot
#'
#' Create a biplot for group means and standard deviations with an option to
#' shift by trophic discrimination factor means and standard deviations.
#' Function is built for plotting source data
#'
#'
#'
#' @param data  A data frame
#' @param group Groups of sources to be plotted
#' @param var1  X-axis isotope
#' @param var2  Y-axis isotope
#' @param tdf1  trophic discrimination factor for var 1 entered as
#'              tdf1 = c(mean, sd)
#' @param tdf2  trophic discrimination factor for var 1 entered as
#'              tdf1 = c(mean, sd)
#' @param x_lab X-axis label
#' @param y_lab Y-axis label
#'
#' @return Plot
#' @export
#'
#' @examples
#' iso_data <- data.frame(iso_a = c(2.2, 4.4, 3.3, 5.1, 3.4),
#' iso_b = c(1.6, 3.9, 5.2, 4.2, 3.7),
#' prot = c("bug", "bug", "bug", "plant", "plant"))
#' source_biplot(iso_data, prot, iso_a, iso_b, tdf1 = c(2, 1), tdf2 = c(1, 1),
#'              x_lab = "A", y_lab = "B")
source_biplot <- function(data, group, var1, var2,
                          tdf1 = c(mean = 0, sd = 0),
                          tdf2 = c(mean = 0, sd = 0),
                          x_lab = "",
                          y_lab = ""){
  #Store tdf values
  tdf1_mean <- tdf1[[1]]
  tdf1_sd   <- tdf1[[2]]
  tdf2_mean <- tdf2[[1]]
  tdf2_sd   <- tdf2[[2]]

  data_summary <- data %>%
    group_by({{group}}) %>%
    mutate(var1_mean = mean({{var1}}),
           var2_mean = mean({{var2}}),
           var1_sd = sd({{var1}}),
           var2_sd = sd({{var2}})) %>%
    ungroup() %>%
    distinct({{group}}, .keep_all = TRUE) %>%
    select({{group}}, var1_mean, var1_sd, var2_mean, var2_sd) %>%
    mutate(var1_mean = var1_mean + tdf1_mean,
           var2_mean = var2_mean + tdf2_mean,
           var1_sd = var1_sd + tdf1_sd,
           var2_sd = var2_sd + tdf2_sd)

   ggplot(data = data_summary, aes(x=var1_mean, y=var2_mean, colour={{group}})) +
     geom_point() +
     geom_linerange(aes(ymin=var2_mean-var2_sd, ymax=var2_mean+var2_sd)) +
     geom_linerange(aes(xmin=var1_mean-var1_sd, xmax=var1_mean+var1_sd)) +
     ylab(y_lab) +
     xlab(x_lab)
    #return(data_summary)
}
