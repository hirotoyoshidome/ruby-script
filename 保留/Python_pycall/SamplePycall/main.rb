#! C:\Ruby25-x64\bin\ruby.exe
ENV['PYTHON'] = "C:\Python\Python37-32\python.exe"
# encoding: utf-8

require 'pycall/import'
include PyCall::Import

# できていない
sys = PyCall.import_module('sys')

