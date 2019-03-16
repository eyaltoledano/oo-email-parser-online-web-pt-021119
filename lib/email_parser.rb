# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @@all = []
  end

  def parse
    if emails.include?(" ") && !emails.include?(",")
      array = emails.split(" ")
    elsif emails.include?(",")
      array = emails.split(", ")
      array = array.collect do |email|
        if email.include?(" ")
          email = email.split(" ")
        else
          email
        end
      end
      array = array.flatten
    end

    array.each do |email|
      @@all.include?(email) ? email.clear : @@all << email
    end
    array = array.flatten.select {|email| email.include?("@")}
  end
end