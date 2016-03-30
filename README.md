# Condo [![Build Status](https://travis-ci.org/sachinsiby/condo.svg?branch=master)](https://travis-ci.org/sachinsiby/condo)

A gem that implements the "[shared database/shared schema](https://msdn.microsoft.com/en-us/library/aa479086.aspx#mlttntda_sdshs)" multi-tenancy approach
on ActiveRecord models using model scoping.


## Usage

Ensure that tenanted model tables have a `tenant_id` foreign key on them.
For every model that needs to be tenanted:

```ruby
  class Model < ActiveRecord::Base
    tenanted
  end
```

The onus is on the library user to switch the tenant in application code.
This is generally done in the `ApplicationController` or on a rails console.
The only requirement is that the tenant object responds to `id`:

```ruby
  Condo::Tenant.switch!(tenant)
```
