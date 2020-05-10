class User < ApplicationRecord
  attr_accessor :name, :age

  def initialize(name:,age:)
    self.name = name
    self.age = age
  end

  def disp_name
    # "#{self.name}さん"
    if self.age > 19
      return "#{self.name}さん"
    elsif self.age > 10
      return "#{self.name}くん"
    elsif self.age > 0
      return "#{self.name}ちゃん"
    else
      return "不正な値です"
    end
  end
end
