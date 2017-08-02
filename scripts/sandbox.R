
## Read variation data
train <- read.csv("../data/original/training_variants", stringsAsFactors = T)
train$Class <- as.factor(train$Class)
test <- read.csv("../data/original/test_variants", stringsAsFactors = T)

## Read text data
train_txt_dump <- data.frame(text = read_lines('../data/original/training_text', skip = 1))
train_txt <- train_txt_dump %>%
  separate(text, into = c("ID", "txt"), sep = "\\|\\|")
train_txt <- train_txt %>%
  mutate(ID = as.integer(ID))

test_txt_dump <- data.frame(text = read_lines('../data/original/test_text', skip = 1))
test_txt <- test_txt_dump %>%
  separate(text, into = c("ID", "txt"), sep = "\\|\\|")
test_txt <- test_txt %>%
  mutate(ID = as.integer(ID))


patterns <- c("grow*", "prolif*", "multiplication",
              "spread", "progress*", 
              "tumor", "tumour", "carcinoma", "melanoma", 
              "lymphoma", "myeloma", "neoplasm", "metastas*", 
              "*fibrom*", "terat*", "*adenoma", "meningioma")

pattern <- "tumor growth"





