# Generated with JReleaser 1.16.0 at 2025-02-06T23:08:38.496175Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-55/tessellate-1.0-wip-55.zip"
  version "1.0-wip-55"
  sha256 "f791f61d371a66068f251165a82b98fc8361d383a5a5a023b3819a995fada538"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-55", output
  end
end
