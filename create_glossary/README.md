# create_glossary

## Description

**`create_glossary` addresses the problem of identifying and defining domain-specific or complex terminology from a given text for improved comprehension.**

This pattern enables users to extract a well-structured, accessible glossary from technical or complex documents, improving accessibility and understanding for broader audiences.

## Functionality

When you use `create_glossary`, it pulls the following content from the input:

- A numbered glossary list in Markdown format, with each term including a definition and an example, sorted alphabetically.

### Use cases

`create_glossary` output can help you in multiple ways, including:

1. **`Educational content simplification`**  
   Helps teachers and content creators simplify dense academic material into digestible key term glossaries for students.

2. **`Preprocessing for NLP tasks`**  
   Generates domain-specific glossaries that can aid in annotating or preprocessing text for Natural Language Processing pipelines.

## Usage

You can reference the `create_glossary` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_glossary/system.md
```

## Output

Here's an abridged output example from `create_glossary`.

```markdown
1. **Contextual Example**  
   *Definition*: A sentence or phrase that illustrates how a term is used in the original text.  
   *Example*: “illustrate each term’s usage through examples drawn directly from the original text”

2. **Domain-specific**  
   *Definition*: Pertaining to a particular area of expertise or field.  
   *Example*: “Identify words and phrases that are technical, uncommon, domain-specific…”

3. **Glossary**  
   *Definition*: A list of terms with their meanings, usually found at the end of a book or document.  
   *Example*: “Extract a comprehensive glossary of key terms…”

4. **Plain language**  
   *Definition*: Clear and straightforward language that is easy to understand.  
   *Example*: “A concise and clear explanation in plain language”
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 25-03-2025
