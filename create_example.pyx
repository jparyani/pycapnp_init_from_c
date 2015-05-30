# distutils: include_dirs = /usr/local/lib/python2.7/site-packages

from cpython.ref cimport PyObject, Py_INCREF, Py_DECREF

from capnp.includes.capnp_cpp cimport DynamicStruct
from capnp.lib.capnp cimport _DynamicStructReader, _DynamicStructBuilder

cdef public PyObject * create_builder(DynamicStruct.Reader other, PyObject * _parent):
  parent = <object>_parent

  ret = _DynamicStructReader()
  ret._init(other, parent)
  Py_INCREF(ret)
  return <PyObject *>ret
