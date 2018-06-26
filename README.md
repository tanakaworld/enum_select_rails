# EnumSelectRails

[![Gem Version](https://badge.fury.io/rb/enum_select_rails.svg)](https://badge.fury.io/rb/enum_select_rails)

A form helper for the enum field of Rails model.

You can easily generate select tag which has enum field options.

![image](https://user-images.githubusercontent.com/3489430/38072782-eebbea40-3362-11e8-911b-18f56f8b9ed4.png)


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'enum_select_rails'
```

## Usage

```ruby
class User
  enum gender: {    
    female: 2,
    male: 1,
    other: 9
  }
end
```

```erbruby
<%= f.enum_select :gender %>
```

## i18n

Automatically apply i18n text into options text.

This feature is depends on [enum_help](https://github.com/zmbacker/enum_help).

![image](https://user-images.githubusercontent.com/3489430/38072879-65777b04-3363-11e8-9654-5cf1f64cee17.png)

```ruby
# Gemfile
gem 'enum_help'
```

```ruby
# application.rb
# i18n
config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
```

```yaml
# config/locales/models/user/ja.yml
ja:
  activerecord:
    models:
      user: ユーザー
    attributes:
      user:
        gender: 性別
  enums:
    user:
      gender:
        female: 女性
        male: 男性
        other: その他
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
