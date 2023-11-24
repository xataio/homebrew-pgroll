# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgroll < Formula
  desc "Postgres zero-downtime migrations made easy"
  homepage "https://www.xata.io"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xataio/pgroll/releases/download/v0.4.1/pgroll.macos.arm64"
      sha256 "d32be67e30adb3fd375b9dace836236132c2318e500976a22c276159b5cbead0"

      def install
        bin.install "pgroll.macos.arm64" => "pgroll"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.4.1/pgroll.macos.amd64"
      sha256 "b54c6cef269ae48341c4606a0f234214d6cc2faa9e6deeb9465904f08dbdd151"

      def install
        bin.install "pgroll.macos.amd64" => "pgroll"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.4.1/pgroll.linux.amd64"
      sha256 "0fe7450203765812eff1e5066a9e29b33765d8e16e2f02326bdd301ca270239c"

      def install
        bin.install "pgroll.linux.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xataio/pgroll/releases/download/v0.4.1/pgroll.linux.arm64"
      sha256 "2de02b15cff795ba244e04f6b426de69f1edea2ed8f7d5095b47d571a001bf69"

      def install
        bin.install "pgroll.linux.arm64" => "pgroll"
      end
    end
  end
end
