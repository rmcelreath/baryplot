## baryplot
#R package for plotting evolutionary game dynamics within barycentric coordinates (triangle plots)

# Barycentric Coordinates
The triangular phase plots often seen in game theoretic publications (called ternary plots, de Finetti diagrams, simplex, etc.) are plots in barycentric coordinates. This coordinate system is handy, because it plots three components which sum to a constant. In game theory, the three things are three strategies, and their frequencies must sum to one.

# Baryplot Library for R
R is an open source framework for doing and vizualizing statistics. It is a full-featured programming language, complete with vector-based drawing. I have written a library of functions that allows one to easily plot vector-based barycentric game theoretic plots. Since the resulting plots are vector-based, they can be scaled, edited, and printed with no loss of quality. And since it is all wrapped in R, complex games can be programmed and passed to the plots as parameters.

# Using baryplot
Once the library is installed, you load it by typing ``library(baryplot)``. You can get online help for its functions using "library( help=baryplot )". Use "?functionname" to get help on an individual function. For example, "?bary.sim".

The commands below produce a plot for an example game, the hawk-dove-retaliator game.
```
bary.init()
bary.labels("Hawk","Retaliator","Dove")
bary.plotsim(1/3,1/3,arrow=TRUE)
bary.plotsim(1/3,1/2,arrow=TRUE)
```


# Interactive plotting
Try typing...
```
bary.init()
bary.click()
```
...then click inside the triangle.

See the help for ``bary.click`` ("?bary.click" at the R prompt) for optional parameters it can take.

# Plotting a new game
To plot a custom game, you just need to write a short function that returns payoffs for each of the three strategies. If you type "bary.game.hdr" at the R prompt, you'll see the code for the game that is plotted above:
```
function (p, q, r, v = 2, c = 3, w0 = 5)
{
w1 <- (p + q) * (v - c)/2 + r * v + w0
w2 <- p * (v - c)/2 + (1 - p) * v/2 + w0
w3 <- (1 - p) * v/2 + w0
c(w1, w2, w3)
}
```
p, q, and r are the frequencies of each strategy. The baryplot library provides those to this function. You just need to write the expressions that use those frequencies to compute fitness values w1, w2, and w3. Here's a template:
```
bary.game.mygame <- function(p, q, r, w0 = 10) {
w1 <- p * 0 + q * 1 + r * (-1) + w0
w2 <- p * (-1) + q * 0 + r * 1 + w0
w3 <- p * 1 + q * (-1) + r * 0 + w0
c(w1,w2,w3)
}
```
If you paste that code into R, you can then plot the game by adding a parameter to the simulation call. See the help for bary.sim (type ?bary.sim) for details. The simplest call will look like:
```
bary.plotsim(1/3,1/3,arrow=TRUE,thegame=bary.game.mygame)
```
