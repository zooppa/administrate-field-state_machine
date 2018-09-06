# Administrate::Field::StateMachine

[![Build Status](https://semaphoreci.com/api/v1/zooppa/administrate-field-state_machine/branches/master/badge.svg)](https://semaphoreci.com/zooppa/administrate-field-state_machine)
[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-state_machine/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-state_machine)

A plugin to handle [state machine] attributes in [Administrate].

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-state_machine', '~> 0.1.2'
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

Administrate::Field::StateMachine is maintained by [z.productions].

[state machine]: https://github.com/state-machines/state_machines
[Administrate]: https://github.com/thoughtbot/administrate
[z.productions]: https://www.z.productions/
