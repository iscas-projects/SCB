(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort var2011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/-2006656189 (var1726) String)
(declare-fun length/-2006656189 (var1726) Int)
(declare-const null-var1726 var1726)
(declare-const null-String String)
(declare-const var2805 var1726) ; Statement: r0 := @this: com.mysql.cj.util.LazyString 
(assert (not (= var2805 null-var1726)))
(define-const var2203 String (string/-2006656189 var2805)) ; Statement: $r1 = r0.<com.mysql.cj.util.LazyString: java.lang.String string> 
 ; Statement: if $r1 == null goto $i0 = r0.<com.mysql.cj.util.LazyString: int length> 
(assert (= var2203 null-String)) ; Cond: $r1 == null 
(define-const var3436 Int (length/-2006656189 var2805)) ; Statement: $i0 = r0.<com.mysql.cj.util.LazyString: int length> 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {string/-2006656189=([com.mysql.cj.util.LazyString], java.lang.String), length/-2006656189=([com.mysql.cj.util.LazyString], int)}
; {var1726=com.mysql.cj.util.LazyString, var2805=r0, var2203=$r1, var2011=null_type, var3436=$i0}
; {com.mysql.cj.util.LazyString=var1726, r0=var2805, $r1=var2203, null_type=var2011, $i0=var3436}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.util.LazyString;	$r1 = r0.<com.mysql.cj.util.LazyString: java.lang.String string>;	if $r1 == null goto $i0 = r0.<com.mysql.cj.util.LazyString: int length>;	$i0 = r0.<com.mysql.cj.util.LazyString: int length>;	return $i0
;block_num 2