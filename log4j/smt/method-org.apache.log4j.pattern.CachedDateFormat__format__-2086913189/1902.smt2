(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun previousTime/-503004593 (var1400) Int)
(declare-fun cache/-503004593 (var1400) String)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1400 var1400)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3895 var1400) ; Statement: r0 := @this: org.apache.log4j.pattern.CachedDateFormat 
(assert (not (= var3895 null-var1400)))
(declare-const var327 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var327 null-Int)))
(declare-const var1463 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1463 null-String)))
(define-const var1800 Int (previousTime/-503004593 var3895)) ; Statement: $l1 = r0.<org.apache.log4j.pattern.CachedDateFormat: long previousTime> 
(define-const var1189 Int (ite (> var327 var1800) 1 (ite (< var327 var1800) (- 1) 0))) ; Statement: $b2 = l0 cmp $l1 
 ; Statement: if $b2 != 0 goto $i3 = r0.<org.apache.log4j.pattern.CachedDateFormat: int millisecondStart> 
(assert (not (not (= var1189 0)))) ; Negate: Cond: $b2 != 0  
(define-const var1390 String (cache/-503004593 var3895)) ; Statement: $r7 = r0.<org.apache.log4j.pattern.CachedDateFormat: java.lang.StringBuffer cache> 
(assert true)
;(assert (append/1671819796 var1463 var1390)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r7) 

(declare-const var1463!1 String)
(declare-const var1390!1 String)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {previousTime/-503004593=([org.apache.log4j.pattern.CachedDateFormat], long), cache/-503004593=([org.apache.log4j.pattern.CachedDateFormat], java.lang.StringBuffer), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1400=org.apache.log4j.pattern.CachedDateFormat, var3895=r0, var327=l0, var1463=r1, var1800=$l1, var1189=$b2, var1390=$r7}
; {org.apache.log4j.pattern.CachedDateFormat=var1400, r0=var3895, l0=var327, r1=var1463, $l1=var1800, $b2=var1189, $r7=var1390}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.CachedDateFormat;	l0 := @parameter0: long;	r1 := @parameter1: java.lang.StringBuffer;	$l1 = r0.<org.apache.log4j.pattern.CachedDateFormat: long previousTime>;	$b2 = l0 cmp $l1;	if $b2 != 0 goto $i3 = r0.<org.apache.log4j.pattern.CachedDateFormat: int millisecondStart>;	$r7 = r0.<org.apache.log4j.pattern.CachedDateFormat: java.lang.StringBuffer cache>;	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r7);	return r1
;block_num 2