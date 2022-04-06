FROM mpossing/cs598:latest

ENTRYPOINT [ "jupyter", "notebook", "--allow-root", "--no-browser", "--ip=0.0.0.0" ]