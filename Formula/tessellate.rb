# Generated with JReleaser 1.16.0 at 2025-02-05T21:44:26.076047Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-54/tessellate-1.0-wip-54.zip"
  version "1.0-wip-54"
  sha256 "af28402e0ee289364e9f03be3e1f080e5741ad56710cd0f1ea701f0aaa78fcb3"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-54", output
  end
end
