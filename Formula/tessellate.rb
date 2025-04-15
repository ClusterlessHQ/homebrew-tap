# Generated with JReleaser 1.16.0 at 2025-04-15T14:59:15.040049Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-76/tessellate-1.0-wip-76.zip"
  version "1.0-wip-76"
  sha256 "1ec71039de2220679b3adb5c7b3f516f9741ca47beb4391da0a341a3f7a2c5f7"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-76", output
  end
end
