library(tercen)
library(dplyr)
library(tidyr)

options("tercen.workflowId" = "d330322c43363eb4f9b27738ef0042b9")
options("tercen.stepId"     = "1ae42627-e9ce-4d9f-9797-8700adfd7718")

ctx <- tercenCtx()

sep <- "_"
if(!is.null(ctx$op.value('sep'))) sep <- ctx$op.value("sep")

ctx %>% 
  rselect() %>%
  unite(concatenated, sep = sep) %>%
  mutate(.ri = seq_len(nrow(.)) - 1L) %>%
  ctx$addNamespace() %>%
  ctx$save()

