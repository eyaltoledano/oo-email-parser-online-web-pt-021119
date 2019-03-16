# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    if emails.include?(" ") && !emails.include?(",")
      array = emails.split(" ")
    elsif emails.include?(",")
      array = emails.split(",")
      array.collect {|email| email.strip}
    end
  end

end


# array = emails.split(".com")
# array.collect do |email|
#   email.strip
#   if email.include?(", ")
#     email.slice!(0..1)
#   end
# end
