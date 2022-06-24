# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'return the title for a post' do
    post = build(:post, title: 'My Post', body: 'My Body')

    expect(post.title).to eq('My Post')
  end
end
