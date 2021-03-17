# frozen_string_literal: true

# create your sample spec in the root/spec dir
require 'spec_helper'
require_relative '../string_mix'

# s1 = "A aaaa bb c"

# s2 = "& aaa bbb c d"

# s1 has 4 'a', 2 'b', 1 'c'

# s2 has 3 'a', 3 'b', 1 'c', 1 'd'

describe 'string_mix' do
  let(:s1) { String.new 'A aaaa bb c' }
  let(:s2) { String.new '& aaa bbb c d' }

  context 'calling mix the correct string is returned' do
    it 'returns the maximum from the strings' do
      a = mix(s1, s2)
      result = '1:aaaa/2:bbb'

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'Are they here'
      s2 = 'yes, they are here'

      a = mix(s1, s2)
      result = '2:eeeee/2:yy/=:hh/=:rr'

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'looping is fun but dangerous'
      s2 = 'less dangerous than coding'

      a = mix(s1, s2)
      result = '1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg'

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'In many languages'
      s2 = " there's a pair of functions"

      a = mix(s1, s2)
      result = '1:aaa/1:nnn/1:gg/2:ee/2:ff/2:ii/2:oo/2:rr/2:ss/2:tt'

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'Lords of the Fallen'
      s2 = 'gamekult'

      a = mix(s1, s2)
      result = '1:ee/1:ll/1:oo'

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'codewars'
      s2 = 'codewars'

      a = mix(s1, s2)
      result = ''

      expect(a).to eq(result)
    end

    it 'works with this sample' do
      s1 = 'A generation must confront the looming '
      s2 = 'codewarrs'

      a = mix(s1, s2)
      result = '1:nnnnn/1:ooooo/1:tttt/1:eee/1:gg/1:ii/1:mm/=:rr'

      expect(a).to eq(result)
    end
  end
end
