(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var984 0)
(declare-sort var3353 0)
(declare-sort var2362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2362_getOtherAmbiguityCheck/14743516 () Int)
(declare-const null-var984 var984)
(declare-const null-var3353 var3353)
(declare-const var2085 var984) ; Statement: r1 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var2085 null-var984)))
(declare-const var2177 var984) ; Statement: r50 := @parameter1: org.javacc.parser.Expansion 
(assert (not (= var2177 null-var984)))
(define-const var3359 var3353 null-var3353) ; Statement: r60 = null 
(define-const var3483 Int 1) ; Statement: i8 = 1 
(assert true) ; Non Conditional
(define-const var2573 Int var2362_getOtherAmbiguityCheck/14743516) ; Statement: $i0 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>() 
 ; Statement: if i8 > $i0 goto $i1 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>() 
(assert (> var3483 var2573)) ; Cond: i8 > $i0 
(define-const var2118 Int var2362_getOtherAmbiguityCheck/14743516) ; Statement: $i1 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>() 
 ; Statement: if i8 <= $i1 goto (branch) 
(assert (<= var3483 var2118)) ; Cond: i8 <= $i1 
 ; Statement: if i8 <= 1 goto return 
(assert (<= var3483 1)) ; Cond: i8 <= 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2362_getOtherAmbiguityCheck/14743516=([], int)}
; {var984=org.javacc.parser.Expansion, var2085=r1, var2177=r50, var3353=org.javacc.parser.MatchInfo, var3359=r60, var3483=i8, var2362=org.javacc.parser.Options, var2573=$i0, var2118=$i1}
; {org.javacc.parser.Expansion=var984, r1=var2085, r50=var2177, org.javacc.parser.MatchInfo=var3353, r60=var3359, i8=var3483, org.javacc.parser.Options=var2362, $i0=var2573, $i1=var2118}
;seq 
;cnt {}
;stmts r1 := @parameter0: org.javacc.parser.Expansion;	r50 := @parameter1: org.javacc.parser.Expansion;	r60 = null;	i8 = 1;	$i0 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>();	if i8 > $i0 goto $i1 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>();	$i1 = staticinvoke <org.javacc.parser.Options: int getOtherAmbiguityCheck()>();	if i8 <= $i1 goto (branch);	if i8 <= 1 goto return;	return
;block_num 5