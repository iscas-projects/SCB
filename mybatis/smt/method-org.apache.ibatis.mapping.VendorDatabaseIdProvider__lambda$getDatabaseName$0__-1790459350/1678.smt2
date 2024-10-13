(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var1964 0)
(declare-sort var2009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1964_getKey/-33423493 (var1964) var2009)
(declare-fun cast-from-var2009-to-String (var2009) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const null-var1964 var1964)
(declare-const var1437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1437 null-String)))
(declare-const var2122 var1964) ; Statement: r1 := @parameter1: java.util.Map$Entry 
(assert (not (= var2122 null-var1964)))
(define-const var871 var2009 (var1964_getKey/-33423493 var2122)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var503 String (cast-from-var2009-to-String var871)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var2890 Bool (contains/1009244746 var1437 (cast-from-String-to-String var503))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1964_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2009-to-String=([java.lang.Object], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1437=r0, var486=null_type, var1964=java.util.Map$Entry, var2122=r1, var2009=java.lang.Object, var871=$r2, var503=$r3, var2890=$z0}
; {r0=var1437, null_type=var486, java.util.Map$Entry=var1964, r1=var2122, java.lang.Object=var2009, $r2=var871, $r3=var503, $z0=var2890}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Map$Entry;	$r2 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r3 = (java.lang.String) $r2;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>($r3);	return $z0
;block_num 1