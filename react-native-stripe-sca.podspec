require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-stripe-sca"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-stripe-sca
                   DESC
  s.homepage     = "https://github.com/bamlab/react-native-stripe-sca"
  s.license      = "MIT"
  s.authors      = {
    "Nicolas Djambazian" => "nicolasd@bam.tech",
    "Antoine Doubovetzky" => "antoined@bam.tech",
    "Thomas Pucci" => "thomasp@bam.tech"
 }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/bamlab/react-native-stripe-sca.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
	
  s.dependency "Stripe"
end

