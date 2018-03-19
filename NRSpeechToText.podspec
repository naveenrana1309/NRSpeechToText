#
# Be sure to run `pod lib lint NRSpeechToText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'NRSpeechToText'
    s.version          = '1.0.0'
    s.summary          = 'This library provides the speech to text functionality with the help iOS speech framework'
    s.swift_version    = '4.0'

    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    NRSpeechToText: This library provides the speech to text functionality with the help iOS speech framework.
                                
                                DESC
                                
                                s.homepage         = 'https://github.com/naveenrana1309/NRSpeechToText'
                                s.screenshots     = 'https://cdn.rawgit.com/naveenrana1309/NRSpeechToText/master/Example/sample.png'
                                s.license          = { :type => 'MIT', :file => 'LICENSE' }
                                s.author           = { 'naveenrana1309' => 'naveenrana1309@gmail.com' }
                                s.source           = { :git => 'https://github.com/naveenrana1309/NRSpeechToText.git', :tag => s.version.to_s }
                                
                                #s.social_media_url = 'https://www.facebook.com/iOSByHeart/'
                                
                                s.ios.deployment_target = '10.0'
                                
                                s.source_files = 'NRSpeechToText/Classes/**/*'
                                
                                # s.resource_bundles = {
                                #   'NRSpeechToText' => ['NRSpeechToText/Assets/*.png']
                                # }
                                
                                # s.public_header_files = 'Pod/Classes/**/*.h'
                                # s.frameworks = 'UIKit', 'MapKit'
                                
                                end

