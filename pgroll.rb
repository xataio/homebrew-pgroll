# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgroll < Formula
  desc "Postgres zero-downtime migrations made easy"
  homepage "https://www.xata.io"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.9.0/pgroll.macos.amd64"
      sha256 "3a7c7451c7122092b69636b3a685351bd0b43551f6fb8ed69c94b6df5f19c7ed"

      def install
        bin.install "pgroll.macos.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xataio/pgroll/releases/download/v0.9.0/pgroll.macos.arm64"
      sha256 "d979324d8758782fe5699032ac068680e2b4e2b41c09c06948aa73711f92181f"

      def install
        bin.install "pgroll.macos.arm64" => "pgroll"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xataio/pgroll/releases/download/v0.9.0/pgroll.linux.amd64"
        sha256 "276fdeaee37db642a09ea7084ac3e0939c5529f7c114ce1687bf2cc7acc7e552"

        def install
          bin.install "pgroll.linux.amd64" => "pgroll"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xataio/pgroll/releases/download/v0.9.0/pgroll.linux.arm64"
        sha256 "19d57396c87d991c195a86f83b9d692d4fa86e5644844bc81f085af4f4f84558"

        def install
          bin.install "pgroll.linux.arm64" => "pgroll"
        end
      end
    end
  end
end
