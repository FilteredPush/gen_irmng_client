# gen_irmng_client
Artifacts to generate a client for the IRMNG REST service, includes a modified swagger file that allows generation of client side classes. 

Usage:

	mkdir temp

	sh gen.sh

	cd temp

    unzip api.zip

Generated okhttp client code will be in temp/src, with needed libraries listed as dependencies in the pom.

The generated code will need two changes to work (1) valid_IRMNG_ID is an Integer not a Boolean.  (2) the habitat flags are serialized as 0/1/NULL into Boolean values, but the gson deserialization doesn't handle this correctly, so a BooleanTypeAdaptor needs to be added.  See: filteredpush/sci_name_qc aac14f1b7f233ba6582125d43876b2d0793667a2 
