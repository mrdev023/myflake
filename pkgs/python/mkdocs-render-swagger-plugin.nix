{ lib
, buildPythonPackage
, source
, maintainers

# dependencies
, mkdocs
, setuptools
}:

buildPythonPackage {
  inherit (source) pname version src;

  pyproject = true;

  nativeBuildInputs = [
    setuptools
  ];

  propagatedBuildInputs = [
    mkdocs
  ];

  # No tests for python
  doCheck = false;

  pythonImportsCheck = [ "mkdocs" ];

  meta = with lib; {
    description = "A plugin for MKDocs for rendering swagger & openapi schemas using SwaggerUI.";
    homepage = "https://github.com/bharel/mkdocs-render-swagger-plugin";
    license = licenses.mit;
    maintainers = [ maintainers.florian ];
  };
}
