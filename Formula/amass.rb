# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.21.1/amass_macos_arm64.zip"
      sha256 "42bcc191d46a5c1e8fe0f153a2d5954e4c6ef26b5b07d8c132ddbf1e9671c2cc"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.21.1/amass_macos_amd64.zip"
      sha256 "1b87e3a566e015aa71409428ad95cc231860e85bb64396197bb3b511021a7c45"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.21.1/amass_linux_arm64.zip"
      sha256 "757d4c9ab64fbb35ad9fd0840e1f92b15b8f27047c700ab0a4329320203115fc"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.21.1/amass_linux_amd64.zip"
      sha256 "9cb8225eb4a16ee8537cf0f46ca3cf1c750db6b92deaf4c7d8029cce95b2dd3c"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.21.1/amass_linux_arm.zip"
      sha256 "9708b182a7e712892b7750c50a36ffadd3983e2874269740c05650f979ede361"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
