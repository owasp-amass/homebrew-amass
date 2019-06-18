# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth DNS Enumeration and Network Mapping"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.0.8"

  if OS.mac?
    url "http://github.com/OWASP/Amass/releases/download/3.0.8/amass_3.0.8_macos_amd64.zip"
    sha256 "ee0af0591b9f5639aa3c884517461cd31dad3cd918ee3b5b16fcc41a940cd93a"
  elsif OS.linux?
    url "http://github.com/OWASP/Amass/releases/download/3.0.8/amass_3.0.8_macos_amd64.zip"
    sha256 "bd569e0fee4906b10632c2d6b5336abc0604795b21bc0de1dbe47c5cda34bb08"
  end

  def install
    bin.install "amass"
  end
end
