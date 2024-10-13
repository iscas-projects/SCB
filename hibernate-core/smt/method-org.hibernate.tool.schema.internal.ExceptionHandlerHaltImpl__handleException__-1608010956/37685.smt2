(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1958 0)
(declare-sort var41 0)
(declare-sort var1201 0)
(declare-sort var1904 0)
(declare-sort var1521 0)
(declare-sort var3627 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1201-init () var1201)
(declare-fun arr-var1521-init () (Array Int var1521))
(declare-fun getMessage/918716458 (var3627) String)
(declare-fun cast-from-var41-to-var3627 (var41) var3627)
(declare-fun cast-from-String-to-var1521 (String) var1521)
(declare-fun String_format/-647569892 (var1904 String (Array Int var1521)) String)
(declare-fun cast-from-var41-to-var3980 (var41) var3980)
(declare-fun <init>/335245530 (var1201 String var3980) void)
(declare-fun cast-from-var1201-to-var3980 (var1201) var3980)
(declare-const null-var1958 var1958)
(declare-const null-var41 var41)
(declare-const var1904-ROOT var1904)
(declare-const null-__Array__Int__var1521__ (Array Int var1521))
(declare-const var2506 var1958) ; Statement: r6 := @this: org.hibernate.tool.schema.internal.ExceptionHandlerHaltImpl 
(assert (not (= var2506 null-var1958)))
(declare-const var3983 var41) ; Statement: r2 := @parameter0: org.hibernate.tool.schema.spi.CommandAcceptanceException 
(assert (not (= var3983 null-var41)))
(define-const var288 var1201 var1201-init) ; Statement: $r7 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2913 var1904 var1904-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3601 (Array Int var1521) arr-var1521-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var985 String (getMessage/918716458 (cast-from-var41-to-var3627 var3983))) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.tool.schema.spi.CommandAcceptanceException: java.lang.String getMessage()>() 
(declare-const var3601!1 (Array Int var1521))
(assert (not (= var3601!1 null-__Array__Int__var1521__)))
(assert (= (select var3601!1 0) (cast-from-String-to-var1521 var985))) ; Statement: $r1[0] = $r4 
(define-const var1416 String (String_format/-647569892 var2913 "Halting on error : %s" var3601!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Halting on error : %s", $r1) 
(define-const var1719 var3980 (cast-from-var41-to-var3980 var3983)) ; Statement: $r8 = (java.lang.Throwable) r2 
(assert true)
;(assert (<init>/335245530 var288 var1416 var1719)) ; Statement: specialinvoke $r7.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r5, $r8) 

(declare-const var288!1 var1201)
(declare-const var1416!1 String)
(declare-const var1719!1 var3980)
(define-const var2730 var3980 (cast-from-var1201-to-var3980 var288!1)) ; Statement: $r9 = (java.lang.Throwable) $r7 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1201-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var1521-init=([], java.lang.Object[]), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var41-to-var3627=([org.hibernate.tool.schema.spi.CommandAcceptanceException], javax.persistence.PersistenceException), cast-from-String-to-var1521=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), cast-from-var41-to-var3980=([org.hibernate.tool.schema.spi.CommandAcceptanceException], java.lang.Throwable), <init>/335245530=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String, java.lang.Throwable], void), cast-from-var1201-to-var3980=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var1958=org.hibernate.tool.schema.internal.ExceptionHandlerHaltImpl, var2506=r6, var41=org.hibernate.tool.schema.spi.CommandAcceptanceException, var3983=r2, var1201=org.hibernate.tool.schema.spi.SchemaManagementException, var288=$r7, var1904=java.util.Locale, var2913=$r3, var1521=java.lang.Object, var3601=$r1, var3627=javax.persistence.PersistenceException, var985=$r4, var1416=$r5, var3980=java.lang.Throwable, var1719=$r8, var2730=$r9}
; {org.hibernate.tool.schema.internal.ExceptionHandlerHaltImpl=var1958, r6=var2506, org.hibernate.tool.schema.spi.CommandAcceptanceException=var41, r2=var3983, org.hibernate.tool.schema.spi.SchemaManagementException=var1201, $r7=var288, java.util.Locale=var1904, $r3=var2913, java.lang.Object=var1521, $r1=var3601, javax.persistence.PersistenceException=var3627, $r4=var985, $r5=var1416, java.lang.Throwable=var3980, $r8=var1719, $r9=var2730}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.hibernate.tool.schema.internal.ExceptionHandlerHaltImpl;	r2 := @parameter0: org.hibernate.tool.schema.spi.CommandAcceptanceException;	$r7 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = newarray (java.lang.Object)[1];	$r4 = virtualinvoke r2.<org.hibernate.tool.schema.spi.CommandAcceptanceException: java.lang.String getMessage()>();	$r1[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Halting on error : %s", $r1);	$r8 = (java.lang.Throwable) r2;	specialinvoke $r7.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r5, $r8);	$r9 = (java.lang.Throwable) $r7;	throw $r9
;block_num 1