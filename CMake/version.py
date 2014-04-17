import sys
import pkg_resources

if len(sys.argv) != 2:
  print >> sys.stderr, "Usage: python version.py <package name>"
  sys.exit(1)

module = sys.argv[1]

try:
  pkg = pkg_resources.get_distribution(module)
except pkg_resources.DistributionNotFound:
  sys.exit(2)

sys.stdout.write(pkg.version)
