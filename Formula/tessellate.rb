# Generated with JReleaser 1.16.0 at 2025-05-02T23:10:07.116286Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-79/tessellate-1.0-wip-79.zip"
  version "1.0-wip-79"
  sha256 "b335a7e37d71e74a8dc63df51c20e67c7bce46e03d252072b901da414358f90c"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-79", output
  end
end
