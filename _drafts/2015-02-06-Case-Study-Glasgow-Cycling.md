---
author_id: 2
title: Case Study - Glasgow Cycling
---
Through 2014 Add Jam have delivered mobile applications for the Glasgow City Council Future City Project. Specifically in the Active Travel workstream. We developed two products - Glasgow Walking (which we will expand on in a future post) and Glagow Cycling.

##Project Aims

The overall aim with the Active Travel Demonstrator in the Future City Project is to develop ways a city can be less reliant on carbon based transit. So ideally by improving the amount of running, cycling and walking.

This is an important area for the public sector several reasons such as health, environment and the commuters bug bear congestion.

For cycling Glasgow currently uses a study carried out over two days in September. The study is conducted the old fashioned and labour intensive way with counters and clipboards. This is then used as a basis for planning infrastructure and tracking cycle adoption in the city. Two days. In autumn. With clipboards.

We can surely do better with software right?

With the power of modern smartphones we have a plethora of options for tracking our activity and performance from the likes of Strava, MapMyRide and others but the problem with these services is the data is provided to a private company (usually to sell it directly or to advertisers). So the opportunity here is to make a useful tracker that exposes this data to folks that can really effect change in your area - the council. After all, they do provide the infrastructure.

##A 30% Product

At Add Jam we believe in the Lean Startup methodology and mindset. We aim to get feedback and data from what we call a 30% product. Why? Well would you not rather have wasted 4 weeks making a 30% product than 4 months on a 100% product?

With this ethos, a stack of assumptions, and some initial requirements gathering, we created an API (using Ruby on Rails) and an iOS app to track, search and find routes in 4 weeks. Sure, V1 certainly wasn't pretty, but it was functional.

![Glasgow Cycling V1](/images/blog/cycling-app-v1.png "Glasgow Cycling V1")

It was an invaluable step. It allowed us to learn - live from users and stakeholders in the council. We found issues with the data we were gathering, we found bottle necks in performance, we streamlined the route tracking UI and we improved the product immeasurably.

##Iterating to a better place

Add Jam worked closely with the Active Travel lead, Mark Irwin, to identify our user groups the app should be engaging. Mark was fast to identify the typical end users of similar products as middle aged men, head to toe in lycra, tearing down the road in an attempt to become king of the mountain. These cyclists and the 'type' of cycling they undertake is a drop in the ocean compared to the potential volume of cycling across a city's population - commuters, families, couriers, tourists etc etc.

With this in mind the interface for Glasgow Cycling had to be clean simple and streamlined. Using the working prototype and both qualitative and quantitative (analytics are essential) feedback we came to the final V2 design.

![Glasgow Cycling V2](/images/blog/cycling-app-v2.png "Glasgow Cycling V2")

Starting a route? Easy. Big clear button in the middle and you start recording instantly. The profile page is clean, giving a general overview of 'you' and the ability to navigate. Our favourite aspect of this view is the pull-down weather 'Easter Egg' - an essential for Glasgows predictably unpredictable weather.

##It's Not Big Brother

Privacy is a major concern and hot topic. As we move into the internet of things and start to produce more and more data we need to be mindful of what we are sharing. Location more so than most data.

With this in mind we extended the simplicity of our UI to our privacy settings. We're dealing with people's identity and location information so we chose to have one privacy setting and we turned it up to 11. We anonymise all users, trim routes by a random amount, create fuzzy zones at the start and end and in the public API we never associate a username with a route.

##Taking it to Android

For the project we delivered native mobile applications, with iOS as our lead platform for Glasgow Cycling. This meant we had to produce a native client on Android.

With the iOS app now on the App Store and being used daily we were getting data and information on usage. The learning from the iOS development journey was used to form a solid foundation for the Android app.

![Glasgow Cycling Android](/images/blog/cycling-app-android.png "Glasgow Cycling Android")

We went back to square one to ensure we could cater the experience for the platform. Subtle things like the button shapes and positions or the utilisation of the Action Bar overview menu for some functions that are upfront in the iOS UI.

Developing the Android version subsequent to the iOS version allowed us to rectify problems on the iOS app, especially in regards to our onboarding flow as many users didn't understad [the _why_](http://rookieoven.com/2012/10/08/people-dont-buy-what-you-do-they-buy-why-you-do-it/) when signing up. Android V1 was therefore leaps ahead of our iOS V1.

##So What Data Is There?

At the highest level the app can serve as a count of active cyclist in the city. Keeping a tally of active daily users and the distance they cover. But the API has a lot more depth to it.

The product stores routes as a series of points. The route points are recorded on a location update from the phone and are comprised of speed, time, altitude, accuracy and of course latitude and longitude. This is, as we mentioned, trimmed at the start and end for privacy and accessible from our public API.

This gives start and end areas and the time of day. From this we can see the flow of traffic in and out of the city centre. We also store weather data so we can see trends in how the weather effects usage. All really powerful data.

##Turning Data Into Information

Data is great but what we really need to do is turn it into information - i.e. data with meaning. Our first step in this was to expose API endpoints so that developers can access the data and build additional services off the data. This fits with the ethos of the Open Glasgow Project we were working alongside.

Our next call was to develop a simple dashboard (very much a V1 just now). This visualises simple city statistics and means the city (the city being citizens, businesses and the council) can easily consume the information on how the city is performing.

![Glasgow Cycling Dashboard](/images/blog/cycling-dashboard.png "Glasgow Cycling Dashboard")

With our relationship with Glasgow City Council being on going we hope to improve the dashboard and find new useful ways to expose the data. For example we think a CSV export would empower Excel users to cut and slice the data.

##Reception

As of writing the reception of Glasgow Cycling has been positive. Using the iOS and Android apps the citizens of Glasgow recorded 1.4% of the distance to the moon in a little over 2 winter months. That's the equivalent of cycling to Budapest and back on bike.

Much better and more useable data than some clipboards.
