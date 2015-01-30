---
author_id: 1
title: Lol 2048: By the numbers
---
In our last post we talked about how 2014 had been a massive year for us. The biggest success in terms of eyeballs (granted not the most important metric) was without doubt was our 2048 clone - [LoL 2048](http"//lol2048.com "LoL 2048 game").

##Creation
In early 2014 Chris and I (like many folk who frequent Hacker News) were addicted to the puzzle game [2048] (http://gabrielecirulli.github.io/2048/ "original 2048") by Gabriel Cirulli. 2048, which was inspired by Threes and 1024, has the aim of combining numbered squares to reach the  highest numbered tile. It was insanely addictive and most importantly open source.

Being open sourced under the MIT license lead to a tonne of clones, bots and other variants. It was when playing one of the clones (an F1 version) I noticed an opportunity to create a League of Legends version that would support our fledgling League of Legends Newsletter.

##Deploy

We deployed to GitHub pages. We submitted to Reddit (r/leagueoflegends). It went huge. 

![LoL 2048 visitor numbers](/images/blog/lol2048-overall.jpg "LoL 2048 visitor numbers")

As of today we have had over 3 million page views, 17 million games played and in over 180 countries.

The amazing thing is we messed up! We rushed the game up without doing cross browser testing and the end game popup, telling users their score, was broken on IE but users didn't care. There's a famous phrase in software development that if you're proud of the work you release you've released it too late and this seemed to us to be an embodiment of that.

We saw an opportunity and launched quickly (with some embarrassing oversights) but the most important thing is we executed. We didn't hold off until 'perfection'. Our users didn't notice and it had little impact on growth.

The site reached a peak of 273,999 sessions and settled into a steady 13,000-16,000 sessions one month after deploy.

##What Next?

We now had a site that consistently had traffic. What do we do with it?

![LoL 2048 visitor numbers](/images/blog/lol2048-consistent.jpg "LoL 2048 visitor numbers")

Our first port of call was to convert visitors into subscribers to our Newsletter. This worked ok, we had a huge amount of signups (~2000) but unfortunately only a portion of the went though the necessary double opt-in stage (~500). 

We used this as a chance to optimise signups and the language used in our communications. We also switched from using Campaign Monitor to MailChimp at this time as it gave more flexibility and the double opt-in began converting much better.

We also tried the most basic of approached. Sticking adverts onto it. We had little success. 

A large portion of our traffic was coming from Vietnam and Hong Kong. The advertising platforms we approached didn't value our traffic and the ones that did had such awful ad's they ruined the experience.


##Result

So in summary LoL 2048 had:

* sessions
* games played
* time on site
* device types
* countries
* browsers types

This helped us to:

* 1800 LoL Newsletter subscribers
* visits to LoL Newsletter page
* link karma for Chris

##Lessons

So TLDR:

* Most importantly don't be afraid of rough edges, they might not be an issue.
* We reaffirmed that value does not have to equate to money so look at alternative ways to gain value from projects.
* Look for opportunities and execute, a wasted hour is better than a sore 'what if'.

