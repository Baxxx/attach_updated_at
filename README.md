# README

This repository is a reproduction of ActiveStorage/ActiveRecord combination bug.

## Steps to reproduce:

- Create a model with `record_timestamps = false`.
- Add `has_one_attached` relation to the model.
- Call `model_instance.attach(file)`. This will update model's updated_at.
