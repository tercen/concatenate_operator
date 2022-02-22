library(tercen)
library(dplyr)
library(tidyr)

ctx <- tercenCtx()

sep <- "_"
if(!is.null(ctx$op.value('sep'))) sep <- ctx$op.value("sep")

ctx %>% 
  rselect() %>%
  unite(concatenated, sep = sep) %>%
  mutate(.ri = seq_len(nrow(.)) - 1L) %>%
  ctx$addNamespace() %>%
  ctx$save()

