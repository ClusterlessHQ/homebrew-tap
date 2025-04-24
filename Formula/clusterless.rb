# Generated with JReleaser 1.8.0 at 2025-04-24T03:19:32.357726477Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-104/clusterless-1.0-wip-104.zip"
  version "1.0-wip-104"
  sha256 "274f275deb66fcca83eb7741e3bc051a0a337c95f22c17a975c2c92f953bb687"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-104", output
  end
end
