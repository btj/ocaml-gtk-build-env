FROM ocaml/opam:ubuntu-22.04-ocaml-4.14
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends libgtk-4-dev gobject-introspection gir1.2-glib-2.0 gir1.2-gtk-4.0
RUN opam install -y dune dune-configurator
ENV PREFIX=/usr/lib/x86_64-linux-gnu
CMD ["dune", "build"]
