# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class WarpDiagChecker < Formula
  desc "Simple tool to check for known warp issues"
  homepage "https://github.com/peakefficiency/warp-diag-checker"
  version "0.7.0"

  on_macos do
    url "https://github.com/peakefficiency/warp-diag-checker/releases/download/0.7.0/warp-diag-checker_Darwin_all.tar.gz"
    sha256 "07318fd818517e656368107d3a5f87a072ea14259549c15fce14c295c7952fb5"

    def install
      bin.install "warp-diag-checker"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/peakefficiency/warp-diag-checker/releases/download/0.7.0/warp-diag-checker_Linux_armv6.tar.gz"
      sha256 "6bb2fcac48e29c3851db5fcf3d955910999abf471fe95d9facb44085f31b959a"

      def install
        bin.install "warp-diag-checker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peakefficiency/warp-diag-checker/releases/download/0.7.0/warp-diag-checker_Linux_arm64.tar.gz"
      sha256 "4b12723ff439390e7b4eafdfb8f7c0b98c4f8c7eb0cf4f8c54ebdadbbc62e66b"

      def install
        bin.install "warp-diag-checker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/peakefficiency/warp-diag-checker/releases/download/0.7.0/warp-diag-checker_Linux_x86_64.tar.gz"
      sha256 "f75ec05fd7f405b67c7fca1ba11c26048e5dee1c372835749762bb1b56260942"

      def install
        bin.install "warp-diag-checker"
      end
    end
  end

  def caveats
    <<~EOS
      More information here: https://github.com/peakefficiency/warp-diag-checker
    EOS
  end
end
