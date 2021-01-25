PYTHONPATH?=    /usr/local/FreeCAD/lib
PYTHON=?	python3

WRKSRC=	src
TARGETS=    bottle-lighting-base.stl

bottle-lighting-base.stl:	${WRKSRC}/base.FCStd
	PYTHONPATH="${PYTHONPATH}" python3 export-stl.FCMacro

all: ${TARGETS}

clean:
	rm -f ${TARGETS} *.core
