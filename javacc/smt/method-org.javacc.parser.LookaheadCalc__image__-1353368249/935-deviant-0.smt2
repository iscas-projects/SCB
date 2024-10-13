(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstFreeLoc/-1036304826 (var2517) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2517 var2517)
(declare-const var1165 var2517) ; Statement: r0 := @parameter0: org.javacc.parser.MatchInfo 
(assert (not (= var1165 null-var2517)))
(define-const var1458 String "") ; Statement: r32 = "" 
(define-const var2121 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var218 Int (firstFreeLoc/-1036304826 var1165)) ; Statement: $i0 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc> 
 ; Statement: if i4 >= $i0 goto $i1 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc> 
(assert (>= var2121 var218)) ; Cond: i4 >= $i0 
(define-const var1959 Int (firstFreeLoc/-1036304826 var1165)) ; Statement: $i1 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc> 
 ; Statement: if $i1 != 0 goto $r1 = virtualinvoke r32.<java.lang.String: java.lang.String substring(int)>(1) 
(assert (not (= var1959 0))) ; Cond: $i1 != 0 
(assert (not (and true (and (>= 1 0) (>= (str.len var1458) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {firstFreeLoc/-1036304826=([org.javacc.parser.MatchInfo], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2517=org.javacc.parser.MatchInfo, var1165=r0, var1458=r32, var2121=i4, var218=$i0, var1959=$i1, var3943=$r1}
; {org.javacc.parser.MatchInfo=var2517, r0=var1165, r32=var1458, i4=var2121, $i0=var218, $i1=var1959, $r1=var3943}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.MatchInfo;	r32 = "";	i4 = 0;	$i0 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc>;	if i4 >= $i0 goto $i1 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc>;	$i1 = r0.<org.javacc.parser.MatchInfo: int firstFreeLoc>;	if $i1 != 0 goto $r1 = virtualinvoke r32.<java.lang.String: java.lang.String substring(int)>(1);	$r1 = virtualinvoke r32.<java.lang.String: java.lang.String substring(int)>(1);	return $r1
;block_num 4