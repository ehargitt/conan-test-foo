#include "project_foo/foo.h"
#include <boost/log/trivial.hpp>

Foo::Foo() {}

void Foo::Log(const std::string& info_string) {
  BOOST_LOG_TRIVIAL(info) << info_string;
}
