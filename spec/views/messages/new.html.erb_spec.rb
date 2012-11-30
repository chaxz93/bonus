require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :subject => "MyString",
      :body => "MyString",
      :sender_id => 1,
      :receiver_id => 1
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_subject", :name => "message[subject]"
      assert_select "input#message_body", :name => "message[body]"
      assert_select "input#message_sender_id", :name => "message[sender_id]"
      assert_select "input#message_receiver_id", :name => "message[receiver_id]"
    end
  end
end
