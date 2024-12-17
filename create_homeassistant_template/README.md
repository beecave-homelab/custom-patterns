# Create Home Assistant Template

## Description

**`Create Home Assistant Template` addresses the problem of creating consistent and well-structured templates for Home Assistant automations and scripts.**

This pattern helps you generate templates, scripts, and automations for Home Assistant, ensuring consistency and best practices across your home automation setup.

## Functionality

When you use `Create Home Assistant Template`, it pulls the following content from the input:

- The user's request for what to create.
- The user's request for what to include in the template.

### Use cases

`Create Home Assistant Template` output can help you in multiple ways, including:

1. **`Automation Template Generation`**
   Quickly create standardized templates for common automation patterns in Home Assistant, ensuring consistency and reducing setup time.
2. **`Script Template Creation`**
   Generate well-structured script templates with proper mode configurations and service calls, making it easier to maintain complex sequences.

## Usage

You can reference the `Create Home Assistant Template` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_homeassistant_template/system.md
```

## Output

Here's an abridged output example from `Create Home Assistant Template`.

```yaml
automation:
  - alias: "Living Room Motion Light"
    description: "Turn on lights when motion is detected"
    trigger:
      - platform: state
        entity_id: binary_sensor.living_room_motion
        to: "on"
    condition:
      - condition: numeric_state
        entity_id: sensor.living_room_illuminance
        below: 10
    action:
      - service: light.turn_on
        target:
          entity_id: light.living_room
        data:
          brightness_pct: 100
          transition: 2
```

## Meta

- **Author**: Elvee
- **Version Information**: 1.0.0
- **Published**: 17-12-2024
