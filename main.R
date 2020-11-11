# Title     : Exploratory info on Software Architectural Styles
# Objective : Software Architectural Styles
# Created by: Roman Liskunov
# Created on: 11.11.2020
library("dplyr")
library("ggplot2")
library("plotrix")

csv <- read.csv('software.csv', header = TRUE)
print(summary(csv))
frame <- tibble(csv)
data <- frame %>%
  select(
    Timestamp,
    Your.Good.Name.,
    Organization.,
    Last.Degree.,
    Job.Experience..,
    X1..How.Many.Repository.Architectural.Styles.have.you.used.for.a.particular.project.,
    X2..How.Many.Client.Server.Styles.you.have.used.for.a.particular.project.,
    X3..How.Many.Abstract.Machine.Styles.you.have.used.for.a.particular.project.,
    X4..How.Many.Object.Oriented.Styles.you.have.used.for.a.particular.project.,
    X5..How.Many.Function.Oriented.Styles.you.have.used.for.a.particular.project.,
    X6..How.Many.Event.Driven.Styles.you.have.used.for.a.particular.project.,
    X7..How.Many.Layered.Styles.you.have.used.for.a.particular.project.,
    X8..How.Many..Pipes...Filters.Architectural.Styles..have.you.used.for.a.particular.project.,
    X9..How.Many..Data.centeric.Architectural.Styles.have.you.used.for.a.particular.project.,
    X10..How.Many..Blackboard..Architectural.Styles.have.you.used.for.a.particular.project.,
    X11..How.Many..Rule.Based.Architectural.Styles.have.you.used.for.a.particular.project.,
    X12..How.Many.Publish.Subscribe.Architectural.Styles.have.you.used.for.a.particular.project.,
    X13..How.Many..Asynchronous.Messaging.Architectural.Styles.have.you.used.for.a.particular.project.,
    X14..How.Many..Plug.ins.Architectural.Styles.have.you.used.for.a.particular.project.,
    X15..How.Many..Micro.kernel.Architectural.Styles.have.you.used.for.a.particular.project.,
    X16..How.Many..Peer.to.Peer.Architectural.Styles.have.you.used.for.a.particular.project.,
    X17..How.Many..Domain.Driven.Architectural.Styles.have.you.used.for.a.particular.project.,
    X18..How.Many..Shared.Nothing.Architectural.Styles.have.you.used.for.a.particular.project.
  ) %>%
  rename(
    time = Timestamp,
    name = Your.Good.Name.,
    organization = Organization.,
    degree = Last.Degree.,
    job = Job.Experience..,
    x1 = X1..How.Many.Repository.Architectural.Styles.have.you.used.for.a.particular.project.,
    x2 = X2..How.Many.Client.Server.Styles.you.have.used.for.a.particular.project.,
    x3 = X3..How.Many.Abstract.Machine.Styles.you.have.used.for.a.particular.project.,
    x4 = X4..How.Many.Object.Oriented.Styles.you.have.used.for.a.particular.project.,
    x5 = X5..How.Many.Function.Oriented.Styles.you.have.used.for.a.particular.project.,
    x6 = X6..How.Many.Event.Driven.Styles.you.have.used.for.a.particular.project.,
    x7 = X7..How.Many.Layered.Styles.you.have.used.for.a.particular.project.,
    x8 = X8..How.Many..Pipes...Filters.Architectural.Styles..have.you.used.for.a.particular.project.,
    x9 = X9..How.Many..Data.centeric.Architectural.Styles.have.you.used.for.a.particular.project.,
    x10 = X10..How.Many..Blackboard..Architectural.Styles.have.you.used.for.a.particular.project.,
    x11 = X11..How.Many..Rule.Based.Architectural.Styles.have.you.used.for.a.particular.project.,
    x12 = X12..How.Many.Publish.Subscribe.Architectural.Styles.have.you.used.for.a.particular.project.,
    x13 = X13..How.Many..Asynchronous.Messaging.Architectural.Styles.have.you.used.for.a.particular.project.,
    x14 = X14..How.Many..Plug.ins.Architectural.Styles.have.you.used.for.a.particular.project.,
    x15 = X15..How.Many..Micro.kernel.Architectural.Styles.have.you.used.for.a.particular.project.,
    x16 = X16..How.Many..Peer.to.Peer.Architectural.Styles.have.you.used.for.a.particular.project.,
    x17 = X17..How.Many..Domain.Driven.Architectural.Styles.have.you.used.for.a.particular.project.,
    x18 = X18..How.Many..Shared.Nothing.Architectural.Styles.have.you.used.for.a.particular.project.
  )

#j <- data %>% count(job)
#print(j)
#pie3D(
#  j$n,
#  labels = j$job,
#  explode = 0.1,
#  main = "Pie Chart of Job.Experience"
#)

#d <- data %>% count(degree)
#print(d)
#pie3D(
#  d$n,
#  labels = d$degree,
#  explode = 0.1,
#  main = "Pie Chart of Last.Degree"
#)

#o <- data %>% count(organization)
#g <- ggplot(o)
#print(g)