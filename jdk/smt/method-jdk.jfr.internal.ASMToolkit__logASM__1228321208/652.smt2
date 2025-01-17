(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3468 0)
(declare-sort var2233 0)
(declare-sort var1644 0)
(declare-sort var1446 0)
(declare-sort var1777 0)
(declare-sort var1122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1446_log/979489950 (var2233 var1644 String) void)
(declare-fun var1122_bootstrap$/-689390732 ((Array Int Int)) var1777)
(declare-fun var1446_log/428364179 (var2233 var1644 var1777) void)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2233-JFR_SYSTEM_BYTECODE var2233)
(declare-const var1644-INFO var1644)
(declare-const var1644-TRACE var1644)
(declare-const var556 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var556 null-String)))
(declare-const var232 (Array Int Int)) ; Statement: r7 := @parameter1: byte[] 
(assert (not (= var232 null-__Array__Int__Int__)))
(define-const var2628 var2233 var2233-JFR_SYSTEM_BYTECODE) ; Statement: $r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE> 
(define-const var468 var1644 var1644-INFO) ; Statement: $r2 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
(define-const var2292 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2292)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2292!1 String)
(assert (= var2292!1 ""))
(assert true)
(define-const var2902 String (append/672562846 var2292!1 "Generated bytecode for class ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated bytecode for class ") 
(declare-const var2292!2 String)
(assert (= var2292!2 (str.++ var2292!1 "Generated bytecode for class ")))
(assert true)
(define-const var902 String (append/672562846 var2902 var556)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2902!1 String)
(assert (= var2902!1 (str.++ var2902 var556)))
(assert true)
(define-const var849 String (toString/-2075883882 var902)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1446_log/979489950 var2628 var468 var849)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r1, $r2, $r6) 

(declare-const var2628!1 var2233)
(declare-const var468!1 var1644)
(declare-const var849!1 String)
(define-const var2985 var2233 var2233-JFR_SYSTEM_BYTECODE) ; Statement: $r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE> 
(define-const var3100 var1644 var1644-TRACE) ; Statement: $r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel TRACE> 
(define-const var2254 var1777 (var1122_bootstrap$/-689390732 var232)) ; Statement: $r10 = staticinvoke <jdk.jfr.internal.ASMToolkit$lambda_logASM_0__8: java.util.function.Supplier bootstrap$(byte[])>(r7) 
;(assert (var1446_log/428364179 var2985 var3100 var2254)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.util.function.Supplier)>($r8, $r9, $r10) 

(declare-const var2985!1 var2233)
(declare-const var3100!1 var1644)
(declare-const var2254!1 var1777)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1446_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), var1122_bootstrap$/-689390732=([byte[]], java.util.function.Supplier), var1446_log/428364179=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.util.function.Supplier], void)}
; {var556=r3, var3468=null_type, var232=r7, var2233=jdk.jfr.internal.LogTag, var2628=$r1, var1644=jdk.jfr.internal.LogLevel, var468=$r2, var2292=$r0, var2902=$r4, var902=$r5, var849=$r6, var1446=jdk.jfr.internal.Logger, var2985=$r8, var3100=$r9, var1777=java.util.function.Supplier, var1122=jdk.jfr.internal.ASMToolkit$lambda_logASM_0__8, var2254=$r10}
; {r3=var556, null_type=var3468, r7=var232, jdk.jfr.internal.LogTag=var2233, $r1=var2628, jdk.jfr.internal.LogLevel=var1644, $r2=var468, $r0=var2292, $r4=var2902, $r5=var902, $r6=var849, jdk.jfr.internal.Logger=var1446, $r8=var2985, $r9=var3100, java.util.function.Supplier=var1777, jdk.jfr.internal.ASMToolkit$lambda_logASM_0__8=var1122, $r10=var2254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r7 := @parameter1: byte[];	$r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE>;	$r2 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated bytecode for class ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r1, $r2, $r6);	$r8 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_BYTECODE>;	$r9 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel TRACE>;	$r10 = staticinvoke <jdk.jfr.internal.ASMToolkit$lambda_logASM_0__8: java.util.function.Supplier bootstrap$(byte[])>(r7);	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.util.function.Supplier)>($r8, $r9, $r10);	return
;block_num 1