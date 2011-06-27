#include <ruby.h>

#ifdef UUID
#include <uuid/uuid.h>
#endif

VALUE Identifier;

VALUE method_generate(VALUE self)
{
#ifdef UUID
  
  char result[] = "00000000-0000-0000-0000-000000000000";
  
  uuid_t uuid;
  uuid_generate(uuid);
  uuid_unparse(uuid, result);
  
  return rb_str_new(result, strlen(result));
  
#endif
}

void Init_identifier() 
{
#ifdef UUID
  
  Identifier = rb_define_module("Identifier");
  rb_define_singleton_method(Identifier, "generate", method_generate, 0);
  
#endif
}