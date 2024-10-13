(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort var3210 0)
(declare-sort var3574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun occurrences/1406333460 (var3210) var3574)
(declare-fun size/-1863229846 (var3574) Int)
(declare-const null-String String)
(declare-const null-var3210 var3210)
(declare-const var1904 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1904 null-String)))
(declare-const var815 var3210) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.AliasStrings$StringInfo 
(assert (not (= var815 null-var3210)))
(assert true)
(define-const var2379 Int (length/-134980193 var1904)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var584 Int (+ 2 var2379)) ; Statement: i1 = 2 + $i0 
(define-const var862 var3574 (occurrences/1406333460 var815)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.AliasStrings$StringInfo: java.util.ArrayList occurrences> 
(assert true)
(define-const var1337 Int (size/-1863229846 var862)) ; Statement: i2 = virtualinvoke $r2.<java.util.ArrayList: int size()>() 
(define-const var2836 Int (* var1337 var584)) ; Statement: i3 = i2 * i1 
(define-const var2579 Int (+ 9 var584)) ; Statement: $i5 = 9 + i1 
(define-const var140 Int (* var1337 3)) ; Statement: $i4 = i2 * 3 
(define-const var3519 Int (+ var2579 var140)) ; Statement: i6 = $i5 + $i4 
 ; Statement: if i6 >= i3 goto $z0 = 0 
(assert (not (>= var3519 var2836))) ; Negate: Cond: i6 >= i3  
(define-const var3356 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), occurrences/1406333460=([com.google.javascript.jscomp.AliasStrings$StringInfo], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int)}
; {var1904=r0, var2696=null_type, var3210=com.google.javascript.jscomp.AliasStrings$StringInfo, var815=r1, var2379=$i0, var584=i1, var3574=java.util.ArrayList, var862=$r2, var1337=i2, var2836=i3, var2579=$i5, var140=$i4, var3519=i6, var3356=$z0}
; {r0=var1904, null_type=var2696, com.google.javascript.jscomp.AliasStrings$StringInfo=var3210, r1=var815, $i0=var2379, i1=var584, java.util.ArrayList=var3574, $r2=var862, i2=var1337, i3=var2836, $i5=var2579, $i4=var140, i6=var3519, $z0=var3356}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.AliasStrings$StringInfo;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = 2 + $i0;	$r2 = r1.<com.google.javascript.jscomp.AliasStrings$StringInfo: java.util.ArrayList occurrences>;	i2 = virtualinvoke $r2.<java.util.ArrayList: int size()>();	i3 = i2 * i1;	$i5 = 9 + i1;	$i4 = i2 * 3;	i6 = $i5 + $i4;	if i6 >= i3 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3