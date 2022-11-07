# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awsrecon < Formula
  desc "AWSrecon is a tool for reconnaissance AWS cloud environments"
  homepage "https://github.com/hupe1980/awsrecon"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.10/awsrecon_Darwin_arm64.tar.gz"
      sha256 "4d146c8f7c3cf71343d57c858efbd6cb0d0f517c2316ea53b8e53989b68880e7"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.10/awsrecon_Darwin_x86_64.tar.gz"
      sha256 "eaaaa2e0f654a4e72107cb15690659ad0f1640c66da5a1e3fe6f28772b00ba72"

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
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.10/awsrecon_Linux_x86_64.tar.gz"
      sha256 "3958a967984114729cf755dade48b82a9b64c8ee827ddcebfae880a70883f014"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.10/awsrecon_Linux_armv6.tar.gz"
      sha256 "408ebff1fdc9c4d1ab5b8f42c6e30f638cf9ae7bcfcec9fb659c12fba34da8d1"

      def install
        bin.install "awsrecon"
        bash_completion.install "completions/awsrecon.bash" => "awsrecon"
        zsh_completion.install "completions/awsrecon.zsh" => "_awsrecon"
        fish_completion.install "completions/awsrecon.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/awsrecon/releases/download/v0.0.10/awsrecon_Linux_arm64.tar.gz"
      sha256 "74eba65899079d130b0d2c2d296e83b7968fca3d7d0669a2391dc983430b5de6"

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
