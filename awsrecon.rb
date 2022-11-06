# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awsrecon < Formula
  desc "AWSrecon is a tool for reconnaissance AWS cloud environments"
  homepage "https://github.com/hupe1980/awsrecon"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.9/awsrecon_Darwin_arm64.tar.gz"
      sha256 "85a69f81e6a271e848fbc1a68ac45ebc2d9384258098fd030e66bc96dc202f24"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.9/awsrecon_Darwin_x86_64.tar.gz"
      sha256 "4b8c8836286ed93cfd73821f8272462e1e1e6d8f800ecd19e5de0fbb2d7a0a41"

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
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.9/awsrecon_Linux_x86_64.tar.gz"
      sha256 "c7ad3f7226ee93a46d744344d8ea12e233c71573e67dd157db74b99f29ebb6f5"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.9/awsrecon_Linux_armv6.tar.gz"
      sha256 "594b688edaa3af499794b17f84bc28780edb51a53fa3690ff30a114d3b77428d"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.9/awsrecon_Linux_arm64.tar.gz"
      sha256 "afe488d91fa83bad90730ff9c9a1c674119cb75bc3d2c19f8ec6afa70d5a841d"

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
