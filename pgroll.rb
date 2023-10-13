# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgroll < Formula
  desc "Postgres zero-downtime migrations made easy"
  homepage "https://www.xata.io"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0/pgroll.macos.amd64"
      sha256 "8d9a62f829754915fd9e75ac83aa15b7dc07c8f1b59bd615297056d4758fbba0"

      def install
        bin.install "pgroll.macos.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0/pgroll.macos.arm64"
      sha256 "523041a5282144a1f0c210f3d875a1ee6f71b77b2fb9bb7a8f315999e2cdf36d"

      def install
        bin.install "pgroll.macos.arm64" => "pgroll"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0/pgroll.linux.amd64"
      sha256 "7b84a8b59dd4f7b3a3c5ca8b8d59c93e739f91a9a706136d03b9807027205db9"

      def install
        bin.install "pgroll.linux.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0/pgroll.linux.arm64"
      sha256 "2dfad2c44dfd187e5b26efa2d4f93d3ef16e16022e253ca81713ae1f08e6c5c7"

      def install
        bin.install "pgroll.linux.arm64" => "pgroll"
      end
    end
  end
end
