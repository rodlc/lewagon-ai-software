require "json"
require "rest-client"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
top_ten_posts_ids = JSON.parse(RestClient.get("https://hacker-news.firebaseio.com/v0/topstories.json",
                                              headers = {}))[0..9]
top_ten_posts_ids.each do |post_id|
  post_json_string = RestClient.get("https://hacker-news.firebaseio.com/v0/item/#{post_id}.json", headers = {})
  post_details = JSON.parse(post_json_string)
  Post.create(title: post_details["title"], url: post_details["url"], votes: post_details["score"])
end
