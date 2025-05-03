# Generated with JReleaser 1.8.0 at 2025-05-03T16:22:39.895777096Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-106/clusterless-1.0-wip-106.zip"
  version "1.0-wip-106"
  sha256 "210e16b4725051f23a78d07f42690ea613758f1d16b24acdb80debee42a7b0f3"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-106", output
  end
end
