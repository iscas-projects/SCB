(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var2466 var2466)
(declare-const null-Int Int)
(declare-const var1943 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1943 null-String)))
(declare-const var3921 var2466) ; Statement: r3 := @parameter1: java.util.regex.Pattern 
(assert (not (= var3921 null-var2466)))
(declare-const var1673 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1673 null-Int)))
(define-const var2873 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(define-const var1313 Int var2873) ; Statement: i6 = $i8 
(assert true)
(define-const var3332 String (toString/-2075883882 var1943)) ; Statement: r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1857 Int (length/-134980193 var3332)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 < i0 goto $i10 = (int) -1 
(assert (< var1857 var1673)) ; Cond: $i1 < i0 
(define-const var1714 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1943=r0, var2466=java.util.regex.Pattern, var3921=r3, var1673=i0, var2873=$i8, var1313=i6, var3332=r1, var1857=$i1, var1714=$i10}
; {r0=var1943, java.util.regex.Pattern=var2466, r3=var3921, i0=var1673, $i8=var2873, i6=var1313, r1=var3332, $i1=var1857, $i10=var1714}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r3 := @parameter1: java.util.regex.Pattern;	i0 := @parameter2: int;	$i8 = (int) -1;	i6 = $i8;	r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 < i0 goto $i10 = (int) -1;	$i10 = (int) -1;	return $i10
;block_num 2