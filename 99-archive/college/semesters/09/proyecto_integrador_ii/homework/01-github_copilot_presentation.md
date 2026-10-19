---
sources:
    - author: Greg Larkin
      url: https://github.blog/ai-and-ml/github-copilot/how-to-generate-unit-tests-with-github-copilot-tips-and-examples
      language: English
    - author: NA
      url: https://www.agilealliance.org/glossary/tdd
      language: English
    - author: NA
      url: https://www.agilealliance.org/glossary/rules-of-simplicity/
      language: English
---

# GitHub Copilot presentation

GitHub Copilot uses generative AI to provide real-time code suggestions in the IDE and via chat-based functions in the IDE and across GitHub projects.

Based on the context in the code or chat-based queries (or even slash commands used after highlighting specific code blocks), it can suggest relevant unit tests, covering typical scenarios like edge cases, common inputs and failure modes. This ability to anticipate and generate test code can lead to better code coverage and more resilient applications.

Although the Copilot ecosystem goes beyond the Visual Studio Code extension, this presentation will review only the latter.

## Key benefits of using GitHub Copilot

1. Saving time on routine tasks.

2. Supporting TDD (test-driven development).

    It refers to a style of programming in which three activities are tightly interwoven: coding, testing (in the form of writing unit tests) and design (in the form of refactoring).
    1. Write a "single" unit test describing an aspect of the program.

    2. Run the test, which should fail because the program lacks that feature.

    3. Write "just enough" code, the simplest possible, to make the test pass.

    4. "Refactor" the code until it conforms to the simplicity criteria.
        1. The code is verified by automated tests, and all such tests pass.

        2. The code contains no duplication.

        3. The code expresses separately each distinct idea or responsibility.

        4. The code is composed of the minimum number of components (classes, methods, lines) compatible with the first three criteria.

    5. Repeat, "accumulating" unit tests over time.

3. Increasing test coverage.

## Best practices for using GitHub Copilot to generate unit tests

1. Highlight the code to test.

2. Be specific in the prompts about what to test.

3. Provide context.

    `#` attaches files.

4. Review suggestions carefully.

5. Be flexible and iterative.

6. Ask Copilot whether any tests are missing.

7. Use test coverage tools.
