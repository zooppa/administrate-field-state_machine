# Administrate::Field::StateMachine

[![Build Status](https://travis-ci.com/zooppa/administrate-field-state_machine.svg?branch=master)](https://travis-ci.com/zooppa/administrate-field-state_machine)
[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-state_machine/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-state_machine)

A plugin to handle [state machine] attributes in [Administrate].

---

### IMPORTANT NOTICE

**This gem is not actively maintained anymore**.

If you’re interested in taking over and steward the project moving forward, please get in touch.

---

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
