class User < ApplicationRecord
  enum gender: {
      female: 0,
      male: 1,
      other: 99
  }
end
