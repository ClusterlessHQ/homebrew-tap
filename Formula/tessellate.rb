# Generated with JReleaser 1.26.0 at 2026-09-27T16:20:16.544127052Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-93/tessellate-1.0-wip-93.zip"
  version "1.0-wip-93"
  sha256 "f91a1fb83d9d99f53c25410ce1e34b923bb10401a5abc2388e128187f7d362ce"
  license "MPL-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-93", output
  end
end
