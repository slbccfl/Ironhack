require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
  describe "#check_password" do

    it "returns false for passwords shorter than 7 characters" do
      the_checker = PasswordChecker.new

      result = the_checker.check_password("nizar@example.com", "aB3.")

      expect( result ).to eq(false)
    end

    it "returns false for passwords that don't contain a letter" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "1234567,.*&") ).to eq(false)
    end

    it "returns false for passwords that don't contain a number" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "abcDEF,.*&") ).to eq(false)
    end

    it "returns false for passwords that don't contain a special character" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "abcDEF123456") ).to eq(false)
    end

    it "returns false for passwords that don't contain a special character" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "abcdef123%&^") ).to eq(false)
    end

    it "returns false for passwords that don't contain a special character" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "ABDEF123$*^") ).to eq(false)
    end

    it "returns true for passwords that meet all criteria" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_password("nizar@example.com", "Abb12*&78&bag") ).to eq(true)
    end

  end

end