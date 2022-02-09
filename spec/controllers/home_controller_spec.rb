require 'rails_helper'

RSpec.describe HomeController do
  describe '#index' do
    subject { get :index }

    it 'must render template index' do
      expect(subject).to render_template(:index)
    end
  end
end
