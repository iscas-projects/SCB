(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var856 0)
(declare-sort var2936 0)
(declare-sort var3864 0)
(declare-sort var3776 0)
(declare-sort var3319 0)
(declare-sort var3735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const __Array__Int__Int__!class ClassObject)
(declare-fun var856-init () var856)
(declare-fun <init>/2102648630 (var856 String Int) void)
(declare-fun var856_$values/991525279 () (Array Int var856))
(declare-fun var2936_nativeOrder/1666373572 () var2936)
(declare-fun equals/-1650223740 (var3864 var3864) Bool)
(declare-fun cast-from-var2936-to-var3864 (var2936) var3864)
(declare-fun var856_getUnsafe/-2064475158 () var3776)
(declare-fun arrayBaseOffset/-779853011 (var3776 ClassObject) Int)
(declare-fun var3319_getProperty/258823597 (String) String)
(declare-fun var3735-init () var3735)
(declare-fun <init>/1750087229 (var3735) void)
(declare-const var2936-BIG_ENDIAN var2936)
(declare-const var856-theUnsafe var3776)
(define-const var2677 var856 var856-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator 
(assert true)
;(assert (<init>/2102648630 var2677 "INSTANCE" 0)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: void <init>(java.lang.String,int)>("INSTANCE", 0) 

(declare-const var2677!1 var856)
(declare-const var2754 String)
(declare-const var3209 Int)
(define-const var451 var856 var2677!1) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator INSTANCE> = $r0 
(define-const var2605 (Array Int var856) var856_$values/991525279) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $values()>() 
(define-const var1828 (Array Int var856) var2605) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $VALUES> = $r1 
(define-const var2459 var2936 var2936_nativeOrder/1666373572) ; Statement: $r3 = staticinvoke <java.nio.ByteOrder: java.nio.ByteOrder nativeOrder()>() 
(define-const var610 var2936 var2936-BIG_ENDIAN) ; Statement: $r2 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
(assert true)
(define-const var2842 Bool (equals/-1650223740 (cast-from-var2936-to-var3864 var2459) (cast-from-var2936-to-var3864 var610))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
(define-const var2742 Bool var2842) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: boolean BIG_ENDIAN> = $z0 
(define-const var3299 var3776 var856_getUnsafe/-2064475158) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe getUnsafe()>() 
(define-const var1451 var3776 var3299) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe> = $r4 
(define-const var3241 var3776 var856-theUnsafe) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe> 
(assert true)
(define-const var2636 Int (arrayBaseOffset/-779853011 var3241 __Array__Int__Int__!class)) ; Statement: $i0 = virtualinvoke $r5.<sun.misc.Unsafe: int arrayBaseOffset(java.lang.Class)>(class "[B") 
(define-const var405 Int var2636) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: int BYTE_ARRAY_BASE_OFFSET> = $i0 
(define-const var2328 String "64") ; Statement: $r7 = "64" 
(define-const var659 String (var3319_getProperty/258823597 "sun.arch.data.model")) ; Statement: $r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.arch.data.model") 
(assert true)
(define-const var1844 Bool (= var2328 var659)) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.Error 
(assert (= (ite var1844 1 0) 0)) ; Cond: $z1 == 0 
(define-const var430 var3735 var3735-init) ; Statement: $r9 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var430)) ; Statement: specialinvoke $r9.<java.lang.Error: void <init>()>() 

(declare-const var430!1 var3735)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var856-init=([], com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator), <init>/2102648630=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator, java.lang.String, int], void), var856_$values/991525279=([], com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[]), var2936_nativeOrder/1666373572=([], java.nio.ByteOrder), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var2936-to-var3864=([java.nio.ByteOrder], java.lang.Object), var856_getUnsafe/-2064475158=([], sun.misc.Unsafe), arrayBaseOffset/-779853011=([sun.misc.Unsafe, java.lang.Class], int), var3319_getProperty/258823597=([java.lang.String], java.lang.String), var3735-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var856=com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator, var2677=$r0, var2754="INSTANCE", var3209=0, var451=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator INSTANCE>, var2605=$r1, var1828=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $VALUES>, var2936=java.nio.ByteOrder, var2459=$r3, var610=$r2, var3864=java.lang.Object, var2842=$z0, var2742=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: boolean BIG_ENDIAN>, var3776=sun.misc.Unsafe, var3299=$r4, var1451=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe>, var3241=$r5, var2636=$i0, var405=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: int BYTE_ARRAY_BASE_OFFSET>, var2328=$r7, var3319=java.lang.System, var659=$r6, var1844=$z1, var3735=java.lang.Error, var430=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator=var856, $r0=var2677, "INSTANCE"=var2754, 0=var3209, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator INSTANCE>=var451, $r1=var2605, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $VALUES>=var1828, java.nio.ByteOrder=var2936, $r3=var2459, $r2=var610, java.lang.Object=var3864, $z0=var2842, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: boolean BIG_ENDIAN>=var2742, sun.misc.Unsafe=var3776, $r4=var3299, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe>=var1451, $r5=var3241, $i0=var2636, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: int BYTE_ARRAY_BASE_OFFSET>=var405, $r7=var2328, java.lang.System=var3319, $r6=var659, $z1=var1844, java.lang.Error=var3735, $r9=var430}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: void <init>(java.lang.String,int)>("INSTANCE", 0);	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator INSTANCE> = $r0;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $values()>();	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator[] $VALUES> = $r1;	$r3 = staticinvoke <java.nio.ByteOrder: java.nio.ByteOrder nativeOrder()>();	$r2 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: boolean BIG_ENDIAN> = $z0;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe getUnsafe()>();	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe> = $r4;	$r5 = <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: sun.misc.Unsafe theUnsafe>;	$i0 = virtualinvoke $r5.<sun.misc.Unsafe: int arrayBaseOffset(java.lang.Class)>(class "[B");	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator: int BYTE_ARRAY_BASE_OFFSET> = $i0;	$r7 = "64";	$r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.arch.data.model");	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z1 == 0 goto $r9 = new java.lang.Error;	$r9 = new java.lang.Error;	specialinvoke $r9.<java.lang.Error: void <init>()>();	throw $r9
;block_num 2