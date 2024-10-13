(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1622 0)
(declare-sort var3112 0)
(declare-sort var3311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-String-to-var3112 (String) var3112)
(declare-fun String_valueOf/-333372740 (var3311) String)
(declare-fun cast-from-var3112-to-var3311 (var3112) var3311)
(declare-const null-String String)
(declare-const var243 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var243 null-String)))
(assert true)
(define-const var480 Int (length/-134980193 var243)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = "" 
(assert (<= var480 0)) ; Cond: $i0 <= 0 
(define-const var3701 var3112 (cast-from-String-to-var3112 "")) ; Statement: $r2 = "" 
(assert true) ; Non Conditional
(define-const var1309 String (String_valueOf/-333372740 (cast-from-var3112-to-var3311 var3701))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-String-to-var3112=([java.lang.String], java.io.Serializable), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3112-to-var3311=([java.io.Serializable], java.lang.Object)}
; {var243=r0, var1622=null_type, var480=$i0, var3112=java.io.Serializable, var3701=$r2, var3311=java.lang.Object, var1309=$r1}
; {r0=var243, null_type=var1622, $i0=var480, java.io.Serializable=var3112, $r2=var3701, java.lang.Object=var3311, $r1=var1309}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto $r2 = "";	$r2 = "";	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	return $r1
;block_num 3