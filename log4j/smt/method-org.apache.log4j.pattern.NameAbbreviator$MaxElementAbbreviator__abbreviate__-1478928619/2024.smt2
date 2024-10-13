(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun count/-1962007669 (var3690) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(declare-const null-var3690 var3690)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1816 var3690) ; Statement: r2 := @this: org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator 
(assert (not (= var1816 null-var3690)))
(declare-const var2410 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2410 null-Int)))
(declare-const var3564 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3564 null-String)))
(assert true)
(define-const var3502 Int (length/-1112840705 var3564)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(define-const var2491 Int (- var3502 1)) ; Statement: i4 = $i0 - 1 
(assert true)
(define-const var2202 String (toString/-222306083 var3564)) ; Statement: r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var226 Int (count/-1962007669 var1816)) ; Statement: i5 = r2.<org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator: int count> 
(assert true) ; Non Conditional
 ; Statement: if i5 <= 0 goto $i2 = i4 + 1 
(assert (<= var226 0)) ; Cond: i5 <= 0 
(define-const var128 Int (+ var2491 1)) ; Statement: $i2 = i4 + 1 
(assert true)
;(assert (delete/-2415906 var3564 var2410 var128)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(i1, $i2) 

(declare-const var3564!1 String)
(declare-const var2410!1 Int)
(declare-const var128!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), count/-1962007669=([org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer)}
; {var3690=org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator, var1816=r2, var2410=i1, var3564=r0, var3502=$i0, var2491=i4, var2202=r1, var226=i5, var128=$i2}
; {org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator=var3690, r2=var1816, i1=var2410, r0=var3564, $i0=var3502, i4=var2491, r1=var2202, i5=var226, $i2=var128}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1}
;stmts r2 := @this: org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator;	i1 := @parameter0: int;	r0 := @parameter1: java.lang.StringBuffer;	$i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	i4 = $i0 - 1;	r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>();	i5 = r2.<org.apache.log4j.pattern.NameAbbreviator$MaxElementAbbreviator: int count>;	if i5 <= 0 goto $i2 = i4 + 1;	$i2 = i4 + 1;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(i1, $i2);	return
;block_num 3