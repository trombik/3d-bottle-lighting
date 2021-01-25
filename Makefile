PYTHONPATH?=    /usr/local/FreeCAD/lib
PYTHON=?	python3

WRKSRC=	src
TARGETS=    bottle-lighting-base.stl

${TARGETS}:	${WRKSRC}/${.TARGET:S/.stl//}.FCStd
	PYTHONPATH="${PYTHONPATH}" "${PYTHON}" export-stl.FCMacro ${.TARGET}

all: ${TARGETS}

clean:
	rm -f ${TARGETS} *.core
