# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

import sys
import os 

project = 'Auto Documentation MATLAB'
copyright = '2023, Schoepfloeffel'
author = 'Schoepfloeffel'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ['myst_parser',
            'sphinx.ext.autodoc',
            'sphinx.ext.autosummary',
            'sphinx_copybutton',
            'sphinx.ext.linkcode',
            'sphinx.ext.napoleon',
            'sphinxcontrib.matlab']

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
primary_domain = "mat"

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

autodoc_default_options = {
    'members': True,
    'member-order': 'bysource',
    #'special-members': 'set.*',
    'undoc-members': True,
    'exclude-members': '__weakref__'
}

html_theme = 'sphinx_book_theme'
# html_static_path = ['_static']
html_theme_options = {
    "repository_provider": "github",
    "repository_url": "https://github.com/Schoepfloeffel",
    "use_repository_button": True,
    "use_issues_button": False,
    "use_edit_page_button": False,
    "path_to_docs": "docs/"
}

current_working_directory = os.getcwd()
matlab_src_dir = os.path.dirname(current_working_directory)
print(f"Reading folder: {matlab_src_dir}")
matlab_short_links = True
matlab_auto_link = "basic"
# matlab_show_property_default_value = True

def linkcode_resolve(domain, info):
    def find_source():
        # try to find the file and line number, based on code from numpy:
        # https://github.com/numpy/numpy/blob/master/doc/source/conf.py#L286
        obj = sys.modules[info['module']]
        for part in info['fullname'].split('.'):
            obj = getattr(obj, part)
        import inspect
        import os
        fn = inspect.getsourcefile(obj)
        fn = os.path.relpath(fn, start=os.path.abspath('..'))
        source, lineno = inspect.getsourcelines(obj)
        return fn, lineno, lineno + len(source) - 1
    if domain != 'm' or not info["module"]:
        return None
    try:
        filename = "{:s}#L{:d}-{:d}".format(*find_source())
    except Exception:
        filename = info['module'].replace('.', '/') + ".m"

    return f"https://github.com/Schoepfloeffel/matlab_expert_tips/blob/main/{filename}"
