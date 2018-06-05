Pod::Spec.new do |s|

  s.name         = "SWEmptyDataSet"

  s.version      = "0.0.1"

  s.homepage      = 'https://github.com/zhoushaowen/SWEmptyDataSet'

  s.ios.deployment_target = '8.0'

  s.summary      = "UI Component"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Zhoushaowen" => "348345883@qq.com" }

  s.source       = { :git => "https://github.com/zhoushaowen/SWEmptyDataSet.git", :tag => s.version }

  s.source_files  = "SWEmptyDataSet/*.{h,m}"
  
  s.resources  = "SWEmptyDataSet/Resource/*.png"
  
  s.requires_arc = true

  s.dependency 'DZNEmptyDataSet'


end
