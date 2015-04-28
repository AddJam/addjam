---
author_id: 1
title: Adding Related Posts to a Jekyll Blog
description: How to add a related posts section to your Jekyll blog using an open source Jekyll tag plugin.
tags:
  - Jekyll
  - Development
  - Tips
---

Pretty much every blog I visit has related posts shown with each of their blog
posts. We've been iterating on the Add Jam website and blog since it was launched
towards the end of last year, and a few weeks ago we decided showing a few
related posts below each blog post would be nice. The value is obvious; when a
reader (you!) reach the end of one of our posts, hopefully you'll read some
more!

The Add Jam blog is [open source](https://github.com/AddJam/addjam) and built
using Jekyll. To implement related posts, we added tags to each of our blog
posts to group them by topic and created a new [liquid tag](http://jekyllrb.com/docs/plugins/#tags)
with a Jekyll plugin.

## Add the tags

## Add the plugin

## Use the plugin

I put the plugin up on in a gist that you can [find here](https://gist.github.com/chrissloey/58d9d17a1807745118f5).

To get started, add the plugin to your jekyll project by copying the ruby code
from the gist into a file in the `_plugins` directory (we put it in
`_plugins/related_posts.rb`). From there, all you need to do is add some tags to
your blog posts so that we can group them,
