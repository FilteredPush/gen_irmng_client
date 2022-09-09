# gen_irmng_client
Artifacts to generate a client for the IRMNG REST service, includes a modified swagger file that allows generation of client side classes. 

Usage:

	sh gen.sh

	cd temp

    unzip api.zip

Generated okhttp client code will be in temp/src, with needed libraries listed as dependencies in the pom.

The generated code will need two changes to work (1) valid_IRMNG_ID is an Integer not a Boolean.  (2) the habitat flags are serialized as 0/1/NULL into Boolean values, but the gson deserialization doesn't handle this correctly, so a BooleanTypeAdaptor needs to be added.  See: filteredpush/sci_name_qc ecf448d810f93243334ca3ae4c4877c4f35d4db6 and a8e15b038428a0f723aa3baa18c6b94511813c9b 
