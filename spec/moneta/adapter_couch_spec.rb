# Generated by generate-specs
require 'helper'

describe_moneta "adapter_couch" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'adapter_couch.log'), 'a')
  end

  def new_store
    Moneta::Adapters::Couch.new(:db => 'adapter_couch')
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_create'
  it_should_behave_like 'not_increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
end
