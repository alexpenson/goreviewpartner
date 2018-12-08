"""
py2app/py2exe build script for MyApplication.

Will automatically ensure that all build prerequisites are available
via ez_setup

Usage (Mac OS X):
python setup.py py2app

Usage (Windows):
python setup.py py2exe
"""
import sys
from setuptools import setup

mainscript = 'main.py'

if sys.platform == 'darwin':
    extra_options = dict(
        setup_requires=['py2app'],
        app=[mainscript],
        # Cross-platform applications generally expect sys.argv to
        # be used for opening files.
        options=dict(py2app=dict(argv_emulation=True)),
        )
elif sys.platform == 'win32':
    extra_options = dict(
        setup_requires=['py2exe'],
        app=[mainscript],
        )
else:
    extra_options = dict(
        # Normally unix-like platforms will use "setup.py install"
        # and install the main script as such
        scripts=[mainscript],
        )

setup(
    name="GoReviewPartner",
    package='gomill',
    py_modules=['aq_analysis.py',
                'dual_view.py',
                'gnugo_analysis.py',
                'goban.py',
                'gtp.py',
                'gtp_terminal.py',
                'leela_analysis.py',
                'leela_zero_analysis.py',
                'live_analysis.py',
                'main.py',
                'pachi_analysis.py',
                'r2csv.py',
                'r2sgf.py',
                'ray_analysis.py',
                'settings.py',
                'setup.py',
                'tabbed.py',
                'toolbox.py'],
    **extra_options
    )
