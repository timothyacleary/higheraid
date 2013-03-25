require 'spec_helper'

describe "Static Pages" do
	subject { page }

	shared_examples_for "all static pages" do
		it { should have_selector('h1', text: heading) }
	end

	describe "Home page" do
		before { visit root_path }
		let(:heading)    { 'Higher Aid' }

	    it_should_behave_like "all static pages"
    	it { should_not have_selector 'title', text: '| Home' }
    end

    describe "About page" do
    	before { visit about_path }
    	let(:heading) { "About Us" }
    	it_should_behave_like "all static pages"
    end

    describe "Terms of Service page" do
    	before { visit tos_path }
    	let(:heading) { "Terms of Service" }
    	it_should_behave_like "all static pages"
    end


end
