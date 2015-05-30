#!/usr/bin/env python
from distutils.core import setup
from Cython.Build import cythonize

setup(
    name="{'imports': [], 'filename': 'create_example'}",
    ext_modules=cythonize('create_example.pyx', language="c++")
)
