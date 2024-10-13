(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var923 0)
(declare-sort var1843 0)
(declare-sort var2622 0)
(declare-sort var1504 0)
(declare-sort var3822 0)
(declare-sort var1148 0)
(declare-sort var2380 0)
(declare-sort var1272 0)
(declare-sort var2894 0)
(declare-sort var2955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2622!class ClassObject)
(declare-fun var1843-init () var1843)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun <init>/1228603609 (var1843 Int) void)
(declare-fun var1504-init () var1504)
(declare-fun <init>/1420670895 (var1504 ClassObject var3822 var923 (Array Int ClassObject)) void)
(declare-fun cast-from-var1843-to-var3822 (var1843) var3822)
(declare-fun var1272_doPrivileged/-2015528403 (var2894 var1148) var2622)
(declare-fun cast-from-var1504-to-var2894 (var1504) var2894)
(declare-fun cast-from-var2622-to-var2955 (var2622) var2955)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var923 var923)
(declare-const null-ClassObject ClassObject)
(declare-const var2380-CREATE_ADAPTER_INFO_ACC_CTXT var1148)
(declare-const var250 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var250 null-__Array__Int__ClassObject__)))
(declare-const var2803 var923) ; Statement: r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader 
(assert (not (= var2803 null-var923)))
(define-const var273 ClassObject null-ClassObject) ; Statement: r24 = null 
(define-const var2319 var1843 var1843-init) ; Statement: $r26 = new java.util.ArrayList 
(define-const var979 Int (getLength-Arr-ClassObject-1 var250)) ; Statement: $i0 = lengthof r1 
(assert true)
;(assert (<init>/1228603609 var2319 var979)) ; Statement: specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var2319!1 var1843)
(declare-const var979!1 Int)
(define-const var3752 Int (getLength-Arr-ClassObject-1 var250)) ; Statement: i1 = lengthof r1 
(define-const var1252 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto (branch) 
(assert (>= var1252 var3752)) ; Cond: i4 >= i1 
 ; Statement: if r24 != null goto $r25 = r24 
(assert (not (not (= var273 null-ClassObject)))) ; Negate: Cond: r24 != null  
(define-const var1288 ClassObject var2622!class) ; Statement: $r25 = class "Ljava/lang/Object;" 
 ; Statement: goto [?= $r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3] 
(assert true) ; Non Conditional
(define-const var2253 var1504 var1504-init) ; Statement: $r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3 
(assert true)
;(assert (<init>/1420670895 var2253 var1288 (cast-from-var1843-to-var3822 var2319!1) var2803 var250)) ; Statement: specialinvoke $r32.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3: void <init>(java.lang.Class,java.util.List,jdk.nashorn.internal.runtime.linker.ClassAndLoader,java.lang.Class[])>($r25, $r26, r3, r1) 

(declare-const var2253!1 var1504)
(declare-const var1288!1 ClassObject)
(declare-const var2319!2 var1843)
(declare-const var2803!1 var923)
(declare-const var250!1 (Array Int ClassObject))
(define-const var3394 var1148 var2380-CREATE_ADAPTER_INFO_ACC_CTXT) ; Statement: $r4 = <jdk.nashorn.internal.runtime.linker.JavaAdapterFactory: java.security.AccessControlContext CREATE_ADAPTER_INFO_ACC_CTXT> 
(define-const var986 var2622 (var1272_doPrivileged/-2015528403 (cast-from-var1504-to-var2894 var2253!1) var3394)) ; Statement: $r5 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction,java.security.AccessControlContext)>($r32, $r4) 
(define-const var874 var2955 (cast-from-var2622-to-var2955 var986)) ; Statement: $r6 = (jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1843-init=([], java.util.ArrayList), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), <init>/1228603609=([java.util.ArrayList, int], void), var1504-init=([], jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3), <init>/1420670895=([jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3, java.lang.Class, java.util.List, jdk.nashorn.internal.runtime.linker.ClassAndLoader, java.lang.Class[]], void), cast-from-var1843-to-var3822=([java.util.ArrayList], java.util.List), var1272_doPrivileged/-2015528403=([java.security.PrivilegedAction, java.security.AccessControlContext], java.lang.Object), cast-from-var1504-to-var2894=([jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3], java.security.PrivilegedAction), cast-from-var2622-to-var2955=([java.lang.Object], jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo)}
; {var250=r1, var923=jdk.nashorn.internal.runtime.linker.ClassAndLoader, var2803=r3, var273=r24, var1843=java.util.ArrayList, var2319=$r26, var979=$i0, var3752=i1, var1252=i4, var2622=java.lang.Object, var1288=$r25, var1504=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3, var2253=$r32, var3822=java.util.List, var1148=java.security.AccessControlContext, var2380=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory, var3394=$r4, var1272=java.security.AccessController, var2894=java.security.PrivilegedAction, var986=$r5, var2955=jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo, var874=$r6}
; {r1=var250, jdk.nashorn.internal.runtime.linker.ClassAndLoader=var923, r3=var2803, r24=var273, java.util.ArrayList=var1843, $r26=var2319, $i0=var979, i1=var3752, i4=var1252, java.lang.Object=var2622, $r25=var1288, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3=var1504, $r32=var2253, java.util.List=var3822, java.security.AccessControlContext=var1148, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory=var2380, $r4=var3394, java.security.AccessController=var1272, java.security.PrivilegedAction=var2894, $r5=var986, jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo=var2955, $r6=var874}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.Class[];	r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader;	r24 = null;	$r26 = new java.util.ArrayList;	$i0 = lengthof r1;	specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0);	i1 = lengthof r1;	i4 = 0;	if i4 >= i1 goto (branch);	if r24 != null goto $r25 = r24;	$r25 = class "Ljava/lang/Object;";	goto [?= $r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3];	$r32 = new jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3;	specialinvoke $r32.<jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$3: void <init>(java.lang.Class,java.util.List,jdk.nashorn.internal.runtime.linker.ClassAndLoader,java.lang.Class[])>($r25, $r26, r3, r1);	$r4 = <jdk.nashorn.internal.runtime.linker.JavaAdapterFactory: java.security.AccessControlContext CREATE_ADAPTER_INFO_ACC_CTXT>;	$r5 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction,java.security.AccessControlContext)>($r32, $r4);	$r6 = (jdk.nashorn.internal.runtime.linker.JavaAdapterFactory$AdapterInfo) $r5;	return $r6
;block_num 5