#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

extern void hello_user_c();

extern void my_sqrt_c(double *value,
                      double *result);


static const R_CMethodDef cMethods[] = {
  {"hello_user_c", (DL_FUNC) &hello_user_c, 0},
  {"my_sqrt_c", (DL_FUNC) &my_sqrt_c, 2},
  {NULL, NULL, 0}
};

void R_init_FortranwithR(DllInfo *dll)
{
  R_registerRoutines(dll, cMethods, NULL, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
