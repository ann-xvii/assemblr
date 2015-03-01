require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "account_activation" do
    
    user = FactoryGirl.build(:user, name: "Roger Moore", email: "to@example.org", password: "password")
    let(:mail) { UserMailer.account_activation(user) }
    user.activation_token = User.new_token


    it "renders the headers" do
      expect(mail.subject).to eq("Account activation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["noreply@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "password_reset" do
    let(:mail) { UserMailer.password_reset }

    it "renders the headers" do
      expect(mail.subject).to eq("Password reset")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["noreply@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
