library(magrittr)

is_pangram_scalar <- function(input) {

  input_letters <- gsub("[^A-Za-z]", "", input) %>% 
                    tolower() %>% 
                    strsplit("") %>% 
                    unlist() %>% 
                    unique() %>% 
                    sort()

  identical(input_letters, letters)

}

is_pangram <- Vectorize(is_pangram_scalar)
