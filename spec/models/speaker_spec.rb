require 'spec_helper'

describe Speaker do
  it 'should not allow empty names' do
    subject.name = ''
    subject.valid?.should be_false
  end

  it 'should not allow nil names' do
    subject.valid?.should be_false
  end

  it 'names should be present' do
    subject.name = 'Bob'
    subject.valid?.should be_true
  end

  it 'should not allow you to save speakers without names' do
    subject.save.should be_false
  end

  it 'should allow you to save speakers who have names' do
    subject.name = 'Bob'
    subject.save.should be_true
  end
end
