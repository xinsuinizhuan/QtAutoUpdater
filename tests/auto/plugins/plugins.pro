TEMPLATE = subdirs

SUBDIRS += testlib

qtConfig(process): SUBDIRS += QtIfwTest
win32:qtConfig(process): SUBDIRS += ChocolateyTest

for(var, SUBDIRS):!equals(var, testlib): $${var}.depends += testlib

prepareRecursiveTarget(run-tests)
QMAKE_EXTRA_TARGETS += run-tests