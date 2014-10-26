---
title       : Quick Default Risk Calculator
subtitle    : Simple estimation tool for Loan Officers
author      : HA 
job         : created for Developing Data Products, Johns Hopkins Data Science Specialization
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Project Objectives

1. Create shinyApp and check into the git repo:
https://github.com/helenalt/DataScienceWork/tree/master/ShinyApps/DefaultRiskCalc

2. Host a new app at shinyapps.io: 
   https://helenalt.shinyapps.io/DefaultRiskCalc/

3. Create a slidify presentation with info and instructions about the app: This is it!


--- .class #id 

## Quick Default Risk Calculator

Imagine:  You are a loan officer of a small institution

Situation: You are approving a new loan, and are looking at application.

Complication: You're worried about customer's default risk and would like a quick way to check your intuition
  
Resolution:  You can now use a very simple Default Risk Calculator and make more informed decisions!

--- .class #id 

## How Does It Work?

This app is a prototype of what can be built out as a robust and autmated system with multiple rich data sets. For now, this is how it works:

You Need:

1. Customer's outstanding card balance
2. Customer's annual income

You have both in your application!

You Do:

1. Enter both numnbers in a Quck Default Risk Calculator
2. Hit submit button

You Get:

Customer's estimated risk level based on a combination of your inputs 

--- .class #id

## What's the secret?

1. This app utilizes historical card default data from Default R package/data set.

2. It compares your entered amounts with historical mean values for card balance and income

3. Simple logic works based on the following concepts:

* Balance smaller, Income larger: Low Risk
* Balance smaller, Income Smaller: Medium Risk
* Balance larger, Income smaller: High Risk
* Balance larger, Income larger: Medium Risk

--- .class #id 

## What's Next?

Of course this is just a start. I'd like to enhance this algorithm in multiple ways in the future:

1. Include additional inputs and historical data sets, such as state, zip, other accounts, and additional analytics
2. Automate data capture and streamline application process
3. Create insightful visualizations and what-if analysis tools

But for Now:

1. Run it: https://helenalt.shinyapps.io/DefaultRiskCalc/
2. Use it
3. Provide your feedback
4. Enjoy the rest of this awesome class!!!
