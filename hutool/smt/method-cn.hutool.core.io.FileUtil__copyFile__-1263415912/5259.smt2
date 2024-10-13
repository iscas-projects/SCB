(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3754 0)
(declare-sort var3009 0)
(declare-sort var1207 0)
(declare-sort var2270 0)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1207-init () (Array Int var1207))
(declare-fun var2270_notNull/515149844 (var1207 String (Array Int var1207)) var1207)
(declare-fun cast-from-var3754-to-var1207 (var3754) var1207)
(declare-fun exists/1072868559 (var3754) Bool)
(declare-fun var3439-init () var3439)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1207) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/769422370 (var3439 String) void)
(declare-const null-var3754 var3754)
(declare-const null-__Array__Int__var3009__ (Array Int var3009))
(declare-const var1863 var3754) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1863 null-var3754)))
(declare-const var1386 var3754) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var1386 null-var3754)))
(declare-const var2707 (Array Int var3009)) ; Statement: r4 := @parameter2: java.nio.file.StandardCopyOption[] 
(assert (not (= var2707 null-__Array__Int__var3009__)))
(define-const var768 (Array Int var1207) arr-var1207-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2270_notNull/515149844 (cast-from-var3754-to-var1207 var1863) "Source File is null !" var768)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Source File is null !", $r1) 

(declare-const var1863!1 var3754)
(declare-const var209 String)
(declare-const var768!1 (Array Int var1207))
(assert true)
(define-const var3627 Bool (exists/1072868559 var1863!1)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if 0 != $z0 goto $r3 = newarray (java.lang.Object)[0] 
(assert (not (not (= 0 (ite var3627 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var3783 var3439 var3439-init) ; Statement: $r11 = new cn.hutool.core.io.IORuntimeException 
(define-const var1294 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1294)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1294!1 String)
(assert (= var1294!1 ""))
(assert true)
(define-const var3029 String (append/672562846 var1294!1 "File not exist: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ") 
(declare-const var1294!2 String)
(assert (= var1294!2 (str.++ var1294!1 "File not exist: ")))
(assert true)
(define-const var2103 String (append/-1031950772 var3029 (cast-from-var3754-to-var1207 var1863!1))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3029!1 String)
(assert (str.prefixof var3029 var3029!1))
(assert true)
(define-const var2523 String (toString/-2075883882 var2103)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/769422370 var3783 var2523)) ; Statement: specialinvoke $r11.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var3783!1 var3439)
(declare-const var2523!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1207-init=([], java.lang.Object[]), var2270_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var3754-to-var1207=([java.io.File], java.lang.Object), exists/1072868559=([java.io.File], boolean), var3439-init=([], cn.hutool.core.io.IORuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/769422370=([cn.hutool.core.io.IORuntimeException, java.lang.String], void)}
; {var3754=java.io.File, var1863=r0, var1386=r2, var3009=java.nio.file.StandardCopyOption, var2707=r4, var1207=java.lang.Object, var768=$r1, var2270=cn.hutool.core.lang.Assert, var209="Source File is null !", var3627=$z0, var3439=cn.hutool.core.io.IORuntimeException, var3783=$r11, var1294=$r12, var3029=$r13, var2103=$r14, var2523=$r15}
; {java.io.File=var3754, r0=var1863, r2=var1386, java.nio.file.StandardCopyOption=var3009, r4=var2707, java.lang.Object=var1207, $r1=var768, cn.hutool.core.lang.Assert=var2270, "Source File is null !"=var209, $z0=var3627, cn.hutool.core.io.IORuntimeException=var3439, $r11=var3783, $r12=var1294, $r13=var3029, $r14=var2103, $r15=var2523}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.io.File;	r4 := @parameter2: java.nio.file.StandardCopyOption[];	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Source File is null !", $r1);	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if 0 != $z0 goto $r3 = newarray (java.lang.Object)[0];	$r11 = new cn.hutool.core.io.IORuntimeException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2