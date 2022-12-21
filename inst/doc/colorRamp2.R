## ---- fig.width = 6-----------------------------------------------------------
library(colorRamp2)

col_fun = colorRamp2(c(0, 0.5, 1), c("blue", "white", "red"))
col_fun(seq(0, 1, length = 20))


plot(NULL, xlim = c(0, 1), ylim = c(0, 1))
x = seq(0, 1, length = 20)
y = rep(0.5, 20)
points(x, y, pch = 16, col = col_fun(x), cex = 2)

## -----------------------------------------------------------------------------
x1 = runif(10)
col = col_fun(x1)
x2 = col2value(col, col_fun = col_fun)
x1
x2

## -----------------------------------------------------------------------------
sessionInfo()

