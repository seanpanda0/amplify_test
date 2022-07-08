require 'spec_helper'

describe "Example page", :type => :request do
  subject do 
    visit '/index.html'
    page
  end
  
  it { is_expected.to have_http_status(200) }
  it { is_expected.to have_content('Hello Amplify') }
  it { expect(page.body).to eq(nil) }
end
