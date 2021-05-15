require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'FluentTesterResources'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']

  s.source       = { :git => "https://github.com/microsoft/fluentui-react-native.git", :tag => "#{s.version}" }

  s.ios.info_plist = {
    'UIAppFonts' => ['Font Awesome 5 Free-Solid-900.otf']
  }
  s.resource_bundles = { 'FontResources' => ['assets/Font Awesome 5 Free-Solid-900.otf'] }
end