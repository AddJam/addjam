module Jekyll
  class SimilarPosts < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @amount = text.to_i
    end

    def render(context)
      post = context['page']
      other_posts = context['site']['posts'].select do |other_post|
        other_post['title'] != post['title']
      end

      sorted_posts = other_posts.sort do |other_post|
        (other_post['tags'] - post['tags']).count
      end

      closest = sorted_posts[0..(@amount - 1)]
      html = '<ul>'
      closest.each do |related_post|
        html << '<li>'
        html << "<a href=#{related_post['url']}>#{related_post['title']}</a>"
        html << "<p>#{related_post['excerpt']}</p>"
        html << '</li>'
      end
      html << '</ul>'
    end
  end
end

Liquid::Template.register_tag('related_posts', Jekyll::SimilarPosts)
