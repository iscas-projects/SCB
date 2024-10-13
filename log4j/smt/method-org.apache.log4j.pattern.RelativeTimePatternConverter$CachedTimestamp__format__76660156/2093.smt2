(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun timestamp/-1471223967 (var2936) Int)
(declare-const null-var2936 var2936)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var310 var2936) ; Statement: r0 := @this: org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp 
(assert (not (= var310 null-var2936)))
(declare-const var1155 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1155 null-Int)))
(declare-const var3047 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3047 null-String)))
(define-const var768 Int (timestamp/-1471223967 var310)) ; Statement: $l1 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: long timestamp> 
(define-const var2888 Int (ite (> var1155 var768) 1 (ite (< var1155 var768) (- 1) 0))) ; Statement: $b2 = l0 cmp $l1 
 ; Statement: if $b2 != 0 goto return 0 
(assert (not (= var2888 0))) ; Cond: $b2 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {timestamp/-1471223967=([org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp], long)}
; {var2936=org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp, var310=r0, var1155=l0, var3047=r1, var768=$l1, var2888=$b2}
; {org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp=var2936, r0=var310, l0=var1155, r1=var3047, $l1=var768, $b2=var2888}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp;	l0 := @parameter0: long;	r1 := @parameter1: java.lang.StringBuffer;	$l1 = r0.<org.apache.log4j.pattern.RelativeTimePatternConverter$CachedTimestamp: long timestamp>;	$b2 = l0 cmp $l1;	if $b2 != 0 goto return 0;	return 0
;block_num 2