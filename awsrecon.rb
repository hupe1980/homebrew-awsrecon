# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awsrecon < Formula
  desc "AWSrecon is a tool for reconnaissance AWS cloud environments"
  homepage "https://github.com/hupe1980/awsrecon"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.5/awsrecon_Darwin_x86_64.tar.gz"
      sha256 "b02404838a8b4032ea9f75b5d27246b75200d403714792140e070f69d994d693"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.5/awsrecon_Darwin_arm64.tar.gz"
      sha256 "51fa5267e0489716cfedeb146ea7b63cf829fa2268f7f25a62c38d4c0d33226b"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.5/awsrecon_Linux_x86_64.tar.gz"
      sha256 "6263e5f0f6139e14fb22b0aa2f8e2c3f4cef2067d9ddcf82f1829a34065f5faf"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.5/awsrecon_Linux_armv6.tar.gz"
      sha256 "e09efda9523c1d073ffc6348451b570c0e8df426b614caaafac9a1c6f00eb53f"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.5/awsrecon_Linux_arm64.tar.gz"
      sha256 "a192c5262f7fef4df8ada3721aaa5b29a402d24c33c4ec8a78b838f4d1926a2e"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
  end

  test do
    system "#{bin}/awsrecon -v"
  end
end
