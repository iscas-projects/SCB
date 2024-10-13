(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3216_isConstantKey/-653340758 (String Int Int) Bool)
(declare-const null-var3216 var3216)
(declare-const null-String String)
(declare-const var1611 var3216) ; Statement: r1 := @this: com.google.javascript.jscomp.GoogleCodingConvention 
(assert (not (= var1611 null-var3216)))
(declare-const var1613 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1613 null-String)))
(assert true)
(define-const var612 Int (length/-134980193 var1613)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var377 Bool (var3216_isConstantKey/-653340758 var1613 0 var612)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.GoogleCodingConvention: boolean isConstantKey(java.lang.String,int,int)>(r0, 0, $i0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3216_isConstantKey/-653340758=([java.lang.String, int, int], boolean)}
; {var3216=com.google.javascript.jscomp.GoogleCodingConvention, var1611=r1, var1613=r0, var1211=null_type, var612=$i0, var377=$z0}
; {com.google.javascript.jscomp.GoogleCodingConvention=var3216, r1=var1611, r0=var1613, null_type=var1211, $i0=var612, $z0=var377}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.GoogleCodingConvention;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$z0 = staticinvoke <com.google.javascript.jscomp.GoogleCodingConvention: boolean isConstantKey(java.lang.String,int,int)>(r0, 0, $i0);	return $z0
;block_num 1