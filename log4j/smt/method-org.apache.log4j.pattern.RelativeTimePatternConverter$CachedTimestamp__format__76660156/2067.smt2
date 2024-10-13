(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun timestamp/-1471223967 (var3596) Int)
(declare-fun formatted/-1471223967 (var3596) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3596 var3596)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3613 var3596) ; Statement: r0 := @this: org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp 
(assert (not (= var3613 null-var3596)))
(declare-const var1153 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1153 null-Int)))
(declare-const var863 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var863 null-String)))
(define-const var428 Int (timestamp/-1471223967 var3613)) ; Statement: $l1 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: long timestamp> 
(define-const var3205 Int (ite (> var1153 var428) 1 (ite (< var1153 var428) (- 1) 0))) ; Statement: $b2 = l0 cmp $l1 
 ; Statement: if $b2 != 0 goto return 0 
(assert (not (not (= var3205 0)))) ; Negate: Cond: $b2 != 0  
(define-const var3221 String (formatted/-1471223967 var3613)) ; Statement: $r2 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: java.lang.String formatted> 
(assert true)
;(assert (append/1560614132 var863 var3221)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var863!1 String)
(assert (str.prefixof var863 var863!1))
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {timestamp/-1471223967=([org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp], long), formatted/-1471223967=([org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3596=org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp, var3613=r0, var1153=l0, var863=r1, var428=$l1, var3205=$b2, var3221=$r2}
; {org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp=var3596, r0=var3613, l0=var1153, r1=var863, $l1=var428, $b2=var3205, $r2=var3221}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp;	l0 := @parameter0: long;	r1 := @parameter1: java.lang.StringBuffer;	$l1 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: long timestamp>;	$b2 = l0 cmp $l1;	if $b2 != 0 goto return 0;	$r2 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: java.lang.String formatted>;	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return 1
;block_num 2