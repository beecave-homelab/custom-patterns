# custom-patterns

A repository containing custom system prompts for use with Large Language Models such as ChatGPT, Claude, and others. These prompts are fully compatible with [Fabric](https://github.com/danielmiessler/fabric).

## Table of Contents

- [Badges](#badges)
- [About System Prompts (Patterns)](#about-system-prompts-patterns)
- [Pattern Structure](#pattern-structure)
- [Overview of Patterns](#overview-of-patterns)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Contributing](#contributing)

## Badges

![Markdown](https://img.shields.io/badge/Markdown-Syntax-blue) ![AI](https://img.shields.io/badge/AI-Compatible-green)

## About System Prompts (Patterns)

The patterns in this repository are built according to Fabric's approach to prompting, which differs from traditional methods in several key ways:

1. **Markdown-based Structure**:
   - All patterns are written in Markdown format.
   - This enhances readability and ease of editing.
   - It allows both humans and AI to clearly understand the instructions.
   - Ensures consistency across various patterns.

2. **Clear Instructions**:
   - Each pattern uses a structured format to communicate with the AI.
   - Instructions are presented in a clear, step-by-step manner.
   - The Markdown structure highlights what actions the AI should take and in which sequence.

3. **System-First Approach**:
   - Patterns primarily focus on the System section of the prompt.
   - This method has proven more effective in practical applications.
   - System prompts help maintain consistent behavior across different interactions.

### Pattern Structure

Each pattern in this repository typically follows this structure:

```markdown
# IDENTITY and PURPOSE
Defines the AI's role and primary objective for this pattern.

# STEPS
Outlines the specific steps the AI should follow to accomplish the task.

# FORMAT
Details the structure and formatting requirements for the output.

# OUTPUT INSTRUCTIONS
Provides specific guidelines on how the output should be presented.

# INPUT
The section where user input is processed.
```

These patterns are designed to:

- Clearly define the AI’s role and objectives.
- Provide step-by-step instructions.
- Ensure consistent formatting.
- Set clear output requirements.
- Efficiently process user input.

## Overview of Patterns

```markdown
custom-patterns
├── analyze_learning_journey
├── clean_markdown_file
├── code_changes
├── coding_rules
├── create_audio_overview_prompt
├── create_bash_script
├── create_do_not_translate_word_list
├── create_english_word_list
├── create_git_commit
├── create_image_prompt
├── create_info_page
├── create_installation_page
├── create_interview_questions
├── create_issue
├── create_multiple_choice_question
├── create_pattern_nl
├── create_pattern_readme
├── create_podcast_script
├── create_project_overview
├── create_readme
├── create_repository_file_tree
├── create_structured_interview
├── create_succes_criteria
├── create_tags
├── explain_by_storytelling
├── explain_github_file
├── extract_question
├── improve_my_prompt
├── improve_my_prompt_costar
├── polish_text
├── replace_pii_with_placeholder
├── replace_url_with_placeholder
├── rewrite_issue_description
├── summarize_article
├── summarize_chapter
├── transcribe_meeting
├── translate_text
├── update_readme
├── write_cover_letter
├── write_in_different_tone
├── write_it_better
└── write_training_document
```

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/beecave-homelab/custom-patterns.git
   ```

2. **Navigate to the project directory**:

   ```bash
   cd custom-patterns
   ```

3. **When using the patterns with `Fabric`**:

- Copy the custom patterns to the `~/.config/fabric/patterns` directory:

   ```bash
   ./copy-custom-patterns.sh
   ```

- Verify that the custom patterns are available for use in Fabric:

   ```bash
   fabric -l
   ```

## Usage

This repository contains a variety of custom Fabric patterns. To use a specific pattern:

1. Navigate to the directory of the desired pattern.
2. Follow the instructions provided in the Fabric repository’s [README.md](https://github.com/danielmiessler/fabric).

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

## Contributing

Pull requests are welcome. For significant changes, please open an issue first to discuss the proposed modifications.
