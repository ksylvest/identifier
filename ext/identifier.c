#include "ruby.h"

#include <uuid/uuid.h>

VALUE method_generate(VALUE self);

void Init_identifier() {
  Identifier = rb_define_module("Identifier");
  rb_define_method(Identifier, "generate", method_generate, 0);
}

VALUE method_generate(VALUE self)
{
  uuid_t uuid;
  char result[38];
  
  uuid_generate(uuid);
  uuid_unparse(uuid, result);
  
  return StringValue(result);
}