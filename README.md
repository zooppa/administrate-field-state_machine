# Administrate::Field::StateMachine

[![Code Climate](https://codeclimate.com/github/z-productions/administrate-field-state_machine/badges/gpa.svg)](https://codeclimate.com/github/z-productions/administrate-field-state_machine)

A plugin to handle [state machine] attributes in [Administrate].

## IMPORTANT NOTICE
This gem relies on the original resource being passed to the field.
This functionality is not yet merged in Administrate
([a PR has been in review for a while](thoughtbot/administrate#381)),
so you will have to fork and [patch it](https://git.io/vXhCo) yourself.

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-state_machine', '~> 0.0.1'
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
