#ifndef INCLUDED_HxModule
#define INCLUDED_HxModule

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS0(HxModule)


class HXCPP_CLASS_ATTRIBUTES  HxModule_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef HxModule_obj OBJ_;
		HxModule_obj();
		Void __construct();

	public:
		inline void *operator new( size_t inSize, bool inContainer=false)
			{ return hx::Object::operator new(inSize,inContainer); }
		static hx::ObjectPtr< HxModule_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~HxModule_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		::String __ToString() const { return HX_CSTRING("HxModule"); }

		static Void main( );
		static Dynamic main_dyn();

		static int test( );
		static Dynamic test_dyn();

};


#endif /* INCLUDED_HxModule */ 
