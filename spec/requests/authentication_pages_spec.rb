require 'spec_helper'

describe "Authentication Pages" do
	subject { page }

	let(:user) { FactoryGirl.create(:user) }
	before { visit root_path }

	describe "when not signed in" do
		describe "home page" do
			it { should have_link('Sign in', href: sign_in_path) }
			it { should have_selector('btn btn-large btn-primary', text: 'Sign up') }
		end
	end

	describe "when signed in" do
		describe "home page" do
			it { should have_link('Sign out', href: sign_out_path) }
			it { should have_content(user.name) }
		end
	end

end
