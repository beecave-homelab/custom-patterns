# create_keynote_presentation

## Description

**`create_keynote_presentation` addresses the problem of transforming complex content into engaging, TED-style keynote presentations**

This pattern transforms input content into a structured, narrative-driven presentation format with clear slides, speaker notes, and image descriptions.

## Functionality

When you use `create_keynote_presentation`, it pulls the following content from the input:

- Narrative flow bullets (10-20 key ideas)
- Core takeaway message
- Slide content with titles, bullet points, and speaker notes
- AI image generation descriptions for each slide

### Use cases

`create_keynote_presentation` output can help you in multiple ways, including:

1. **`Create Professional Presentations`**
   Transform any content into a professionally structured keynote presentation with a compelling narrative arc.
2. **`Develop Speaker Materials`**
   Generate comprehensive speaker notes and visual guidance for delivering impactful presentations.

## Usage

You can reference the `create_keynote_presentation` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_keynote_presentation/system.md
```

## Output

Here's an abridged output example from `create_keynote_presentation`.

```markdown
#### Slide 1: The Big Idea

**Main content:**  
- Innovation at the heart of change  
- Why now is the critical moment  
- A surprising insight about the future  

**Image description (for AI generator):**  
"An abstract representation of transformation, featuring a bridge crossing over two eras of time."

**Speaker notes (what the speaker says aloud):**  
- "Welcome, everyone! Today, I want to challenge your thinking about change."  
- "We're living through a moment of profound transformation."  
- "The choices we make today will shape the future."  
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: Elvee
- **Version Information**: 1.0.0
- **Published**: 14-12-2024
