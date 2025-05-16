# Generated with JReleaser 1.8.0 at 2025-05-16T17:23:05.321071422Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-110/clusterless-1.0-wip-110.zip"
  version "1.0-wip-110"
  sha256 "7a80a30a3f6dba36e48f6b59a0aa64735dd7853c143fa5f8336ef6010008346e"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-110", output
  end
end
