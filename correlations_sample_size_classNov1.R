#####figuring what sample size you need to get CI less than magnitiude of correlation
###interval approach
###approach for small, med, large (dont know r is, can plug in any small, med, large value)
psych::r.con(r=.16,n=250)
#[1] 0.03666074 0.27853783 - can see CI here, subtract from one another (28-4)
# need N of 600: > psych::r.con(r=.16,n=650) [1] 0.0841332 0.2340225

###if you are doing a f/u study, you know r=.25 do the same thing (diff is you know the r from first study)
#we don't know underlying true correlation (rho) - could be .38 and we bounced low, or point .12 and we bounced high
#if either of these are the true correlation, wouldn't expect to get .25 again
#psych::r.con(r=.25,n=200)
#[1] 0.1152567 0.3757094 - so then we put 12 ans try different sample sizes
#psych::r.con(r=.12,n=500)
#[1] 0.03265302 0.20552784
#need sample size of 1000: psych::r.con(r=.12,n=1000) -> [1] 0.05844168 0.18064920
#this isn't even to say we know the truth, it's to not get a ridiculous CI

##safeguardpower analysis
library(pwr)
pwr.r.test(r=.16, power=.80,sig.level=.001)
##changing sig level
#to change sig level for this ?pwr.r.test
pwr.r.test(r=.16, power=.80,sig.level=.01)
#referring back to .25 example: see below: 
pwr.r.test(r=.12, power=.80,sig.level=.05)

