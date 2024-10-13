(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var354 0)
(declare-sort var1346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1346_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1577 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1577 null-String)))
(declare-const var169 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var169 null-String)))
(define-const var3600 Bool (var1346_isEmpty/1595667738 (cast-from-String-to-String var1577))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3600 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3283 Bool (var1346_isEmpty/1595667738 (cast-from-String-to-String var169))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(assert (= (ite var3283 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1192 Int (lastIndexOf/-618837785 var1577 var169)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(define-const var1595 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1192 var1595))) ; Cond: i0 != $i2 
(assert (not (and true (and (>= 0 0) (>= (str.len var1577) var1192) (>= var1192 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1346_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1577=r0, var354=null_type, var169=r1, var1346=org.apache.commons.lang3.StringUtils, var3600=$z0, var3283=$z1, var1192=i0, var1595=$i2, var2190=$r2}
; {r0=var1577, null_type=var354, r1=var169, org.apache.commons.lang3.StringUtils=var1346, $z0=var3600, $z1=var3283, i0=var1192, $i2=var1595, $r2=var2190}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 4