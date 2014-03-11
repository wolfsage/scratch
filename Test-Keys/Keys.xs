#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

MODULE = Test::Keys		PACKAGE = Test::Keys		

void printit(hv)
	SV *hv;
    PPCODE:
	printf("TOTAL: %d\nUSED: %d\nITER: %d\n",
		HvTOTALKEYS((HV*)SvRV(hv)),
		HvUSEDKEYS((HV*)SvRV(hv)),
		hv_iterinit((HV*)SvRV(hv))
	);

		
