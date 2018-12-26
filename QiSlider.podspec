Pod::Spec.new do |s|


  s.name         = "QiSlider"
  s.version      = "0.0.4"
  s.summary      = "This is the summary."

  s.description  = <<-DESC
This is the description.
                   DESC

  s.homepage     = "https://github.com/QiShare/QiSlider"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "liusiqi" => "i-liusiqi1@360.cn" }

    s.platform     = :ios
    s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/QiShare/QiSlider.git", :tag => "#{s.version}" }

  s.source_files  = "QiSlider/QiSlider/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
