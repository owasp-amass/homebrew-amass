class Amass < Formula
    desc "In-depth DNS Enumeration and Network Mapping"
    homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
    url "http://github.com/caffix/homebrew-amass/releases/download/2.9.9/amass_2.9.9_macos_amd64.zip"
    version "2.9.9"
    sha256 "e837a80c8df1cf6c6d16c099f3ca7c4466f8f7211334b1146ba6abae347a2dd0"
  
    def install
      bin.install "amass"
    end
  end