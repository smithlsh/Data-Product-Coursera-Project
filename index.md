---
title       : Component Analyzer 
subtitle    : A Tool for Investigating Machine Part Reliability
author      : Shep Smithline
job         : R programmer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
## Motivation

- In large engineering companies there is a big need for reliability data to be easily
  shared with multiple engineering groups

- Managers are often disconnected from engineers and 
  don't undertstand the reliability of ctitical
  parts which is needed in their decision making
  process
      
- Example: Space Shuttle Columbia disaster in 1986.
  Management estimated the probability o-ring failure to
  to be one in a million. They did not understand the way
  temperature effects the response of the o-rings.
      
- Result: Eight lives lost in an accident that could have been 
  easily prevented.
    
- The statisical analysis to estimate reliabiliy
  can be difficult: F-tests, ANOVA, Confidence Intervals....
      
- Not everyone (or at least not yet) has taken the Coursera
  Data Science classes on statistical inference, regession
  or machine learning.  
    
- Therefore, need an easy visual way to understand the data:
  <b><i>The Component Analyzer!</b></i>

---
## Statistical Analysis with R

- R lets you do the analysis and display the results 
- But R does allow non-R users (managers!!) easily see results and does not let users
  pull multiple analyses together.



```r
logitmod<-glm(cbind(damage,6-damage)~temp,family=binomial,orings)
```
![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 

---
## The Component Analyzer

- Picks up where R left off.  The Component Analyser lets non-expert users view data from multiple sources and quicky understand how enviornmental influences can affect the probability of part failure.

- Here is an image from the prototype. You can set the part type and environmental factor.

<center><IMG SRC="./assets/img/ComponentAnalyzer.png" width="500" height="400" ALT="Home"></A></center>

---
## Summary


- For data about the reliability of component parts to be useful it must be analyzed.

- For this analysis to be useful it must be shared within an organization.

- The Component Analyzer allows data regarding the reliability of part ot be viewed throughout a corporation.

- We have a working prototype demonstrating the feasibility og the product. 

- Future work will involve incorporating RCharts for dynamic images, the ability of modifying the characteristics
  of a part, redo the analysis on "the fly" and see how the part responds environmental factors.