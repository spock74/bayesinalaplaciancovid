


dataset <- child()
net     <- learn.network(dataset)
obs <- list("observed.vars" = c(1,4),
            "observed.vals" = c(2,1))

engine <- InferenceEngine(net, obs)

obs <- list("observed.vars" = c(1,4),
             "observed.vals" = c(2,1))
engine  <- InferenceEngine(net)
engine  <- belief.propagation(engine, obs)
new.net <- updated.bn(engine)
plot(new.net)
dataset <- BNDataset(data = x22, discreteness = rep('d', 5), 
                     variables = c("gender","cholesterol","gluc","smoke","active"),
                     node.sizes = c(2,3,3,2,2))
net <- learn.network(dataset)

dataset2 <- bootstrap(dataset, num.boots = 100)
plot(net2)
net2<-learn.network(dataset2)


z = dados2 %>%  select_if(is.factor)
orig_levels <- c(10, 20)
x1 <- orig_levels[dados2$RCA]
all.equal(x, x1)

class(dados2$LVH)


set.seed(123)
g1 <- randomGraph(letters[1:10], 1:4, p= 0.3)
numEdges(g1)
edgeNames(g1)
edges(g1)
edges(g1, c("a","d")) # those incident to 'a' or 'd'
