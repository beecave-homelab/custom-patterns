# Extract Employee Skills

## Description

**`extract_employee_skills` addresses the problem of optimizing LinkedIn profiles with relevant, industry-specific skills that enhance visibility to recruiters and hiring managers**

This pattern analyzes CVs and employee profiles to extract the most impactful and searchable skills for LinkedIn profile optimization.

## Functionality

When you use `extract_employee_skills`, it pulls the following content from the input:

- A comprehensive list of skills organized into Hard Skills, Soft Skills, and Role-Specific Skills, with detailed descriptions and validating references for each skill

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
# Extracted Skills for John Doe

## Hard Skills

1. Data Analysis (Advanced Excel Certification)
 • Description: Proficient in analyzing complex datasets.
 • Reference: 5 years experience in data-driven decision making.

## Soft Skills

1. Leadership (Team Lead Experience)
 • Description: Demonstrated ability to guide and motivate teams.
 • Reference: Led cross-functional teams of 10+ members.

## Role-Specific Skills

1. Project Management (PMP Certified)
 • Description: Expert in managing complex projects.
 • Reference: Successfully delivered 20+ enterprise projects.
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: Elvee
- **Version Information**: 1.0.0
- **Published**: 14-12-2024
