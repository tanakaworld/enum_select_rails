# EnumSelectRails
A form helper for the enum field of Rails model.

## Usage

```erbruby
<%= f.enum_select :your_field_name %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'enum_select_rails'
```

## i18n

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


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
