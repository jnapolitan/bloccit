require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }

  let(:my_sponsored_post) { my_topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_value) }

  it { is_expected.to belong_to(:topic) }



  describe "attributes" do
    it "responds to title" do
      expect(post).to respond_to(:title)
    end

    it "responds to body" do
      expect(post).to respond_to(:body)
    end
  end
end
