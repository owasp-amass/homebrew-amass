# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.11.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.5/amass_macos_amd64.zip"
    sha256 "f44a394e555bb1a5518c8e1209a9041efe2c3998fc8fd8f1bd4f7b5fb8a4ba94"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.5/amass_linux_amd64.zip"
    sha256 "7c668b540ee1818d6d297d91db617684cc43da018c41b96148e1a9935b4a5d6b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.5/amass_linux_arm.zip"
    sha256 "ffbccea2f8d68652cd5023946c717aab8c350d7ca9b5f7fa433c4208bfb8e1b7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.5/amass_linux_arm64.zip"
    sha256 "a29377f6a200dfdc5778125f219e81d561bb2288127dd1f7726dd0a2b7edb1c9"
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/amass --version"
  end
end
