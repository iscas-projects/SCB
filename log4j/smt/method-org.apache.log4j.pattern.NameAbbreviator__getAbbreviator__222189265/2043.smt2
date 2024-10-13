(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2081 0)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2117-DEFAULT var2117)
(declare-const var1784 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1784 null-String)))
(assert true)
(define-const var1433 Int (length/-134980193 var1784)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r1 = <org.apache.log4j.pattern.NameAbbreviator: org.apache.log4j.pattern.NameAbbreviator DEFAULT> 
(assert (<= var1433 0)) ; Cond: $i0 <= 0 
(define-const var2010 var2117 var2117-DEFAULT) ; Statement: $r1 = <org.apache.log4j.pattern.NameAbbreviator: org.apache.log4j.pattern.NameAbbreviator DEFAULT> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1784=r0, var2081=null_type, var1433=$i0, var2117=org.apache.log4j.pattern.NameAbbreviator, var2010=$r1}
; {r0=var1784, null_type=var2081, $i0=var1433, org.apache.log4j.pattern.NameAbbreviator=var2117, $r1=var2010}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto $r1 = <org.apache.log4j.pattern.NameAbbreviator: org.apache.log4j.pattern.NameAbbreviator DEFAULT>;	$r1 = <org.apache.log4j.pattern.NameAbbreviator: org.apache.log4j.pattern.NameAbbreviator DEFAULT>;	return $r1
;block_num 2