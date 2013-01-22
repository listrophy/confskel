require 'spec_helper'

describe Sponsor do
  it 'should not allow empty names' do
    subject.name = ''
    subject.valid?.should be_false
  end

  it 'should not allow nil names' do
    subject.valid?.should be_false
  end

  it 'names should be present' do
    subject.name = 'Super Corp (tm)'
    subject.valid?.should be_true
  end

  it 'should not allow you to save sponsors without a name' do
    subject.save.should be_false
  end

  it 'should allow you to save sponsors with just a name' do
    subject.name = 'Super Corp (tm)'
    subject.save.should be_true
  end
end
