(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var540 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var540 null-String)))
(declare-const var258 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var258 null-String)))
(declare-const var1492 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1492 null-String)))
(assert true)
(define-const var80 Int (length/-134980193 var1492)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 0 goto $z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled> 
(assert (not (> var80 0))) ; Negate: Cond: $i0 > 0  
(assert true)
(define-const var3622 Int (length/-134980193 var258)) ; Statement: $i9 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if $i9 <= 0 goto return r2 
(assert (<= var3622 0)) ; Cond: $i9 <= 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var540=r2, var3512=null_type, var258=r3, var1492=r0, var80=$i0, var3622=$i9}
; {r2=var540, null_type=var3512, r3=var258, r0=var1492, $i0=var80, $i9=var3622}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 0 goto $z0 = <org.apache.lucene.index.IndexFileNames: boolean $assertionsDisabled>;	$i9 = virtualinvoke r3.<java.lang.String: int length()>();	if $i9 <= 0 goto return r2;	return r2
;block_num 3