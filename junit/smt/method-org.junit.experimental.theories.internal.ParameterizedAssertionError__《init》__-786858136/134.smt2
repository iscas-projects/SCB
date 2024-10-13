(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort var2019 0)
(declare-sort var1265 0)
(declare-sort var1764 0)
(declare-sort var3432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1764-init () (Array Int var1764))
(declare-fun cast-from-String-to-var1764 (String) var1764)
(declare-fun var2261_join/-1387123409 (String (Array Int var1764)) String)
(declare-fun String_format/1339386452 (String (Array Int var1764)) String)
(declare-fun <init>/582965326 (var3432 var1764) void)
(declare-fun cast-from-var2261-to-var3432 (var2261) var3432)
(declare-fun initCause/2003336360 (var2019 var2019) var2019)
(declare-fun cast-from-var2261-to-var2019 (var2261) var2019)
(declare-const null-var2261 var2261)
(declare-const null-var2019 var2019)
(declare-const null-String String)
(declare-const null-__Array__Int__var1764__ (Array Int var1764))
(declare-const var1134 var2261) ; Statement: r0 := @this: org.junit.experimental.theories.internal.ParameterizedAssertionError 
(assert (not (= var1134 null-var2261)))
(declare-const var1589 var2019) ; Statement: r6 := @parameter0: java.lang.Throwable 
(assert (not (= var1589 null-var2019)))
(declare-const var1700 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1700 null-String)))
(declare-const var3738 (Array Int var1764)) ; Statement: r3 := @parameter2: java.lang.Object[] 
(assert (not (= var3738 null-__Array__Int__var1764__)))
(define-const var64 (Array Int var1764) arr-var1764-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var64!1 (Array Int var1764))
(assert (not (= var64!1 null-__Array__Int__var1764__)))
(assert (= (select var64!1 0) (cast-from-String-to-var1764 var1700))) ; Statement: $r1[0] = r2 
(define-const var3585 String (var2261_join/-1387123409 ", " var3738)) ; Statement: $r4 = staticinvoke <org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.String join(java.lang.String,java.lang.Object[])>(", ", r3) 
(declare-const var64!2 (Array Int var1764))
(assert (not (= var64!2 null-__Array__Int__var1764__)))
(assert (= (select var64!2 1) (cast-from-String-to-var1764 var3585))) ; Statement: $r1[1] = $r4 
(define-const var2307 String (String_format/1339386452 "%s(%s)" var64!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(%s)", $r1) 
(assert true)
;(assert (<init>/582965326 (cast-from-var2261-to-var3432 var1134) (cast-from-String-to-var1764 var2307))) ; Statement: specialinvoke r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r5) 

(declare-const var1134!1 var2261)
(declare-const var2307!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2261-to-var2019 var1134!1) var1589)) ; Statement: virtualinvoke r0.<org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.Throwable initCause(java.lang.Throwable)>(r6) 

(declare-const var1134!2 var2261)
(declare-const var1589!1 var2019)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1764-init=([], java.lang.Object[]), cast-from-String-to-var1764=([java.lang.String], java.lang.Object), var2261_join/-1387123409=([java.lang.String, java.lang.Object[]], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-var2261-to-var3432=([org.junit.experimental.theories.internal.ParameterizedAssertionError], java.lang.AssertionError), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2261-to-var2019=([org.junit.experimental.theories.internal.ParameterizedAssertionError], java.lang.Throwable)}
; {var2261=org.junit.experimental.theories.internal.ParameterizedAssertionError, var1134=r0, var2019=java.lang.Throwable, var1589=r6, var1700=r2, var1265=null_type, var1764=java.lang.Object, var3738=r3, var64=$r1, var3585=$r4, var2307=$r5, var3432=java.lang.AssertionError}
; {org.junit.experimental.theories.internal.ParameterizedAssertionError=var2261, r0=var1134, java.lang.Throwable=var2019, r6=var1589, r2=var1700, null_type=var1265, java.lang.Object=var1764, r3=var3738, $r1=var64, $r4=var3585, $r5=var2307, java.lang.AssertionError=var3432}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.experimental.theories.internal.ParameterizedAssertionError;	r6 := @parameter0: java.lang.Throwable;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Object[];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$r4 = staticinvoke <org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.String join(java.lang.String,java.lang.Object[])>(", ", r3);	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(%s)", $r1);	specialinvoke r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r5);	virtualinvoke r0.<org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.Throwable initCause(java.lang.Throwable)>(r6);	return
;block_num 1