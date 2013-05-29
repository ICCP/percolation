dijkstra.file <- "array.dat"

input.matrix <- as.matrix(read.table(dijkstra.file))
flipped.matrix <- t(input.matrix[nrow(input.matrix):1,])

dijkstra.colors <- c("grey","black",rainbow(max(flipped.matrix)))
#grey for untouched (-1) zones, black for removed (0) sites


par(mar=c(1,1,3,1)+.1)
image(flipped.matrix,col = dijkstra.colors, axes = FALSE)
title("Continuity Detection")

box()

#dev.copy2pdf(file="vis_dijkstra.pdf") #uncomment to generate output file
