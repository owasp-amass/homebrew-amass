# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.16.0/amass_macos_amd64.zip"
      sha256 "a54c242942be36e03737b5ecb4e3634dc4102fdf829081c922645c6632021164"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.16.0/amass_macos_arm64.zip"
      sha256 "4c6d3bbd063170164a5560a8faa9efe8a9514ad73099b039e7cc5b58a7df17a8"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.16.0/amass_linux_arm64.zip"
      sha256 "4819855db0e7e1782ee2a4eebc94cff3d1e1f6206ec3ce7554c65c6672b96c1f"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.16.0/amass_linux_arm.zip"
      sha256 "31d01e7169d8b95f9901adebd17e69b62ea6fb6cccfc628d10fa3dbccb22f6ed"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.16.0/amass_linux_amd64.zip"
      sha256 "08f2dd3c9b6dc9e39a96c7a42314bdb508f6fd86eec25dd0a1b15224bea4e639"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
