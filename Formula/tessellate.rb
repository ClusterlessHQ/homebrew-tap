# Generated with JReleaser 1.16.0 at 2025-03-14T22:24:15.256359Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-61/tessellate-1.0-wip-61.zip"
  version "1.0-wip-61"
  sha256 "12162752ece5e9c70f357c414b128fdb18f4fab0a701032f9a72946aafb97ee0"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-61", output
  end
end
