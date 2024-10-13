(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1293 0)
(declare-sort var2784 0)
(declare-sort var3456 0)
(declare-sort var1669 0)
(declare-sort var2836 0)
(declare-sort var1556 0)
(declare-sort var2470 0)
(declare-sort var677 0)
(declare-sort var2590 0)
(declare-sort var2987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2784-init () var2784)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun <init>/1228603609 (var2784 Int) void)
(declare-fun var3456-init () var3456)
(declare-fun <init>/1420670895 (var3456 ClassObject var1669 var1293 (Array Int ClassObject)) void)
(declare-fun cast-from-var2784-to-var1669 (var2784) var1669)
(declare-fun var677_doPrivileged/-2015528403 (var2590 var2836) var2470)
(declare-fun cast-from-var3456-to-var2590 (var3456) var2590)
(declare-fun cast-from-var2470-to-var2987 (var2470) var2987)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1293 var1293)
(declare-const null-ClassObject ClassObject)
(declare-const var1556-CREATE_ADAPTER_INFO_ACC_CTXT var2836)
(declare-const var2219 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var2219 null-__Array__Int__ClassObject__)))
(declare-const var2128 var1293) ; Statement: r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader 
(assert (not (= var2128 null-var1293)))
(define-const var241 ClassObject null-ClassObject) ; Statement: r24 = null 
(define-const var2882 var2784 var2784-init) ; Statement: $r26 = new java.util.ArrayList 
(define-const var203 Int (getLength-Arr-ClassObject-1 var2219)) ; Statement: $i0 = lengthof r1 
(assert true)
;(assert (<init>/1228603609 var2882 var203)) ; Statement: specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var2882!1 var2784)
(declare-const var203!1 Int)
(define-const var974 Int (getLength-Arr-ClassObject-1 var2219)) ; Statement: i1 = lengthof r1 
(define-const var239 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto (branch) 
(assert (>= var239 var974)) ; Cond: i4 >= i1 
 ; Statement: if r24 != null goto $r25 = r24 
(assert (not (= var241 null-ClassObject))) ; Cond: r24 != null 
(define-const var3069 ClassObject var241) ; Statement: $r25 = r24 
(assert true) ; Non Conditional
(define-const var1930 var3456 var3456-init) ; Statement: $r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3 
(assert true)
;(assert (<init>/1420670895 var1930 var3069 (cast-from-var2784-to-var1669 var2882!1) var2128 var2219)) ; Statement: specialinvoke $r32.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3: void <init>(java.lang.Class,java.util.List,jdk.nashorn.internal.runtime.linker.ClassAndLoader,java.lang.Class[])>($r25, $r26, r3, r1) 

(declare-const var1930!1 var3456)
(declare-const var3069!1 ClassObject)
(declare-const var2882!2 var2784)
(declare-const var2128!1 var1293)
(declare-const var2219!1 (Array Int ClassObject))
(define-const var870 var2836 var1556-CREATE_ADAPTER_INFO_ACC_CTXT) ; Statement: $r4 = <jdk.nashorn.internal.runtime.linker.JavaAdapterFactory: java.security.AccessControlContext CREATE_ADAPTER_INFO_ACC_CTXT> 
(define-const var1060 var2470 (var677_doPrivileged/-2015528403 (cast-from-var3456-to-var2590 var1930!1) var870)) ; Statement: $r5 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction,java.security.AccessControlContext)>($r32, $r4) 
(define-const var1593 var2987 (cast-from-var2470-to-var2987 var1060)) ; Statement: $r6 = (jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2784-init=([], java.util.ArrayList), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), <init>/1228603609=([java.util.ArrayList, int], void), var3456-init=([], jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3), <init>/1420670895=([jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3, java.lang.Class, java.util.List, jdk.nashorn.internal.runtime.linker.ClassAndLoader, java.lang.Class[]], void), cast-from-var2784-to-var1669=([java.util.ArrayList], java.util.List), var677_doPrivileged/-2015528403=([java.security.PrivilegedAction, java.security.AccessControlContext], java.lang.Object), cast-from-var3456-to-var2590=([jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3], java.security.PrivilegedAction), cast-from-var2470-to-var2987=([java.lang.Object], jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo)}
; {var2219=r1, var1293=jdk.nashorn.internal.runtime.linker.ClassAndLoader, var2128=r3, var241=r24, var2784=java.util.ArrayList, var2882=$r26, var203=$i0, var974=i1, var239=i4, var3069=$r25, var3456=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3, var1930=$r32, var1669=java.util.List, var2836=java.security.AccessControlContext, var1556=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory, var870=$r4, var2470=java.lang.Object, var677=java.security.AccessController, var2590=java.security.PrivilegedAction, var1060=$r5, var2987=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo, var1593=$r6}
; {r1=var2219, jdk.nashorn.internal.runtime.linker.ClassAndLoader=var1293, r3=var2128, r24=var241, java.util.ArrayList=var2784, $r26=var2882, $i0=var203, i1=var974, i4=var239, $r25=var3069, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3=var3456, $r32=var1930, java.util.List=var1669, java.security.AccessControlContext=var2836, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory=var1556, $r4=var870, java.lang.Object=var2470, java.security.AccessController=var677, java.security.PrivilegedAction=var2590, $r5=var1060, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo=var2987, $r6=var1593}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.Class[];	r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader;	r24 = null;	$r26 = new java.util.ArrayList;	$i0 = lengthof r1;	specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0);	i1 = lengthof r1;	i4 = 0;	if i4 >= i1 goto (branch);	if r24 != null goto $r25 = r24;	$r25 = r24;	$r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3;	specialinvoke $r32.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3: void <init>(java.lang.Class,java.util.List,jdk.nashorn.internal.runtime.linker.ClassAndLoader,java.lang.Class[])>($r25, $r26, r3, r1);	$r4 = <jdk.nashorn.internal.runtime.linker.JavaAdapterFactory: java.security.AccessControlContext CREATE_ADAPTER_INFO_ACC_CTXT>;	$r5 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction,java.security.AccessControlContext)>($r32, $r4);	$r6 = (jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo) $r5;	return $r6
;block_num 5