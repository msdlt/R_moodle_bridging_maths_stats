## find out how many attempts have been made within a Course

## "bridging_maths_attempts.txt" derived from "data_query_on_moodle.sql" run from the server
## It is possible to connect directly to the database to perform this query. The firewall
## blocks this locally so I've run it separately

library(ggplot2)
attempts <- read.csv("bridging_maths_attempts.txt",sep="\t", na.strings = "NULL")
attempts$timestart <- as.Date.POSIXct(attempts$timestart)
attempts$attempt <- as.factor(attempts$attempt)
print(
  table(attempts$state)
)
p <- ggplot(attempts, aes(timestart, fill = attempt)) + geom_histogram() + scale_fill_brewer(palette = "Set1")
print(p)
ggsave(filename = "bridging_maths_attempts.png")
print(p  + facet_wrap(~ name, ncol = 4))
ggsave(filename = "bridging_maths_attempts_by_quiz.png")