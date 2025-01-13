# Generated with JReleaser 1.8.0 at 2025-01-13T22:00:00.172777222Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-78/clusterless-1.0-wip-78.zip"
  version "1.0-wip-78"
  sha256 "8a95e59a9448546871b4ae2cb30ccaf2dd889d77a0ebc961c34b44a2271a8284"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-78", output
  end
end
