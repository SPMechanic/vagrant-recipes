Vagrant and Virtual Box Proxy Settings
================================================

Proxy Settings for Vagrant
---------------------------
Vagrant will connect to the internet for few operations namely

 * To download boxes
 * To install Vagrant Plugins

If you are behind a corporate firewall and need to explicitly add proxy settings to your application, then follow the instructions below to add proxy settings to Vagant

Vagrant is based on Ruby, hence for providing Vagrant with information to work in a proxy environment, simply add following environment variable

 * `HTTP_PROXY=http://<user>:<password>@<host>:<port>` or 
 * `HTTP_PROXY=http://<host>:<port>`

e.g HTTP_PROXY = http://np-proxy5:80

Proxy Settings for Virtual Machines
------------------------------------
Similar to Vagrant, even your Virtual Machines will need to connect to Internet for various things. Therefore you need to provide proxy setting to the Virtual Boxes so that they also work behind Corporate firewalls.

### Step 1 Install Vagrant proxyconf plugin

`$>vagrant plugin install vagrant-proxyconf`

### Step 2 Add global Vagant configuration


To configure all possible software on all Vagrant VMs, add the following to _$HOME/.vagrant.d/Vagrantfile_ (or to a project specific _Vagrantfile_):

```ruby
Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://192.168.0.2:3128/"
    config.proxy.https    = "http://192.168.0.2:3128/"
    config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  end
  # ... other stuff
end
```



References
-----------
 * https://github.com/tmatilai/vagrant-proxyconf
 * 



