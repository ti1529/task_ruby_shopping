require_relative "ownable"


class Wallet
  include Ownable

  attr_reader :balance

  def initialize(owner)
    self.owner = owner
    @balance = 0
  end

  def deposit(amount)
    @balance += amount.to_i
  end

  def withdraw(amount)
    return unless @balance >= amount
    @balance -= amount.to_i
    amount
  end

  # お金の支払と受取
  def payment(amount)
    @balance -= amount
  end

  def receive(amount)
    @balance += amount
  end

end