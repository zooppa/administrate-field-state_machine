# Administrate::Field::StateMachine

[![No Maintenance Intended](https://unmaintained.tech/badge.svg)](https://unmaintained.tech/) [![Build status](https://github.com/zooppa/administrate-field-state_machine/actions/workflows/build.yml/badge.svg)](https://github.com/zooppa/administrate-field-state_machine/actions/workflows/build.yml) [![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-state_machine/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-state_machine)

---

### IMPORTANT NOTICE

**This gem is not actively maintained anymore**.

If you’re interested in taking over and steward the project moving forward, please get in touch.

---

A plugin to handle [state machine] attributes in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-state_machine', '~> 0.2.0'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::StateMachine
}.freeze
```

Add to your `FooController`:

```ruby
def permitted_attributes
  super + [:state_event]
end
```

[`state_event`](https://github.com/state-machines/state_machines#explicit-vs-implicit-event-transitions) is used by the state machine gem to implicitly trigger the event.

## About

Administrate::Field::StateMachine is maintained by [Zooppa].

[state machine]: https://github.com/state-machines/state_machines
[administrate]: https://github.com/thoughtbot/administrate
[zooppa]: https://www.zooppa.com/
