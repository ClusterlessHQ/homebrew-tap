# Generated with JReleaser 1.8.0 at 2025-05-03T17:01:26.639274129Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-107/clusterless-1.0-wip-107.zip"
  version "1.0-wip-107"
  sha256 "8123cbf2e39d17bb00852b4575769b58be01b86d2f32e949671b81fe2cb5e0ae"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-107", output
  end
end
