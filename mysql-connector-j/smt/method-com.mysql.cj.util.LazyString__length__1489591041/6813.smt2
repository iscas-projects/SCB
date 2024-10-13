(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/-2006656189 (var889) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var889 var889)
(declare-const null-String String)
(declare-const var1498 var889) ; Statement: r0 := @this: com.mysql.cj.util.LazyString 
(assert (not (= var1498 null-var889)))
(define-const var1763 String (string/-2006656189 var1498)) ; Statement: $r1 = r0.<com.mysql.cj.util.LazyString: java.lang.String string> 
 ; Statement: if $r1 == null goto $i0 = r0.<com.mysql.cj.util.LazyString: int length> 
(assert (not (= var1763 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3794 String (string/-2006656189 var1498)) ; Statement: $r2 = r0.<com.mysql.cj.util.LazyString: java.lang.String string> 
(assert true)
(define-const var1432 Int (length/-134980193 var3794)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {string/-2006656189=([com.mysql.cj.util.LazyString], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var889=com.mysql.cj.util.LazyString, var1498=r0, var1763=$r1, var3767=null_type, var3794=$r2, var1432=$i1}
; {com.mysql.cj.util.LazyString=var889, r0=var1498, $r1=var1763, null_type=var3767, $r2=var3794, $i1=var1432}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.util.LazyString;	$r1 = r0.<com.mysql.cj.util.LazyString: java.lang.String string>;	if $r1 == null goto $i0 = r0.<com.mysql.cj.util.LazyString: int length>;	$r2 = r0.<com.mysql.cj.util.LazyString: java.lang.String string>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	return $i1
;block_num 2