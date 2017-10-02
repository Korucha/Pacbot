require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token:"MzYzNjk0MTgxNTE4MTQ3NTg0.DLE8HQ.K4xWl0iumkaBu6ZEUnjLB2euGnU", client_id:363694181518147584,prefix:'/'

bot.command :pac do |event|
event.respond 'https://vignette4.wikia.nocookie.net/rezero/images/9/97/Pack_Anime.png/revision/latest?cb=20160408205412'
end

bot.command :sabaru do |event|
event.respond 'http://kemono-friendsch.com/wp-content/uploads/2017/02/5V4Btww-512x512.jpg'
end

bot.command :atumori do |event|
event.respond 'http://image.itmedia.co.jp/nl/articles/1709/05/ikko_housuteatumori002.jpg'
end

bot.message(with_text: "こんにちはkorucha") do |event|
event.respond "ども#{event.user.name}さん！こるちゃです!"
end

bot.command :pachelp do |event|
event.respond 'pacでパックの画像を表示します。sabaruでサーバルちゃんの画像を表示します atumoriで熱盛します こんにちはkoruchaと打つとbotが挨拶します'
end

bot.command(:check,help_available:'起動してるかチェックします') do |event|
event.respond 'Ok'
end

bot.command(:exit) do |event|
bot.send_message(event.channel.id, '終了します')
end

bot.run
