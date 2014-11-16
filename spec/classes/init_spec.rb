require 'spec_helper'

describe 'dnsmasq' do

  let :default_params do
    {
      :tld         => 'dev',
      :bind        => '127.0.0.1',
      :enable      => true,
      :configdir   => "/etc/dnsmasq.d",
      :servicename => "dnsmasq",
      :template    => "dnsmasq/dnsmasq.conf.erb",
      :packagename => "dnsmasq"
    }
  end

  it { should contain_class('dnsmasq::install') }
  it { should contain_class('dnsmasq::config') }
  it { should contain_class('dnsmasq::service') }
  it { should contain_class('dnsmasq') }

  context 'install dnsmasq' do
    it { should contain_package('dnsmasq') }
  end

  context 'configure file' do
    it { should contain_file('/etc/dnsmasq.d/dev.conf').with(
                  :mode  => '0644',
                  :owner => 'root',
                  :group => 'root',
    )}
  end

  context 'have dnsmasq service' do
    it { should contain_service('dnsmasq').with(
                  :ensure => true,
    )}

  end
end
