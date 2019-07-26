# -*- encoding: utf-8 -*-
# stub: mongo 2.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongo".freeze
  s.version = "2.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tyler Brock".freeze, "Emily Stolfo".freeze, "Durran Jordan".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDRDCCAiygAwIBAgIBATANBgkqhkiG9w0BAQsFADAmMSQwIgYDVQQDDBtkcml2\nZXItcnVieS9EQz0xMGdlbi9EQz1jb20wHhcNMTkwMTE3MjIzMDE1WhcNMjAwMTE3\nMjIzMDE1WjAmMSQwIgYDVQQDDBtkcml2ZXItcnVieS9EQz0xMGdlbi9EQz1jb20w\nggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDRXUgGvH0ZtWwDPc2umdHw\nB+INNm6jNTRp8PMyUKxPzxaxX2OiBQk9gLC3zsK9ZmlZu4lNfpHVSCEPoiP/fhPg\nKyfq2xld3Qz0Pki5d5i0/r14343MTKiNiFulLlbbdlN0cXeEFNJHUycZnD2LOXwz\negYGHOl14FI8t5visIWtqRnLXXIlDsBHzmeEZjUZRGSgjC0R3RT/I+Fk5yUhn1w4\nrqFyAiW+cjjzmT7mmqT0jV6fd0JFHbKnSgt9iPijKSimBgUOsorHwOTMlTzwsy0d\nZT+al1RiT5zqlAJLxFHwmoYOxD/bSNtKsYl60ek0hK2mISBVy9BBmLvCgHDx5uSp\nAgMBAAGjfTB7MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBRbd1mx\nfvSaVIwKI+tnEAYDW/B81zAgBgNVHREEGTAXgRVkcml2ZXItcnVieUAxMGdlbi5j\nb20wIAYDVR0SBBkwF4EVZHJpdmVyLXJ1YnlAMTBnZW4uY29tMA0GCSqGSIb3DQEB\nCwUAA4IBAQBtXpljL+EXFgH2YRSkYTNn9WKurclJKqaMTJvJoEm2mX1IbAg+BX+i\nEb+rKelkjezRqVkurzRjif8RI9aGBpAyfobQfHHJNzHQzSFwhEmwlGDQRgQzrDhN\ncbkRB2wDgGJNjnjMKLXfeZX+SjWAsHDrOc+Ue9nHs2AdJxCTDgB1MMNGZ1UjLL9/\nHhO93otEnxwCVijD9ruORb0bT9LlNKosQQEzrhXtOtNK9k7s7G6Gi0BFMOIJDVyq\nbMYVwXXhV8czdzgkQB/ZPWHSbEWXnmkze1mzvqWBCPOVXYrcnL9cnEl/RoxtS1hr\nDb6Ac6mCUSYfYHBWpWqxjc45n70i5Xi1\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2019-06-20"
  s.description = "A Ruby driver for MongoDB".freeze
  s.email = "mongodb-dev@googlegroups.com".freeze
  s.executables = ["mongo_console".freeze]
  s.files = ["bin/mongo_console".freeze]
  s.homepage = "http://www.mongodb.org".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "Ruby driver for MongoDB".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bson>.freeze, [">= 4.4.2", "< 5.0.0"])
    else
      s.add_dependency(%q<bson>.freeze, [">= 4.4.2", "< 5.0.0"])
    end
  else
    s.add_dependency(%q<bson>.freeze, [">= 4.4.2", "< 5.0.0"])
  end
end
