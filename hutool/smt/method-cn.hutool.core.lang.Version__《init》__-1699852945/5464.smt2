(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1194 0)
(declare-sort var1547 0)
(declare-sort var3260 0)
(declare-sort var1960 0)
(declare-sort var1179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3260) void)
(declare-fun cast-from-var1194-to-var3260 (var1194) var3260)
(declare-fun arr-var3260-init () (Array Int var3260))
(declare-fun var1960_notNull/515149844 (var3260 String (Array Int var3260)) var3260)
(declare-fun cast-from-String-to-var3260 (String) var3260)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1179-init () var1179)
(declare-fun <init>/875830710 (var1179 String) void)
(declare-const null-var1194 var1194)
(declare-const null-String String)
(declare-const var2083 var1194) ; Statement: r0 := @this: cn.hutool.core.lang.Version 
(assert (not (= var2083 null-var1194)))
(declare-const var830 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var830 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1194-to-var3260 var2083))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2083!1 var1194)
(define-const var2308 (Array Int var3260) arr-var3260-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var1960_notNull/515149844 (cast-from-String-to-var3260 var830) "Null version string" var2308)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Null version string", $r2) 

(declare-const var830!1 String)
(declare-const var3444 String)
(declare-const var2308!1 (Array Int var3260))
(assert true)
(define-const var748 Int (length/-134980193 var830!1)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto r0.<cn.hutool.core.lang.Version: java.lang.String version> = r1 
(assert (not (not (= var748 0)))) ; Negate: Cond: i0 != 0  
(define-const var554 var1179 var1179-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var554 "Empty version string")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Empty version string") 

(declare-const var554!1 var1179)
(declare-const var1755 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1194-to-var3260=([cn.hutool.core.lang.Version], java.lang.Object), arr-var3260-init=([], java.lang.Object[]), var1960_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3260=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var1179-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1194=cn.hutool.core.lang.Version, var2083=r0, var830=r1, var1547=null_type, var3260=java.lang.Object, var2308=$r2, var1960=cn.hutool.core.lang.Assert, var3444="Null version string", var748=i0, var1179=java.lang.IllegalArgumentException, var554=$r10, var1755="Empty version string"}
; {cn.hutool.core.lang.Version=var1194, r0=var2083, r1=var830, null_type=var1547, java.lang.Object=var3260, $r2=var2308, cn.hutool.core.lang.Assert=var1960, "Null version string"=var3444, i0=var748, java.lang.IllegalArgumentException=var1179, $r10=var554, "Empty version string"=var1755}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.Version;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "Null version string", $r2);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto r0.<cn.hutool.core.lang.Version: java.lang.String version> = r1;	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Empty version string");	throw $r10
;block_num 2