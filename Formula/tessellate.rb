# Generated with JReleaser 1.16.0 at 2025-03-18T22:26:52.420138Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-65/tessellate-1.0-wip-65.zip"
  version "1.0-wip-65"
  sha256 "2b8a4bde38b7f751aaf5b89a84e9f97316eb6c4783ae526b4de1bd699e62bd91"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-65", output
  end
end
