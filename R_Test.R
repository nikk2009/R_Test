x.norm = rnorm(1000, mean = 100, sd=15)
x.unif = runif(1000,min=100,max=200)  

mean(x.norm)
sd(x.norm)
hist(x.norm, breaks=50)


x.sort = sort(x.norm)
sample.quantiles.norm=x.sort


r.norm=1:1000
p.norm=r.norm/(1000+1)
theoretical.quantiles.norm=qnorm(p.norm)

plot(sample.quantiles.norm,theoretical.quantiles.norm)

x.uni.sort = sort(x.unif)
sample.quantiles.unif=x.uni.sort

r.uni=100:200
p.uni= r.uni/200
theoretical.quantiles.unif=r.uni

qqplot(sample.quantiles.unif,theoretical.quantiles.unif)


qqplot(sample.quantiles.norm,theoretical.quantiles.unif)

qqplot(sample.quantiles.unif, theoretical.quantiles.norm)
