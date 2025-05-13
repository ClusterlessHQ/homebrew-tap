# Generated with JReleaser 1.16.0 at 2025-05-13T14:31:53.842401Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-82/tessellate-1.0-wip-82.zip"
  version "1.0-wip-82"
  sha256 "359ff5b60a6d326517a3efe11eae8383e5142e6e634795ec3731bbd7c4ab0d8a"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-82", output
  end
end
