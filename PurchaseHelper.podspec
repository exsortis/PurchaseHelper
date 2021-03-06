Pod::Spec.new do |s|
  s.name = 'PurchaseHelper'
  s.version = '1.6.1.3'
  s.summary = 'In-app purchase helper and UI elements'

  s.description = <<-DESC
                    Some helper classes for managing in-app purchases,
                    including some UI elements.
                   DESC

  s.homepage = 'https://github.com/paulyhedral/PurchaseHelper'

  s.license = { type: 'MIT', file: 'LICENSE' }
  s.author = { 'Paul Schifferer' => 'paul@schifferers.net' }
  s.social_media_url = 'https://twitter.com/paulyhedral'

  s.ios.deployment_target = '9.3'
  s.osx.deployment_target = '10.11'
  # s.watchos.deployment_target = '2.0'
  # s.tvos.deployment_target = '9.2'

  s.source = { git: 'https://github.com/paulyhedral/PurchaseHelper.git',
               tag: s.version.to_s }

  s.source_files = 'PurchaseHelper/**/*.{h,m}'
  s.resources = ['PurchaseHelper/**/*.strings']
  s.ios.resources = ['PurchaseHelper/**/*.xib']
  s.exclude_files = 'Classes/Exclude'
  s.public_header_files = 'PurchaseHelper/*.h'
  s.private_header_files = 'PurchaseHelper/Private/*.h'
  s.requires_arc = true
  s.compiler_flags = '-Wimplicit-retain-self', '-DALWAYS_SEARCH_USER_PATHS=NO'
  s.prefix_header_file = false
  s.module_name = 'PurchaseHelper'

  s.dependency 'SAMKeychain'
end
