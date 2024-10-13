(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3017) String)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-var3017 var3017)
(declare-const var301 var3017) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var301 null-var3017)))
(define-const var535 String "super$") ; Statement: $r2 = "super$" 
(define-const var1909 String (String_valueOf/-333372740 var301)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
(define-const var2232 String (concat/1917019066 var535 var1909)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var3017=java.lang.Object, var301=r0, var535=$r2, var1909=$r1, var2232=$r3}
; {java.lang.Object=var3017, r0=var301, $r2=var535, $r1=var1909, $r3=var2232}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: java.lang.String concat(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r2 = "super$";	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>($r1);	return $r3
;block_num 1