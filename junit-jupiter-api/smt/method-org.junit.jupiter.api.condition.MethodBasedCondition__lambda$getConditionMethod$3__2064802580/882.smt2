(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var3181 0)
(declare-sort var1901 0)
(declare-sort var3096 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1901-init () var1901)
(declare-fun arr-var3096-init () (Array Int var3096))
(declare-fun cast-from-String-to-var3096 (String) var3096)
(declare-fun String_format/1339386452 (String (Array Int var3096)) String)
(declare-fun <init>/-515200378 (var1901 String var2616) void)
(declare-fun cast-from-var3181-to-var2616 (var3181) var2616)
(declare-const null-String String)
(declare-const null-var3181 var3181)
(declare-const null-__Array__Int__var3096__ (Array Int var3096))
(declare-const var1861 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1861 null-String)))
(declare-const var2901 var3181) ; Statement: r3 := @parameter1: java.lang.Exception 
(assert (not (= var2901 null-var3181)))
(define-const var583 var1901 var1901-init) ; Statement: $r0 = new org.junit.platform.commons.JUnitException 
(define-const var1561 (Array Int var3096) arr-var3096-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var1561!1 (Array Int var3096))
(assert (not (= var1561!1 null-__Array__Int__var3096__)))
(assert (= (select var1561!1 0) (cast-from-String-to-var3096 var1861))) ; Statement: $r1[0] = r2 
(define-const var3949 String (String_format/1339386452 "Could not load class [%s]" var1561!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not load class [%s]", $r1) 
(assert true)
;(assert (<init>/-515200378 var583 var3949 (cast-from-var3181-to-var2616 var2901))) ; Statement: specialinvoke $r0.<org.junit.platform.commons.JUnitException: void <init>(java.lang.String,java.lang.Throwable)>($r4, r3) 

(declare-const var583!1 var1901)
(declare-const var3949!1 String)
(declare-const var2901!1 var3181)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1901-init=([], org.junit.platform.commons.JUnitException), arr-var3096-init=([], java.lang.Object[]), cast-from-String-to-var3096=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-515200378=([org.junit.platform.commons.JUnitException, java.lang.String, java.lang.Throwable], void), cast-from-var3181-to-var2616=([java.lang.Exception], java.lang.Throwable)}
; {var1861=r2, var3437=null_type, var3181=java.lang.Exception, var2901=r3, var1901=org.junit.platform.commons.JUnitException, var583=$r0, var3096=java.lang.Object, var1561=$r1, var3949=$r4, var2616=java.lang.Throwable}
; {r2=var1861, null_type=var3437, java.lang.Exception=var3181, r3=var2901, org.junit.platform.commons.JUnitException=var1901, $r0=var583, java.lang.Object=var3096, $r1=var1561, $r4=var3949, java.lang.Throwable=var2616}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Exception;	$r0 = new org.junit.platform.commons.JUnitException;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not load class [%s]", $r1);	specialinvoke $r0.<org.junit.platform.commons.JUnitException: void <init>(java.lang.String,java.lang.Throwable)>($r4, r3);	return $r0
;block_num 1