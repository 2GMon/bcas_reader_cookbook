require 'serverspec'

set :backend, :exec

%w!pcscd libpcsclite-dev!.each do |pkg|
  describe package(pkg) do
    it {should be_installed}
  end
end

describe process('pcscd') do
  it {should be_running}
end

describe file('/etc/libccid_Info.plist') do
  it {should be_file}
  it {should be_mode 644}
  it {should be_owned_by 'root'}
  it {should be_grouped_into 'root'}
end
