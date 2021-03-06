require 'spec_helper'

describe Vhx::Site do

  before{
    Vhx.setup({api_key: 'testapikey'})
  }

  describe 'api operations' do

    describe '::find' do
      it 'raises error' do
        expect{Vhx::Site.find(123)}.to raise_error(NoMethodError)
      end
    end 

    describe '::retrieve' do
      it 'raises error' do
        expect{Vhx::Site.retrieve(123)}.to raise_error(NoMethodError)
      end
    end

    describe '::list' do
      it 'raises error' do
        expect{Vhx::Site.list()}.to raise_error(NoMethodError)
      end
    end

    describe '::all' do
      it 'raises errors' do
        expect{Vhx::Site.all()}.to raise_error(NoMethodError)
      end
    end

    describe '::create' do
      it 'raises error' do
        expect{Vhx::Site.create()}.to raise_error(NoMethodError)
      end
    end

    describe '#udpate' do
      it 'raises error' do
        expect{Vhx::Site.new({}).update}.to raise_error(NoMethodError)
      end
    end

    describe '::delete' do
      it 'raises error' do
        expect{Vhx::Site.delete(1)}.to raise_error(NoMethodError)
      end
    end
  end
end
