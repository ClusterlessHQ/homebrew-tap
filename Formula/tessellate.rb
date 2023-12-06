# Generated with JReleaser 1.9.0 at 2023-12-06T05:03:24.671494Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-41/tessellate-1.0-wip-41.zip"
  version "1.0-wip-41"
  sha256 "be673fa522eef7d222c437f95dd1b5520ae94e85692c94d055c93106775efa13"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-41", output
  end
end
