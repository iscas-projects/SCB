(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1978 0)
(declare-sort var2643 0)
(declare-sort var2271 0)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2643_matches/-236833593 (String String) Bool)
(declare-fun var2271-init () var2271)
(declare-fun arr-var774-init () (Array Int var774))
(declare-fun cast-from-String-to-var774 (String) var774)
(declare-fun String_format/1339386452 (String (Array Int var774)) String)
(declare-fun <init>/875830710 (var2271 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var774__ (Array Int var774))
(declare-const var2358 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2358 null-String)))
(declare-const var3588 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3588 null-String)))
(define-const var3090 Bool (var2643_matches/-236833593 var3588 var2358)) ; Statement: $z0 = staticinvoke <java.util.regex.Pattern: boolean matches(java.lang.String,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3090 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3200 var2271 var2271-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1392 (Array Int var774) arr-var774-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(declare-const var1392!1 (Array Int var774))
(assert (not (= var1392!1 null-__Array__Int__var774__)))
(assert (= (select var1392!1 0) (cast-from-String-to-var774 var2358))) ; Statement: $r3[0] = r1 
(declare-const var1392!2 (Array Int var774))
(assert (not (= var1392!2 null-__Array__Int__var774__)))
(assert (= (select var1392!2 1) (cast-from-String-to-var774 var3588))) ; Statement: $r3[1] = r0 
(define-const var1162 String (String_format/1339386452 "The string %s does not match the pattern %s" var1392!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The string %s does not match the pattern %s", $r3) 
(assert true)
;(assert (<init>/875830710 var3200 var1162)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3200!1 var2271)
(declare-const var1162!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2643_matches/-236833593=([java.lang.String, java.lang.CharSequence], boolean), var2271-init=([], java.lang.IllegalArgumentException), arr-var774-init=([], java.lang.Object[]), cast-from-String-to-var774=([java.lang.CharSequence], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2358=r1, var3588=r0, var1978=null_type, var2643=java.util.regex.Pattern, var3090=$z0, var2271=java.lang.IllegalArgumentException, var3200=$r2, var774=java.lang.Object, var1392=$r3, var1162=$r4}
; {r1=var2358, r0=var3588, null_type=var1978, java.util.regex.Pattern=var2643, $z0=var3090, java.lang.IllegalArgumentException=var2271, $r2=var3200, java.lang.Object=var774, $r3=var1392, $r4=var1162}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.String;	$z0 = staticinvoke <java.util.regex.Pattern: boolean matches(java.lang.String,java.lang.CharSequence)>(r0, r1);	if $z0 != 0 goto return;	$r2 = new java.lang.IllegalArgumentException;	$r3 = newarray (java.lang.Object)[2];	$r3[0] = r1;	$r3[1] = r0;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The string %s does not match the pattern %s", $r3);	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r2
;block_num 2