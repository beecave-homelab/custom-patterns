# Extract Employee Skills

## Description

**`extract_employee_skills` addresses the problem of optimizing LinkedIn profiles with relevant, industry-specific skills that enhance visibility to recruiters and hiring managers**

This pattern analyzes CVs and employee profiles to extract the most impactful and searchable skills for LinkedIn profile optimization.

## Functionality

When you use `extract_employee_skills`, it pulls the following content from the input:

- A comprehensive list of 50 relevant skills formatted as bullet points, including explicit skills, implicit skills, and industry-specific keywords

### Use cases

`extract_employee_skills` output can help you in multiple ways, including:

1. **`LinkedIn Profile Optimization`**<br />
   Enhance your LinkedIn profile's visibility by strategically incorporating relevant skills that align with recruiter search patterns
2. **`Career Development Planning`**<br/>
   Identify skill gaps and opportunities for professional development by analyzing your current skill set against industry standards

## Usage

You can reference the `extract_employee_skills` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/extract_employee_skills/system.md
```

## Output

Here's an abridged output example from `extract_employee_skills`.

```markdown
- Project Management
- Agile Methodologies
- Strategic Planning
- Team Leadership
- Data Analysis
- Business Development
- Digital Marketing
- Process Improvement
- Change Management
- Stakeholder Management
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: Elvee
- **Version Information**: 1.0.0
- **Published**: 14-12-2024
