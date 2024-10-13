(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun i/1478879420 (var2194) Int)
(declare-fun patternLength/1478879420 (var2194) Int)
(declare-fun currentLiteral/1478879420 (var2194) String)
(declare-fun length/-1112840705 (String) Int)
(declare-fun head/1478879420 (var2194) var1313)
(declare-const null-var2194 var2194)
(declare-const var1511 var2194) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var1511 null-var2194)))
(declare-const var1511!1 var2194)
(assert (not (= var1511!1 null-var2194)))
(assert (= (i/1478879420 var1511!1) 0)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: int i> = 0 
(assert true) ; Non Conditional
(define-const var1371 Int (i/1478879420 var1511!1)) ; Statement: $i25 = r0.<org.apache.log4j.helpers.PatternParser: int i> 
(define-const var1546 Int (patternLength/1478879420 var1511!1)) ; Statement: $i26 = r0.<org.apache.log4j.helpers.PatternParser: int patternLength> 
 ; Statement: if $i25 >= $i26 goto $r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert (>= var1371 var1546)) ; Cond: $i25 >= $i26 
(define-const var3032 String (currentLiteral/1478879420 var1511!1)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
(define-const var3018 Int (length/-1112840705 var3032)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i0 == 0 goto $r2 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter head> 
(assert (= var3018 0)) ; Cond: $i0 == 0 
(define-const var568 var1313 (head/1478879420 var1511!1)) ; Statement: $r2 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter head> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {i/1478879420=([org.apache.log4j.helpers.PatternParser], int), patternLength/1478879420=([org.apache.log4j.helpers.PatternParser], int), currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), head/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.PatternConverter)}
; {var2194=org.apache.log4j.helpers.PatternParser, var1511=r0, var1371=$i25, var1546=$i26, var3032=$r1, var3018=$i0, var1313=org.apache.log4j.helpers.PatternConverter, var568=$r2}
; {org.apache.log4j.helpers.PatternParser=var2194, r0=var1511, $i25=var1371, $i26=var1546, $r1=var3032, $i0=var3018, org.apache.log4j.helpers.PatternConverter=var1313, $r2=var568}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser;	r0.<org.apache.log4j.helpers.PatternParser: int i> = 0;	$i25 = r0.<org.apache.log4j.helpers.PatternParser: int i>;	$i26 = r0.<org.apache.log4j.helpers.PatternParser: int patternLength>;	if $i25 >= $i26 goto $r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	$r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>();	if $i0 == 0 goto $r2 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter head>;	$r2 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter head>;	return $r2
;block_num 4