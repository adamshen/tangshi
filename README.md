# Tangshi

唐诗的数据库，ORM用的AD

## Installation

    $ gem install tangshi

## Usage

两个表poets和poetries

```ruby
Tangshi::Poet.column_names
=> ["id", "name", "created_at", "updated_at"]

Tangshi::Poetry.column_names
=> ["id", "poet_id", "content", "title", "created_at", "updated_at"]

Tangshi::Poet.find_by_name("李商隐").poetries.length
=> 555

Tangshi::Poetry.search_sentence("心有灵犀")
=> [#<Tangshi::Poetry:0x007fa431f1cb38
  id: 25788,
  poet_id: 166,
  content: "昨夜星辰昨夜风，画楼西畔桂堂东。身无彩凤双飞翼，心有灵犀一点通。隔座送钩春酒暖，分曹射覆蜡灯红。嗟余听鼓应官去，走马兰台类断蓬。闻道阊门萼绿华，昔年相望抵天涯。岂知一夜秦楼客，偷看吴王苑内花。",
  title: "无题二首",
  created_at: 2014-06-02 12:22:16 UTC,
  updated_at: 2014-06-02 12:22:16 UTC>]
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

