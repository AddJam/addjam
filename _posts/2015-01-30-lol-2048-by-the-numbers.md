---
author_id: 2
title: Lol 2048 - By the numbers
---
In our last post we talked about how 2014 had been a massive year for Chris and I. One of the biggest successes in terms of eyeballs (granted not the most important metric) was without doubt our 2048 clone - [LoL 2048](http"//lol2048.com "LoL 2048 game").

##Creation
In early 2014 Chris and I (like pretty much everyone on Hacker News) were addicted to the puzzle game [2048] (http://gabrielecirulli.github.io/2048/ "original 2048") by Gabriel Cirulli. 2048 was a weekend project by Gabriel inspired by Threes and 1024. The game is super simple with the aim of combining numbered squares to reach the highest numbered tile. It was insanely addictive and most importantly open source.

Being open sourced under the MIT license lead to a tonne of clones, bots and other variants which fuelled its popularity. It was when playing one of the clones (an F1 version) I noticed an opportunity to create a League of Legends version that would support our fledgling League of Legends Newsletter.

So really LoL2048 is a clone of a clone of a clone. Not the most original, not the most innovative and for those reasons we almost didn't do it. But it was an opportunity for some fun and was little effort (30 mins in total to put V1 together and launch).

##The Launch

This was simple - we deployed to GitHub pages. We submitted to the League of Legends subreddit ([r/leagueoflegends](http://reddit.com/r/leagueoflegends)). It went huge!

![LoL 2048 visitor numbers](/images/blog/lol2048-overall.png "LoL 2048 visitor numbers")

As of today we have had over 3 million page views and 17 million games played in over 180 countries.

The amazing thing is we messed up! We rushed the game up without doing cross browser testing. With the result being the end game popup, telling users their score, was broken on good old IE. Disaster right?

Well actually, our users/players didn't care. 

There's a famous adage in software development that if you're proud of the work you release you've released it too late. This oversight strikes us as the embodiment of that.

We had noticed an opportunity and launched quickly (granted, with an embarrassing oversight) but the most important thing is we executed. We didn't hold off until 'perfection'. It had little impact on users enjoyment and it had no impact on growth.

The site reached a peak of 273,999 sessions in a day and settled into a steady 13,000-16,000 sessions per day one month after launch.

##So What Next?

We now had a site that consistently had traffic. What do we do with it?

![LoL 2048 visitor numbers](/images/blog/lol2048-consistent.png "LoL 2048 visitor numbers")

Our first port of call was to convert visitors into subscribers of our weekly newsletter service. This worked ok, we had a huge amount of signups (~2000) but unfortunately only a portion of them went though the necessary double opt-in stage (~500). 

We used this influx of 'free' traffic as a chance to optimise signups and the language used in our communications. Yeah we made some mistakes here and perhaps didn't gain as many subscribers as we should but it was invaluable experience in experimenting and iterating.

At this time we also switched from using Campaign Monitor to MailChimp as it gave more flexibility and the double opt-in began converting much better.

We also experimented with the laziest way of making money on the web - adverts. We had little success. 

A large portion of our traffic was coming from Vietnam and Hong Kong. The advertising platforms we approached didn't value our traffic and the ones that did had such awful ad's they ruined the experience.

##Summing up

In summary LoL 2048 had crazy traffic and lead to over >1800 LoL Newsletter subscribers. But perhaps most importantly it allowed us to learn, our biggest takeaways being:

* Don't be afraid of rough edges and features you're lacking - they might not be an issue.
* We reaffirmed our belief that value does not have to equate to money so look at alternative ways to gain value from projects.
* Look for opportunities and execute, a wasted hour is better than a sore 'what if'.

LoL2048 is still up and going strong. Jump on for a game and let us know your top score - [LoL2048](http://lol2048.com).

