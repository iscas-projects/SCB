(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sharedSuffix/-1697221909 (var1042) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun this$0/-1697221909 (var1042) var990)
(declare-fun var990_access$500/-1055696995 (var990) Int)
(declare-const null-var1042 var1042)
(declare-const var187 var1042) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor 
(assert (not (= var187 null-var1042)))
(define-const var1226 String (sharedSuffix/-1697221909 var187)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix> 
(assert true)
(define-const var3888 Int (length/-134980193 var1226)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1979 var990 (this$0/-1697221909 var187)) ; Statement: $r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var949 Int (var990_access$500/-1055696995 var1979)) ; Statement: $i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2) 
 ; Statement: if $i1 > $i0 goto $r3 = new java.lang.StringBuilder 
(assert (not (> var3888 var949))) ; Negate: Cond: $i1 > $i0  
(define-const var1843 String (sharedSuffix/-1697221909 var187)) ; Statement: $r10 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix> 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {sharedSuffix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), length/-134980193=([java.lang.String], int), this$0/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], org.junit.ComparisonFailure$ComparisonCompactor), var990_access$500/-1055696995=([org.junit.ComparisonFailure$ComparisonCompactor], int)}
; {var1042=org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor, var187=r0, var1226=$r1, var3888=$i1, var990=org.junit.ComparisonFailure$ComparisonCompactor, var1979=$r2, var949=$i0, var1843=$r10}
; {org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor=var1042, r0=var187, $r1=var1226, $i1=var3888, org.junit.ComparisonFailure$ComparisonCompactor=var990, $r2=var1979, $i0=var949, $r10=var1843}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2);	if $i1 > $i0 goto $r3 = new java.lang.StringBuilder;	$r10 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix>;	return $r10
;block_num 2