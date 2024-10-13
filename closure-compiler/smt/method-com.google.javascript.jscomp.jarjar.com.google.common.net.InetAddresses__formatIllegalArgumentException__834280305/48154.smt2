(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var28 0)
(declare-sort var2714 0)
(declare-sort var312 0)
(declare-sort var64 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var312-init () var312)
(declare-fun String_format/-647569892 (var64 String (Array Int var2714)) String)
(declare-fun <init>/875830710 (var312 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var2714__ (Array Int var2714))
(declare-const var64-ROOT var64)
(declare-const var3321 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3321 null-String)))
(declare-const var2266 (Array Int var2714)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2266 null-__Array__Int__var2714__)))
(define-const var693 var312 var312-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var275 var64 var64-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2543 String (String_format/-647569892 var275 var3321 var2266)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, r1, r2) 
(assert true)
;(assert (<init>/875830710 var693 var2543)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var693!1 var312)
(declare-const var2543!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var312-init=([], java.lang.IllegalArgumentException), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3321=r1, var28=null_type, var2714=java.lang.Object, var2266=r2, var312=java.lang.IllegalArgumentException, var693=$r0, var64=java.util.Locale, var275=$r3, var2543=$r4}
; {r1=var3321, null_type=var28, java.lang.Object=var2714, r2=var2266, java.lang.IllegalArgumentException=var312, $r0=var693, java.util.Locale=var64, $r3=var275, $r4=var2543}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	$r0 = new java.lang.IllegalArgumentException;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, r1, r2);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	return $r0
;block_num 1