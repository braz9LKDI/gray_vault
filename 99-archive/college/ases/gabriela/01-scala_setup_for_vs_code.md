# Scala setup for VS Code

## Scala setup

1. [Download and install JDK](https://www.oracle.com/java/technologies/downloads).

2. [Download and install Scala among other tools](https://www.scala-lang.org/download).

    > Make sure to add the binaries to the PATH.

3. Install the Scala extensions in VS Code.
    - [Scala syntax](https://marketplace.visualstudio.com/items?itemName=scala-lang.scala).

    - [Scala (Metals)](https://marketplace.visualstudio.com/items?itemName=scalameta.metals).

4. Type the following command to create a Scala project: `sbt new scala/scala3.g8`.

5. Open the project folder with VS Code and accept when the Metals extension asks to import the `build.sbt`.

6. Run the project through the Metals extension or the `sbt` utility:
    - Metals extension: press run in the context menu it adds to a main method (in the text file).

    - `sbt`: through the command line, type `sbt` (in the project directory) and, at the tool prompt, type `run`.
