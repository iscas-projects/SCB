(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1685 0)
(declare-sort var817 0)
(declare-sort var2263 0)
(declare-sort var1288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/-647569892 (var1288 String (Array Int var2263)) String)
(declare-const null-String String)
(declare-const null-var817 var817)
(declare-const null-__Array__Int__var2263__ (Array Int var2263))
(declare-const var1288-ROOT var1288)
(declare-const var1248 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1248 null-String)))
(declare-const var3509 var817) ; Statement: r7 := @parameter1: java.lang.Throwable 
(assert (not (= var3509 null-var817)))
(declare-const var1723 (Array Int var2263)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var1723 null-__Array__Int__var2263__)))
(define-const var1084 var1288 var1288-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true) ; Non Conditional
(define-const var1982 String (String_format/-647569892 var1084 var1248 var1723)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1248=r0, var1685=null_type, var817=java.lang.Throwable, var3509=r7, var2263=java.lang.Object, var1723=r1, var1288=java.util.Locale, var1084=$r2, var1982=$r3}
; {r0=var1248, null_type=var1685, java.lang.Throwable=var817, r7=var3509, java.lang.Object=var2263, r1=var1723, java.util.Locale=var1288, $r2=var1084, $r3=var1982}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.Object[];	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1);	return $r3
;block_num 3