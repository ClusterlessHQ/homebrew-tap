# Generated with JReleaser 1.16.0 at 2025-05-20T16:08:52.111903Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-85/tessellate-1.0-wip-85.zip"
  version "1.0-wip-85"
  sha256 "819eb3674fa9ff373fd46a24039fd7e27eb787e310d65fad6887a29e7ff846a3"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-85", output
  end
end
