#include <systemc>

SC_MODULE(Hello_SystemC) {
  SC_CTOR(Hello_SystemC) {
    SC_THREAD(main_thread);
  }

  void main_thread(void) {
    std::cout << "Hello world!\n";
  }
};

int sc_main(int sc_argc, char* sc_argv[]) {
  Hello_SystemC HelloWorld_i("HelloWorld_i");
  sc_core::sc_start();
  return 0;
}
