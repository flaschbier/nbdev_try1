SRC = $(wildcard ./*.ipynb)

all: nbdev_try1 docs

nbdev_try1: $(SRC)
	nbdev_build_lib
	touch nbdev_try1

docs_serve: docs
	cd docs && bundle exec jekyll serve

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

release: pypi
	nbdev_bump_version

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist