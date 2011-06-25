#include <ruby.h>
#include <uuid/uuid.h>

VALUE Identifier;

VALUE method_generate(VALUE self)
{
  char result[] = "00000000-0000-0000-0000-000000000000";
  
  uuid_t uuid;
  uuid_generate(uuid);
  uuid_unparse(uuid, result);
  
  return rb_str_new(result, strlen(result));
}

void Init_identifier() 
{
  Identifier = rb_define_module("Identifier");
  rb_define_singleton_method(Identifier, "generate", method_generate, 0);
}