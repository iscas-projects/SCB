(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var542 0)
(declare-sort var1367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var542 var542)
(declare-const null-String String)
(declare-const var546 var542) ; Statement: r1 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var546 null-var542)))
(declare-const var195 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var195 null-String)))
(assert true)
(define-const var2419 Int (length/-134980193 var195)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 2 goto return 0 
(assert (< var2419 2)) ; Cond: $i0 < 2 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var542=org.apache.log4j.config.PropertyPrinter, var546=r1, var195=r0, var1367=null_type, var2419=$i0}
; {org.apache.log4j.config.PropertyPrinter=var542, r1=var546, r0=var195, null_type=var1367, $i0=var2419}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.log4j.config.PropertyPrinter;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 < 2 goto return 0;	return 0
;block_num 2