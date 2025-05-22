# Generated with JReleaser 1.8.0 at 2025-05-22T17:32:17.846089951Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-111/clusterless-1.0-wip-111.zip"
  version "1.0-wip-111"
  sha256 "a8dababa3af3890a3d2544b7851f3cb073dc10d08a53062cde3ef9436eac9f33"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-111", output
  end
end
