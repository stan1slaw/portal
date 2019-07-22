# -*- encoding: utf-8 -*-
# stub: mongoid 7.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid".freeze
  s.version = "7.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Durran Jordan".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDRDCCAiygAwIBAgIBATANBgkqhkiG9w0BAQsFADAmMSQwIgYDVQQDDBtkcml2\nZXItcnVieS9EQz0xMGdlbi9EQz1jb20wHhcNMTkwMTE3MjIzMDE1WhcNMjAwMTE3\nMjIzMDE1WjAmMSQwIgYDVQQDDBtkcml2ZXItcnVieS9EQz0xMGdlbi9EQz1jb20w\nggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDRXUgGvH0ZtWwDPc2umdHw\nB+INNm6jNTRp8PMyUKxPzxaxX2OiBQk9gLC3zsK9ZmlZu4lNfpHVSCEPoiP/fhPg\nKyfq2xld3Qz0Pki5d5i0/r14343MTKiNiFulLlbbdlN0cXeEFNJHUycZnD2LOXwz\negYGHOl14FI8t5visIWtqRnLXXIlDsBHzmeEZjUZRGSgjC0R3RT/I+Fk5yUhn1w4\nrqFyAiW+cjjzmT7mmqT0jV6fd0JFHbKnSgt9iPijKSimBgUOsorHwOTMlTzwsy0d\nZT+al1RiT5zqlAJLxFHwmoYOxD/bSNtKsYl60ek0hK2mISBVy9BBmLvCgHDx5uSp\nAgMBAAGjfTB7MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBRbd1mx\nfvSaVIwKI+tnEAYDW/B81zAgBgNVHREEGTAXgRVkcml2ZXItcnVieUAxMGdlbi5j\nb20wIAYDVR0SBBkwF4EVZHJpdmVyLXJ1YnlAMTBnZW4uY29tMA0GCSqGSIb3DQEB\nCwUAA4IBAQBtXpljL+EXFgH2YRSkYTNn9WKurclJKqaMTJvJoEm2mX1IbAg+BX+i\nEb+rKelkjezRqVkurzRjif8RI9aGBpAyfobQfHHJNzHQzSFwhEmwlGDQRgQzrDhN\ncbkRB2wDgGJNjnjMKLXfeZX+SjWAsHDrOc+Ue9nHs2AdJxCTDgB1MMNGZ1UjLL9/\nHhO93otEnxwCVijD9ruORb0bT9LlNKosQQEzrhXtOtNK9k7s7G6Gi0BFMOIJDVyq\nbMYVwXXhV8czdzgkQB/ZPWHSbEWXnmkze1mzvqWBCPOVXYrcnL9cnEl/RoxtS1hr\nDb6Ac6mCUSYfYHBWpWqxjc45n70i5Xi1\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2019-06-13"
  s.description = "Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby.".freeze
  s.email = ["mongodb-dev@googlegroups.com".freeze]
  s.homepage = "http://mongoid.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.0.4".freeze
  s.summary = "Elegant Persistence in Ruby for MongoDB.".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.1", "< 6.0.0"])
      s.add_runtime_dependency(%q<mongo>.freeze, [">= 2.5.1", "< 3.0.0"])
    else
      s.add_dependency(%q<activemodel>.freeze, [">= 5.1", "< 6.0.0"])
      s.add_dependency(%q<mongo>.freeze, [">= 2.5.1", "< 3.0.0"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 5.1", "< 6.0.0"])
    s.add_dependency(%q<mongo>.freeze, [">= 2.5.1", "< 3.0.0"])
  end
end
