# Generated with JReleaser 1.8.0 at 2025-01-31T19:55:43.766129874Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-85/clusterless-1.0-wip-85.zip"
  version "1.0-wip-85"
  sha256 "8c29af87be27956038510730e7e3386cbecb3ae565cf40848132d5f9a482935f"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-85", output
  end
end
