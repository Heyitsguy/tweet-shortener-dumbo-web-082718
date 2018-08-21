# Write your code here.
def dictionary
  dictionary = {
    "hello"=> "hi",
    "to"=>"2",
    "two"=>"2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  substituted = tweet_arr.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word = word
    end
  end
  substituted.join(" ")
end

def bulk_tweet_shortener(arr_of_tweets)
  arr_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    return "#{word_substituter(tweet)[0..136]}..."
  else
    return selective_tweet_shortener(tweet)
  end
end
