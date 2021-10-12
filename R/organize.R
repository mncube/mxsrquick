
#' Save MixSIAR output in new directory
#'
#' This function makes it easier to organize output from multiple MixSIAR models
#' by saving the output in a named subdirectory of output's original directory
#'
#' @param new_dir name of directory to store output from a MixSIAR model
#' @param isospace_filename Name of the isospace plot without the "_1_2" which
#'                          MixSIAR appends
#' @param model_filename Name of the model filename
#'
#' @return A subdirectory with the output from a MixSIAR model
#' @export
#'
#' @examples
#' mixsiar_save(new_dir = "main_model",
#'              isospace_filename = "isospace",
#'              model_filename = "mixsiar_model.txt")
mixsiar_save <- function(new_dir = "mixing_model_output",
                         isospace_filename = "isospace",
                         model_filename = "mixsiar_model.txt"){

  #List files with auto-generated names
  file_list <- list("prior_plot.pdf", "pairs_plot.pdf",
                    "summary_statistics.txt", "diagnostics.txt",
                    "diagnostics.pdf")

  #Append model_filename to file_list
  file_list <- append(file_list, model_filename)

  #Get posterior_density_diet files and append to file_list
  posterior_list <- list.files(path=".",
                               pattern=utils::glob2rx("posterior_density_diet_*"),
                               full.names=FALSE)
  file_list <- append(file_list, posterior_list)

  #Get isospace_filename files and append to file_list
  isospace_filename <- paste0(isospace_filename, "_1_2.png")
  isospace_list <- list.files(path=".",
                              pattern=utils::glob2rx(isospace_filename),
                              full.names=FALSE)
  file_list <- append(file_list, isospace_list)

  #Create new directory
  dir.create(new_dir)

  #Get paths to new directories
  new_loc <- paste0(new_dir, "/")
  new_paths <- purrr::map2(new_loc, file_list, paste0)

  #Move files to new_dir
  purrr::map2(file_list, new_paths, file.copy)

  #Remove files from original directory
  purrr::map(file_list, file.remove)
}
