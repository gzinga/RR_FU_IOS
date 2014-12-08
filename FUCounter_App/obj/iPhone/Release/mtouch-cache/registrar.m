#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#include <stdarg.h>
#include <monotouch/monotouch.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import <MessageUI/MessageUI.h>


id native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &self);
	mono_field_set_value (mthis, monotouch_nsobject_flags_field, &flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (self, mthis, true);

	return self;
}


void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


int native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox (retval);

	return res;
}


void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


int native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = monotouch_get_parameter_type (managed_method, 2);
		mobj2 = get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, bool p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


bool native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


bool native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, CGPoint p1, CGPoint* p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, float p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}



@interface AppDelegate : NSObject/*<UIApplicationDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) window;
	-(void) setWindow:(id)p0;
	-(void) applicationWillResignActive:(id)p0;
	-(void) applicationDidEnterBackground:(id)p0;
	-(void) applicationWillEnterForeground:(id)p0;
	-(void) applicationWillTerminate:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(id) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Window");
	}

	-(void) setWindow:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIWindow, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Window");
	}

	-(void) applicationWillResignActive:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "OnResignActivation");
	}

	-(void) applicationDidEnterBackground:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "DidEnterBackground");
	}

	-(void) applicationWillEnterForeground:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "WillEnterForeground");
	}

	-(void) applicationWillTerminate:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "WillTerminate");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface FUCounter_AppViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	@property (nonatomic, assign) id ButtonLoad;
	@property (nonatomic, assign) id ButtonSave;
	@property (nonatomic, assign) id Discarded;
	@property (nonatomic, assign) id DiscardedSwitch;
	@property (nonatomic, assign) id EditSwitchButton;
	@property (nonatomic, assign) id F1A;
	@property (nonatomic, assign) id F1T;
	@property (nonatomic, assign) id F2A;
	@property (nonatomic, assign) id F2T;
	@property (nonatomic, assign) id F3A;
	@property (nonatomic, assign) id F3T;
	@property (nonatomic, assign) id F4A;
	@property (nonatomic, assign) id F4T;
	@property (nonatomic, assign) id GroupNumber;
	@property (nonatomic, assign) id HairCountBox;
	@property (nonatomic, assign) id Key0;
	@property (nonatomic, assign) id Key1;
	@property (nonatomic, assign) id Key2;
	@property (nonatomic, assign) id Key3;
	@property (nonatomic, assign) id Key4;
	@property (nonatomic, assign) id Key5;
	@property (nonatomic, assign) id Key6;
	@property (nonatomic, assign) id KeyEnter;
	@property (nonatomic, assign) id LabelHairCount;
	@property (nonatomic, assign) id LabelTerminalHairCount;
	@property (nonatomic, assign) id LabelTxdHairCount;
	@property (nonatomic, assign) id LabelTxdTerminalHairCount;
	@property (nonatomic, assign) id MicroscopicNotesTextBox;
	@property (nonatomic, assign) id PatientID;
	@property (nonatomic, assign) id ProcedureDate;
	@property (nonatomic, assign) id RecordBox;
	@property (nonatomic, assign) id ResultsView;
	@property (nonatomic, assign) id StepRecordEdit;
	@property (nonatomic, assign) id TechID;
	@property (nonatomic, assign) id TerminalHairCountBox;
	@property (nonatomic, assign) id TextBoxProtocol;
	@property (nonatomic, assign) id TextBoxTotalImplantable;
	@property (nonatomic, assign) id TotalTerminalHairs;
	@property (nonatomic, assign) id TotalTransectedHairs;
	@property (nonatomic, assign) id TxdHairCountBox;
	@property (nonatomic, assign) id TxdTerminalHairCount;
	@property (nonatomic, assign) id ArtasButtonLogo;
	@property (nonatomic, assign) id ButtonInfo;
	@property (nonatomic, assign) id EditButtonExtraView;
	@property (nonatomic, assign) id FUCounterMainUI;
	@property (nonatomic, assign) id GroupNumberLabel;
	@property (nonatomic, assign) id LabelProtocol;
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) ButtonLoad;
	-(void) setButtonLoad:(id)p0;
	-(id) ButtonSave;
	-(void) setButtonSave:(id)p0;
	-(id) Discarded;
	-(void) setDiscarded:(id)p0;
	-(id) DiscardedSwitch;
	-(void) setDiscardedSwitch:(id)p0;
	-(id) EditSwitchButton;
	-(void) setEditSwitchButton:(id)p0;
	-(id) F1A;
	-(void) setF1A:(id)p0;
	-(id) F1T;
	-(void) setF1T:(id)p0;
	-(id) F2A;
	-(void) setF2A:(id)p0;
	-(id) F2T;
	-(void) setF2T:(id)p0;
	-(id) F3A;
	-(void) setF3A:(id)p0;
	-(id) F3T;
	-(void) setF3T:(id)p0;
	-(id) F4A;
	-(void) setF4A:(id)p0;
	-(id) F4T;
	-(void) setF4T:(id)p0;
	-(id) GroupNumber;
	-(void) setGroupNumber:(id)p0;
	-(id) HairCountBox;
	-(void) setHairCountBox:(id)p0;
	-(id) Key0;
	-(void) setKey0:(id)p0;
	-(id) Key1;
	-(void) setKey1:(id)p0;
	-(id) Key2;
	-(void) setKey2:(id)p0;
	-(id) Key3;
	-(void) setKey3:(id)p0;
	-(id) Key4;
	-(void) setKey4:(id)p0;
	-(id) Key5;
	-(void) setKey5:(id)p0;
	-(id) Key6;
	-(void) setKey6:(id)p0;
	-(id) KeyEnter;
	-(void) setKeyEnter:(id)p0;
	-(id) LabelHairCount;
	-(void) setLabelHairCount:(id)p0;
	-(id) LabelTerminalHairCount;
	-(void) setLabelTerminalHairCount:(id)p0;
	-(id) LabelTxdHairCount;
	-(void) setLabelTxdHairCount:(id)p0;
	-(id) LabelTxdTerminalHairCount;
	-(void) setLabelTxdTerminalHairCount:(id)p0;
	-(id) MicroscopicNotesTextBox;
	-(void) setMicroscopicNotesTextBox:(id)p0;
	-(id) PatientID;
	-(void) setPatientID:(id)p0;
	-(id) ProcedureDate;
	-(void) setProcedureDate:(id)p0;
	-(id) RecordBox;
	-(void) setRecordBox:(id)p0;
	-(id) ResultsView;
	-(void) setResultsView:(id)p0;
	-(id) StepRecordEdit;
	-(void) setStepRecordEdit:(id)p0;
	-(id) TechID;
	-(void) setTechID:(id)p0;
	-(id) TerminalHairCountBox;
	-(void) setTerminalHairCountBox:(id)p0;
	-(id) TextBoxProtocol;
	-(void) setTextBoxProtocol:(id)p0;
	-(id) TextBoxTotalImplantable;
	-(void) setTextBoxTotalImplantable:(id)p0;
	-(id) TotalTerminalHairs;
	-(void) setTotalTerminalHairs:(id)p0;
	-(id) TotalTransectedHairs;
	-(void) setTotalTransectedHairs:(id)p0;
	-(id) TxdHairCountBox;
	-(void) setTxdHairCountBox:(id)p0;
	-(id) TxdTerminalHairCount;
	-(void) setTxdTerminalHairCount:(id)p0;
	-(id) ArtasButtonLogo;
	-(void) setArtasButtonLogo:(id)p0;
	-(id) ButtonInfo;
	-(void) setButtonInfo:(id)p0;
	-(id) EditButtonExtraView;
	-(void) setEditButtonExtraView:(id)p0;
	-(id) FUCounterMainUI;
	-(void) setFUCounterMainUI:(id)p0;
	-(id) GroupNumberLabel;
	-(void) setGroupNumberLabel:(id)p0;
	-(id) LabelProtocol;
	-(void) setLabelProtocol:(id)p0;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(bool)p0;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewWillDisappear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(bool) shouldAutorotate;
	-(int) supportedInterfaceOrientations;
	-(int) preferredInterfaceOrientationForPresentation;
	-(void) DiscardButtonClick:(id)p0;
	-(void) KeyEnterTouch:(id)p0;
	-(void) Button0Click:(id)p0;
	-(void) Button1Click:(id)p0;
	-(void) Button2Click:(id)p0;
	-(void) Button3Click:(id)p0;
	-(void) Button4Click:(id)p0;
	-(void) Button5Click:(id)p0;
	-(void) Button6Click:(id)p0;
	-(void) SaveRecords:(id)p0;
	-(void) LoadRecords:(id)p0;
	-(void) ClearAll:(id)p0;
	-(void) PatientIDEditEnd:(id)p0;
	-(void) SaveFUFile:(id)p0;
	-(void) TechIDDidEnd:(id)p0;
	-(void) EmailFile:(id)p0;
	-(void) prepareForSegue:(id)p0 sender:(id)p1;
	-(void) EditSwitchEvent:(id)p0;
	-(void) StepRecordEditClick:(id)p0;
	-(void) ButtonInfoDown:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation FUCounter_AppViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(id) ButtonLoad
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ButtonLoad");
	}

	-(void) setButtonLoad:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ButtonLoad");
	}

	-(id) ButtonSave
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ButtonSave");
	}

	-(void) setButtonSave:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ButtonSave");
	}

	-(id) Discarded
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Discarded");
	}

	-(void) setDiscarded:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Discarded");
	}

	-(id) DiscardedSwitch
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_DiscardedSwitch");
	}

	-(void) setDiscardedSwitch:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISwitch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_DiscardedSwitch");
	}

	-(id) EditSwitchButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_EditSwitchButton");
	}

	-(void) setEditSwitchButton:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISwitch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_EditSwitchButton");
	}

	-(id) F1A
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F1A");
	}

	-(void) setF1A:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F1A");
	}

	-(id) F1T
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F1T");
	}

	-(void) setF1T:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F1T");
	}

	-(id) F2A
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F2A");
	}

	-(void) setF2A:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F2A");
	}

	-(id) F2T
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F2T");
	}

	-(void) setF2T:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F2T");
	}

	-(id) F3A
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F3A");
	}

	-(void) setF3A:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F3A");
	}

	-(id) F3T
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F3T");
	}

	-(void) setF3T:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F3T");
	}

	-(id) F4A
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F4A");
	}

	-(void) setF4A:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F4A");
	}

	-(id) F4T
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_F4T");
	}

	-(void) setF4T:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_F4T");
	}

	-(id) GroupNumber
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_GroupNumber");
	}

	-(void) setGroupNumber:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISegmentedControl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_GroupNumber");
	}

	-(id) HairCountBox
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_HairCountBox");
	}

	-(void) setHairCountBox:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_HairCountBox");
	}

	-(id) Key0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key0");
	}

	-(void) setKey0:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key0");
	}

	-(id) Key1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key1");
	}

	-(void) setKey1:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key1");
	}

	-(id) Key2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key2");
	}

	-(void) setKey2:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key2");
	}

	-(id) Key3
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key3");
	}

	-(void) setKey3:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key3");
	}

	-(id) Key4
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key4");
	}

	-(void) setKey4:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key4");
	}

	-(id) Key5
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key5");
	}

	-(void) setKey5:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key5");
	}

	-(id) Key6
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_Key6");
	}

	-(void) setKey6:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_Key6");
	}

	-(id) KeyEnter
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_KeyEnter");
	}

	-(void) setKeyEnter:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_KeyEnter");
	}

	-(id) LabelHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelHairCount");
	}

	-(void) setLabelHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelHairCount");
	}

	-(id) LabelTerminalHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelTerminalHairCount");
	}

	-(void) setLabelTerminalHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelTerminalHairCount");
	}

	-(id) LabelTxdHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelTxdHairCount");
	}

	-(void) setLabelTxdHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelTxdHairCount");
	}

	-(id) LabelTxdTerminalHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelTxdTerminalHairCount");
	}

	-(void) setLabelTxdTerminalHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelTxdTerminalHairCount");
	}

	-(id) MicroscopicNotesTextBox
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_MicroscopicNotesTextBox");
	}

	-(void) setMicroscopicNotesTextBox:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_MicroscopicNotesTextBox");
	}

	-(id) PatientID
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_PatientID");
	}

	-(void) setPatientID:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_PatientID");
	}

	-(id) ProcedureDate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ProcedureDate");
	}

	-(void) setProcedureDate:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ProcedureDate");
	}

	-(id) RecordBox
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_RecordBox");
	}

	-(void) setRecordBox:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_RecordBox");
	}

	-(id) ResultsView
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ResultsView");
	}

	-(void) setResultsView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ResultsView");
	}

	-(id) StepRecordEdit
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_StepRecordEdit");
	}

	-(void) setStepRecordEdit:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_StepRecordEdit");
	}

	-(id) TechID
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TechID");
	}

	-(void) setTechID:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TechID");
	}

	-(id) TerminalHairCountBox
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TerminalHairCountBox");
	}

	-(void) setTerminalHairCountBox:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TerminalHairCountBox");
	}

	-(id) TextBoxProtocol
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TextBoxProtocol");
	}

	-(void) setTextBoxProtocol:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TextBoxProtocol");
	}

	-(id) TextBoxTotalImplantable
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TextBoxTotalImplantable");
	}

	-(void) setTextBoxTotalImplantable:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TextBoxTotalImplantable");
	}

	-(id) TotalTerminalHairs
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TotalTerminalHairs");
	}

	-(void) setTotalTerminalHairs:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TotalTerminalHairs");
	}

	-(id) TotalTransectedHairs
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TotalTransectedHairs");
	}

	-(void) setTotalTransectedHairs:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TotalTransectedHairs");
	}

	-(id) TxdHairCountBox
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TxdHairCountBox");
	}

	-(void) setTxdHairCountBox:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TxdHairCountBox");
	}

	-(id) TxdTerminalHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TxdTerminalHairCount");
	}

	-(void) setTxdTerminalHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TxdTerminalHairCount");
	}

	-(id) ArtasButtonLogo
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ArtasButtonLogo");
	}

	-(void) setArtasButtonLogo:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ArtasButtonLogo");
	}

	-(id) ButtonInfo
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_ButtonInfo");
	}

	-(void) setButtonInfo:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_ButtonInfo");
	}

	-(id) EditButtonExtraView
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_EditButtonExtraView");
	}

	-(void) setEditButtonExtraView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_EditButtonExtraView");
	}

	-(id) FUCounterMainUI
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_FUCounterMainUI");
	}

	-(void) setFUCounterMainUI:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_FUCounterMainUI");
	}

	-(id) GroupNumberLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_GroupNumberLabel");
	}

	-(void) setGroupNumberLabel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_GroupNumberLabel");
	}

	-(id) LabelProtocol
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelProtocol");
	}

	-(void) setLabelProtocol:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelProtocol");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "DidReceiveMemoryWarning");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewWillAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewWillAppear");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewWillDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewWillDisappear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(bool) shouldAutorotate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ShouldAutorotate");
	}

	-(int) supportedInterfaceOrientations
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetSupportedInterfaceOrientations");
	}

	-(int) preferredInterfaceOrientationForPresentation
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "PreferredInterfaceOrientationForPresentation");
	}

	-(void) DiscardButtonClick:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "DiscardButtonClick");
	}

	-(void) KeyEnterTouch:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "KeyEnterTouch");
	}

	-(void) Button0Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button0Click");
	}

	-(void) Button1Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button1Click");
	}

	-(void) Button2Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button2Click");
	}

	-(void) Button3Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button3Click");
	}

	-(void) Button4Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button4Click");
	}

	-(void) Button5Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button5Click");
	}

	-(void) Button6Click:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Button6Click");
	}

	-(void) SaveRecords:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "SaveRecords");
	}

	-(void) LoadRecords:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "LoadRecords");
	}

	-(void) ClearAll:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ClearAll");
	}

	-(void) PatientIDEditEnd:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "PatientIDEditEnd");
	}

	-(void) SaveFUFile:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "SaveFUFile");
	}

	-(void) TechIDDidEnd:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "TechIDDidEnd");
	}

	-(void) EmailFile:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "EmailFile");
	}

	-(void) prepareForSegue:(id)p0 sender:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIStoryboardSegue, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "PrepareForSegue");
	}

	-(void) EditSwitchEvent:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISwitch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "EditSwitchEvent");
	}

	-(void) StepRecordEditClick:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "StepRecordEditClick");
	}

	-(void) ButtonInfoDown:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ButtonInfoDown");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface LoadViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	@property (nonatomic, assign) id LabelDXRate;
	@property (nonatomic, assign) id LabelNumGrafts;
	@property (nonatomic, assign) id LabelPatientID;
	@property (nonatomic, assign) id LabelProcedureDate;
	@property (nonatomic, assign) id LabelTXRate;
	@property (nonatomic, assign) id TableListFiles;
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) LabelDXRate;
	-(void) setLabelDXRate:(id)p0;
	-(id) LabelNumGrafts;
	-(void) setLabelNumGrafts:(id)p0;
	-(id) LabelPatientID;
	-(void) setLabelPatientID:(id)p0;
	-(id) LabelProcedureDate;
	-(void) setLabelProcedureDate:(id)p0;
	-(id) LabelTXRate;
	-(void) setLabelTXRate:(id)p0;
	-(id) TableListFiles;
	-(void) setTableListFiles:(id)p0;
	-(void) viewDidLoad;
	-(void) LoadSelectedRecord:(id)p0;
	-(void) GoHome:(id)p0;
	-(void) prepareForSegue:(id)p0 sender:(id)p1;
	-(void) DeleteRecord:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation LoadViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(id) LabelDXRate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelDXRate");
	}

	-(void) setLabelDXRate:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelDXRate");
	}

	-(id) LabelNumGrafts
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelNumGrafts");
	}

	-(void) setLabelNumGrafts:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelNumGrafts");
	}

	-(id) LabelPatientID
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelPatientID");
	}

	-(void) setLabelPatientID:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelPatientID");
	}

	-(id) LabelProcedureDate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelProcedureDate");
	}

	-(void) setLabelProcedureDate:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelProcedureDate");
	}

	-(id) LabelTXRate
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_LabelTXRate");
	}

	-(void) setLabelTXRate:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_LabelTXRate");
	}

	-(id) TableListFiles
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_TableListFiles");
	}

	-(void) setTableListFiles:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_TableListFiles");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) LoadSelectedRecord:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "LoadSelectedRecord");
	}

	-(void) GoHome:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GoHome");
	}

	-(void) prepareForSegue:(id)p0 sender:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIStoryboardSegue, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "PrepareForSegue");
	}

	-(void) DeleteRecord:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "DeleteRecord");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface EULAViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	@property (nonatomic, assign) id textBoxEULA;
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) textBoxEULA;
	-(void) setTextBoxEULA:(id)p0;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(bool)p0;
	-(void) NotAgreeAction:(id)p0;
	-(void) AgreedAction:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation EULAViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(id) textBoxEULA
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textBoxEULA");
	}

	-(void) setTextBoxEULA:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textBoxEULA");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) NotAgreeAction:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "NotAgreeAction");
	}

	-(void) AgreedAction:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "AgreedAction");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface RRAdBannerView : ADBannerView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation RRAdBannerView { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface EditViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	@property (nonatomic, assign) id selectorGroupNumber;
	@property (nonatomic, assign) id StepRecordControl;
	@property (nonatomic, assign) id textboxHairCount;
	@property (nonatomic, assign) id textboxRecordNum;
	@property (nonatomic, assign) id textboxTerminalHairCount;
	@property (nonatomic, assign) id textBoxTxDHairCount;
	@property (nonatomic, assign) id textboxTxdTerminalHairCount;
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) selectorGroupNumber;
	-(void) setSelectorGroupNumber:(id)p0;
	-(id) StepRecordControl;
	-(void) setStepRecordControl:(id)p0;
	-(id) textboxHairCount;
	-(void) setTextboxHairCount:(id)p0;
	-(id) textboxRecordNum;
	-(void) setTextboxRecordNum:(id)p0;
	-(id) textboxTerminalHairCount;
	-(void) setTextboxTerminalHairCount:(id)p0;
	-(id) textBoxTxDHairCount;
	-(void) setTextBoxTxDHairCount:(id)p0;
	-(id) textboxTxdTerminalHairCount;
	-(void) setTextboxTxdTerminalHairCount:(id)p0;
	-(void) UndoLast:(id)p0;
	-(void) viewDidLoad;
	-(void) TextBoxOkay:(id)p0;
	-(void) StepRecordEvent:(id)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(void) prepareForSegue:(id)p0 sender:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation EditViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(id) selectorGroupNumber
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_selectorGroupNumber");
	}

	-(void) setSelectorGroupNumber:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISegmentedControl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_selectorGroupNumber");
	}

	-(id) StepRecordControl
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_StepRecordControl");
	}

	-(void) setStepRecordControl:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_StepRecordControl");
	}

	-(id) textboxHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textboxHairCount");
	}

	-(void) setTextboxHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textboxHairCount");
	}

	-(id) textboxRecordNum
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textboxRecordNum");
	}

	-(void) setTextboxRecordNum:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textboxRecordNum");
	}

	-(id) textboxTerminalHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textboxTerminalHairCount");
	}

	-(void) setTextboxTerminalHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textboxTerminalHairCount");
	}

	-(id) textBoxTxDHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textBoxTxDHairCount");
	}

	-(void) setTextBoxTxDHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textBoxTxDHairCount");
	}

	-(id) textboxTxdTerminalHairCount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "get_textboxTxdTerminalHairCount");
	}

	-(void) setTextboxTxdTerminalHairCount:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "set_textboxTxdTerminalHairCount");
	}

	-(void) UndoLast:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "UndoLast");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) TextBoxOkay:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "TextBoxOkay");
	}

	-(void) StepRecordEvent:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "StepRecordEvent");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(void) prepareForSegue:(id)p0 sender:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIStoryboardSegue, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "PrepareForSegue");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface EditRecordsView : UIView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation EditRecordsView { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface UIRRInfoController : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(bool)p0;
	-(void) BackClick:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation UIRRInfoController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "FUCounter_App.UIRRInfoController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.UIRRInfoController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) BackClick:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.UIRRInfoController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "BackClick");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface UITableViewSource : NSObject/*<UIScrollViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UITableViewSource { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.UIKit.UITableViewSource, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface FUCounter_App_TableSource : UITableViewSource {
}
	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1;
@end
@implementation FUCounter_App_TableSource { } 

	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "FUCounter_App.TableSource, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "RowsInSection");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.TableSource, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetCell");
	}

	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "FUCounter_App.TableSource, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "RowSelected");
	}
@end

@interface MonoTouch_MessageUI_Mono_MFMailComposeViewControllerDelegate : NSObject/*<MFMailComposeViewControllerDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) mailComposeController:(id)p0 didFinishWithResult:(int)p1 error:(id)p2;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_MessageUI_Mono_MFMailComposeViewControllerDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(void) mailComposeController:(id)p0 didFinishWithResult:(int)p1 error:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.MessageUI.MFMailComposeViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.MessageUI.MFMailComposeResult, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSError, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.MessageUI.Mono_MFMailComposeViewControllerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Finished");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.MessageUI.Mono_MFMailComposeViewControllerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface __NSObject_Disposer : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	+(void) drain:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	+(void) drain:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Drain");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface MonoTouch_UIKit_UITextView__UITextViewDelegate : NSObject/*<UITextViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) textViewDidChange:(id)p0;
	-(void) scrollViewDidEndDecelerating:(id)p0;
	-(void) scrollViewWillBeginDecelerating:(id)p0;
	-(void) scrollViewDidZoom:(id)p0;
	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1;
	-(void) scrollViewWillBeginDragging:(id)p0;
	-(void) textViewDidEndEditing:(id)p0;
	-(void) textViewDidBeginEditing:(id)p0;
	-(void) scrollViewDidEndScrollingAnimation:(id)p0;
	-(void) scrollViewDidScroll:(id)p0;
	-(void) scrollViewDidScrollToTop:(id)p0;
	-(void) textViewDidChangeSelection:(id)p0;
	-(bool) textViewShouldBeginEditing:(id)p0;
	-(bool) textView:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(bool) textViewShouldEndEditing:(id)p0;
	-(bool) textView:(id)p0 shouldInteractWithTextAttachment:(id)p1 inRange:(NSRange)p2;
	-(bool) textView:(id)p0 shouldInteractWithURL:(id)p1 inRange:(NSRange)p2;
	-(bool) scrollViewShouldScrollToTop:(id)p0;
	-(id) viewForZoomingInScrollView:(id)p0;
	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2;
	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UITextView__UITextViewDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		mono_thread_detach_if_exiting ();
		[super dealloc];
	}

	-(void) textViewDidChange:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Changed");
	}

	-(void) scrollViewDidEndDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingStarted");
	}

	-(void) textViewDidEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingEnded");
	}

	-(void) textViewDidBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrolledToTop");
	}

	-(void) textViewDidChangeSelection:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "SelectionChanged");
	}

	-(bool) textViewShouldBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBeginEditing");
	}

	-(bool) textView:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.String, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldChangeText");
	}

	-(bool) textViewShouldEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldEndEditing");
	}

	-(bool) textView:(id)p0 shouldInteractWithTextAttachment:(id)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.NSTextAttachment, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldInteractWithTextAttachment");
	}

	-(bool) textView:(id)p0 shouldInteractWithURL:(id)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSUrl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldInteractWithUrl");
	}

	-(bool) scrollViewShouldScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldScrollToTop");
	}

	-(id) viewForZoomingInScrollView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF&, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Single, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingStarted");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

	static MTClassMap __monotouch_class_map [] = {
		{"NSObject", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"AppDelegate", "FUCounter_App.AppDelegate, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIResponder", "MonoTouch.UIKit.UIResponder, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIViewController", "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"FUCounter_AppViewController", "FUCounter_App.FUCounter_AppViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"LoadViewController", "FUCounter_App.LoadViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"EULAViewController", "FUCounter_App.EULAViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIView", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"ADBannerView", "MonoTouch.iAd.ADBannerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"RRAdBannerView", "FUCounter_App.RRAdBannerView, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"EditViewController", "FUCounter_App.EditViewController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"EditRecordsView", "FUCounter_App.EditRecordsView, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIRRInfoController", "FUCounter_App.UIRRInfoController, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UITableViewSource", "MonoTouch.UIKit.UITableViewSource, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"FUCounter_App_TableSource", "FUCounter_App.TableSource, FUCounter_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"NSArray", "MonoTouch.Foundation.NSArray, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSBundle", "MonoTouch.Foundation.NSBundle, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSIndexPath", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSURLRequest", "MonoTouch.Foundation.NSUrlRequest, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSString", "MonoTouch.Foundation.NSString, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSURL", "MonoTouch.Foundation.NSUrl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSAutoreleasePool", "MonoTouch.Foundation.NSAutoreleasePool, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSError", "MonoTouch.Foundation.NSError, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UINavigationController", "MonoTouch.UIKit.UINavigationController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MFMailComposeViewController", "MonoTouch.MessageUI.MFMailComposeViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_MessageUI_Mono_MFMailComposeViewControllerDelegate", "MonoTouch.MessageUI.Mono_MFMailComposeViewControllerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIAlertView", "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIApplication", "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIControl", "MonoTouch.UIKit.UIControl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIButton", "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIColor", "MonoTouch.UIKit.UIColor, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIDevice", "MonoTouch.UIKit.UIDevice, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISegmentedControl", "MonoTouch.UIKit.UISegmentedControl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIScrollView", "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITableView", "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITableViewCell", "MonoTouch.UIKit.UITableViewCell, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextField", "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIWindow", "MonoTouch.UIKit.UIWindow, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSTextAttachment", "MonoTouch.UIKit.NSTextAttachment, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextPosition", "MonoTouch.UIKit.UITextPosition, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextRange", "MonoTouch.UIKit.UITextRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextSelectionRect", "MonoTouch.UIKit.UITextSelectionRect, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UILabel", "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISwitch", "MonoTouch.UIKit.UISwitch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITraitCollection", "MonoTouch.UIKit.UITraitCollection, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIWebView", "MonoTouch.UIKit.UIWebView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIStepper", "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIStoryboard", "MonoTouch.UIKit.UIStoryboard, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIStoryboardSegue", "MonoTouch.UIKit.UIStoryboardSegue, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSException", "MonoTouch.Foundation.NSException, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSData", "MonoTouch.Foundation.NSData, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSDictionary", "MonoTouch.Foundation.NSDictionary, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__NSObject_Disposer", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UITextView__UITextViewDelegate", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextView", "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{ NULL, NULL, NULL },
	};


void monotouch_create_classes () {
	__monotouch_class_map [0].handle = objc_getClass ("NSObject");
	__monotouch_class_map [1].handle = [AppDelegate class];
	__monotouch_class_map [2].handle = objc_getClass ("UIResponder");
	__monotouch_class_map [3].handle = objc_getClass ("UIViewController");
	__monotouch_class_map [4].handle = [FUCounter_AppViewController class];
	__monotouch_class_map [5].handle = [LoadViewController class];
	__monotouch_class_map [6].handle = [EULAViewController class];
	__monotouch_class_map [7].handle = objc_getClass ("UIView");
	__monotouch_class_map [8].handle = objc_getClass ("ADBannerView");
	__monotouch_class_map [9].handle = [RRAdBannerView class];
	__monotouch_class_map [10].handle = [EditViewController class];
	__monotouch_class_map [11].handle = [EditRecordsView class];
	__monotouch_class_map [12].handle = [UIRRInfoController class];
	__monotouch_class_map [13].handle = objc_getClass ("UITableViewSource");
	__monotouch_class_map [14].handle = [FUCounter_App_TableSource class];
	__monotouch_class_map [15].handle = objc_getClass ("NSArray");
	__monotouch_class_map [16].handle = objc_getClass ("NSBundle");
	__monotouch_class_map [17].handle = objc_getClass ("NSIndexPath");
	__monotouch_class_map [18].handle = objc_getClass ("NSURLRequest");
	__monotouch_class_map [19].handle = objc_getClass ("NSString");
	__monotouch_class_map [20].handle = objc_getClass ("NSURL");
	__monotouch_class_map [21].handle = objc_getClass ("NSAutoreleasePool");
	__monotouch_class_map [22].handle = objc_getClass ("NSError");
	__monotouch_class_map [23].handle = objc_getClass ("UINavigationController");
	__monotouch_class_map [24].handle = objc_getClass ("MFMailComposeViewController");
	__monotouch_class_map [25].handle = objc_getClass ("MonoTouch_MessageUI_Mono_MFMailComposeViewControllerDelegate");
	__monotouch_class_map [26].handle = objc_getClass ("UIAlertView");
	__monotouch_class_map [27].handle = objc_getClass ("UIApplication");
	__monotouch_class_map [28].handle = objc_getClass ("UIControl");
	__monotouch_class_map [29].handle = objc_getClass ("UIButton");
	__monotouch_class_map [30].handle = objc_getClass ("UIColor");
	__monotouch_class_map [31].handle = objc_getClass ("UIDevice");
	__monotouch_class_map [32].handle = objc_getClass ("UISegmentedControl");
	__monotouch_class_map [33].handle = objc_getClass ("UIScrollView");
	__monotouch_class_map [34].handle = objc_getClass ("UITableView");
	__monotouch_class_map [35].handle = objc_getClass ("UITableViewCell");
	__monotouch_class_map [36].handle = objc_getClass ("UITextField");
	__monotouch_class_map [37].handle = objc_getClass ("UIWindow");
	__monotouch_class_map [38].handle = objc_getClass ("NSTextAttachment");
	__monotouch_class_map [39].handle = objc_getClass ("UITextPosition");
	__monotouch_class_map [40].handle = objc_getClass ("UITextRange");
	__monotouch_class_map [41].handle = objc_getClass ("UITextSelectionRect");
	__monotouch_class_map [42].handle = objc_getClass ("UILabel");
	__monotouch_class_map [43].handle = objc_getClass ("UISwitch");
	__monotouch_class_map [44].handle = objc_getClass ("UITraitCollection");
	__monotouch_class_map [45].handle = objc_getClass ("UIWebView");
	__monotouch_class_map [46].handle = objc_getClass ("UIStepper");
	__monotouch_class_map [47].handle = objc_getClass ("UIStoryboard");
	__monotouch_class_map [48].handle = objc_getClass ("UIStoryboardSegue");
	__monotouch_class_map [49].handle = objc_getClass ("NSException");
	__monotouch_class_map [50].handle = objc_getClass ("NSData");
	__monotouch_class_map [51].handle = objc_getClass ("NSDictionary");
	__monotouch_class_map [52].handle = objc_getClass ("__NSObject_Disposer");
	__monotouch_class_map [53].handle = objc_getClass ("MonoTouch_UIKit_UITextView__UITextViewDelegate");
	__monotouch_class_map [54].handle = objc_getClass ("UITextView");
	monotouch_setup_classmap (__monotouch_class_map, 55);
}

