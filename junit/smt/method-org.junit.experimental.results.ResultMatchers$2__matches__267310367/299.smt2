(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort var3807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3807) String)
(declare-fun val$string/-2063532512 (var3126) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3126 var3126)
(declare-const null-var3807 var3807)
(declare-const var2581 var3126) ; Statement: r1 := @this: org.junit.experimental.results.ResultMatchers$2 
(assert (not (= var2581 null-var3126)))
(declare-const var2008 var3807) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2008 null-var3807)))
(assert true)
(define-const var496 String (toString/-522406933 var2008)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var2080 String (val$string/-2063532512 var2581)) ; Statement: $r2 = r1.<org.junit.experimental.results.ResultMatchers$2: java.lang.String val$string> 
(assert true)
(define-const var923 Bool (contains/1009244746 var496 (cast-from-String-to-String var2080))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean contains(java.lang.CharSequence)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var923 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2475 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), val$string/-2063532512=([org.junit.experimental.results.ResultMatchers$2], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3126=org.junit.experimental.results.ResultMatchers$2, var2581=r1, var3807=java.lang.Object, var2008=r0, var496=$r3, var2080=$r2, var923=$z0, var2475=$z2}
; {org.junit.experimental.results.ResultMatchers$2=var3126, r1=var2581, java.lang.Object=var3807, r0=var2008, $r3=var496, $r2=var2080, $z0=var923, $z2=var2475}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: org.junit.experimental.results.ResultMatchers$2;	r0 := @parameter0: java.lang.Object;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = r1.<org.junit.experimental.results.ResultMatchers$2: java.lang.String val$string>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean contains(java.lang.CharSequence)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3