Pod::Spec.new do |spec|
  spec.name         = "AccuraMICR"
  spec.version      = "4.0.5"
  spec.summary      = "Accura OCR is used for Optical character recognition."
  spec.description  = "Accura Scan mobile technology provides you with the ability to effectively use the device camera and quickly onboard a customer. Seamless Customer On-Boarding by scanning a Passport or ID card with 3D selfie technology. Verify and Authenticate your customer remotely in realtime. It can work offline or can be stored on cloud or use it your way using our SDK / API’s."
  spec.homepage     = "https://github.com/accurascan/iOS-KYC"
  spec.license      = "MIT"
  spec.author       = { "AccuraScan" => "connect@accurascan.com" }
  spec.platform     = :ios, "15.5"
  spec.static_framework = true
  spec.source       = { :git => "https://github.com/accurascan/AccuraOCR-SDK-iOS.git", :tag => "4.0.5.2" }
  spec.preserve_paths = 'AccuraOCR.framework'
  spec.vendored_frameworks = 'AccuraOCR.framework'
  spec.requires_arc = true
  spec.swift_version = "5.0"
  spec.exclude_files = "accuraocrSDK/*/.{png}"
    spec.dependency 'GoogleMLKit/ObjectDetection','~> 7.0.0'
    spec.dependency 'GoogleMLKit/ObjectDetectionCustom','~> 7.0.0'
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
