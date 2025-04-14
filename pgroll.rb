# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgroll < Formula
  desc "Postgres zero-downtime migrations made easy"
  homepage "https://www.xata.io"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.11.1/pgroll.macos.amd64"
      sha256 "61c30831561306534962bb9a713bbd17aac4faeb51fc33804d38518deb11bf8b"

      def install
        bin.install "pgroll.macos.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xataio/pgroll/releases/download/v0.11.1/pgroll.macos.arm64"
      sha256 "16316319ef9fec412fdb30db6d8465673aaedc201605c1a19fc0c708708ce954"

      def install
        bin.install "pgroll.macos.arm64" => "pgroll"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xataio/pgroll/releases/download/v0.11.1/pgroll.linux.amd64"
        sha256 "46dde70d85e6cd08411cd87d1e78abe1e9248dd4d599a47587c6e5f3b292416f"

        def install
          bin.install "pgroll.linux.amd64" => "pgroll"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xataio/pgroll/releases/download/v0.11.1/pgroll.linux.arm64"
        sha256 "3ea6ec541c4d2310c907a7988942e3a065464ea86f5655f881475d1485e54cdd"

        def install
          bin.install "pgroll.linux.arm64" => "pgroll"
        end
      end
    end
  end
end
