(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun maxLength/-675064325 (var3891) Int)
(declare-fun minLength/-675064325 (var3891) Int)
(declare-const null-var3891 var3891)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2211 var3891) ; Statement: r1 := @this: org.apache.log4j.pattern.FormattingInfo 
(assert (not (= var2211 null-var3891)))
(declare-const var2583 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2583 null-Int)))
(declare-const var2018 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var2018 null-String)))
(assert true)
(define-const var3250 Int (length/-1112840705 var2018)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(define-const var2131 Int (- var3250 var2583)) ; Statement: i2 = $i1 - i0 
(define-const var3330 Int (maxLength/-675064325 var2211)) ; Statement: $i3 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength> 
 ; Statement: if i2 <= $i3 goto $i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength> 
(assert (<= var2131 var3330)) ; Cond: i2 <= $i3 
(define-const var1877 Int (minLength/-675064325 var2211)) ; Statement: $i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength> 
 ; Statement: if i2 >= $i4 goto return 
(assert (>= var2131 var1877)) ; Cond: i2 >= $i4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), maxLength/-675064325=([org.apache.log4j.pattern.FormattingInfo], int), minLength/-675064325=([org.apache.log4j.pattern.FormattingInfo], int)}
; {var3891=org.apache.log4j.pattern.FormattingInfo, var2211=r1, var2583=i0, var2018=r0, var3250=$i1, var2131=i2, var3330=$i3, var1877=$i4}
; {org.apache.log4j.pattern.FormattingInfo=var3891, r1=var2211, i0=var2583, r0=var2018, $i1=var3250, i2=var2131, $i3=var3330, $i4=var1877}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.FormattingInfo;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.StringBuffer;	$i1 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	i2 = $i1 - i0;	$i3 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength>;	if i2 <= $i3 goto $i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength>;	$i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength>;	if i2 >= $i4 goto return;	return
;block_num 3