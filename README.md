# README

This repository is a reproduction of ActiveStorage/ActiveRecord combination bug.

Check commit [085c01f7](https://github.com/Baxxx/attach_updated_at/commit/085c01f7ccf578012a267fc8f1c682cb81ac4a2c).

## Steps to reproduce:

- Create a model with `record_timestamps = false`.
- Add `has_one_attached` relation to the model.
- Call `model_instance.attach(file)`. This will update model's updated_at.
