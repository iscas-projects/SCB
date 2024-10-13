(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var260 0)
(declare-sort var3010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sharedPrefix/-1697221909 (var260) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun this$0/-1697221909 (var260) var3010)
(declare-fun var3010_access$500/-1055696995 (var3010) Int)
(declare-const null-var260 var260)
(declare-const var1885 var260) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor 
(assert (not (= var1885 null-var260)))
(define-const var3836 String (sharedPrefix/-1697221909 var1885)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
(assert true)
(define-const var117 Int (length/-134980193 var3836)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var208 var3010 (this$0/-1697221909 var1885)) ; Statement: $r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var1419 Int (var3010_access$500/-1055696995 var208)) ; Statement: $i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2) 
 ; Statement: if $i1 > $i0 goto $r3 = new java.lang.StringBuilder 
(assert (not (> var117 var1419))) ; Negate: Cond: $i1 > $i0  
(define-const var1677 String (sharedPrefix/-1697221909 var1885)) ; Statement: $r11 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {sharedPrefix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), length/-134980193=([java.lang.String], int), this$0/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], org.junit.ComparisonFailure$ComparisonCompactor), var3010_access$500/-1055696995=([org.junit.ComparisonFailure$ComparisonCompactor], int)}
; {var260=org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor, var1885=r0, var3836=$r1, var117=$i1, var3010=org.junit.ComparisonFailure$ComparisonCompactor, var208=$r2, var1419=$i0, var1677=$r11}
; {org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor=var260, r0=var1885, $r1=var3836, $i1=var117, org.junit.ComparisonFailure$ComparisonCompactor=var3010, $r2=var208, $i0=var1419, $r11=var1677}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2);	if $i1 > $i0 goto $r3 = new java.lang.StringBuilder;	$r11 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	return $r11
;block_num 2