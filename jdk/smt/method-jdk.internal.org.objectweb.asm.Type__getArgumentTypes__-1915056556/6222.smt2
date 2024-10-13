(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var3617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var3617-init () (Array Int var3617))
(declare-const null-String String)
(declare-const var3686 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3686 null-String)))
(assert true)
(define-const var543 (Array Int Int) (toCharArray/415275702 var3686)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2272 Int 1) ; Statement: i9 = 1 
(define-const var2570 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var3544 Int var2272) ; Statement: $i0 = i9 
(define-const var2272!1 Int (+ var2272 1)) ; Statement: i9 = i9 + 1 
(define-const var236 Int (select var543 var3544)) ; Statement: $c1 = r1[$i0] 
(define-const var2374 Int (cast-from-Int-to-Int var236)) ; Statement: $i14 = (int) $c1 
 ; Statement: if $i14 != 41 goto $i15 = (int) $c1 
(assert (not (not (= var2374 41)))) ; Negate: Cond: $i14 != 41  
 ; Statement: goto [?= r5 = newarray (jdk.internal.org.objectweb.asm.Type)[i10]] 
(assert true) ; Non Conditional
(define-const var2670 (Array Int var3617) arr-var3617-init) ; Statement: r5 = newarray (jdk.internal.org.objectweb.asm.Type)[i10] 
(define-const var3556 Int 1) ; Statement: i11 = 1 
(define-const var33 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var2194 Int (select var543 var3556)) ; Statement: $c4 = r1[i11] 
(define-const var1176 Int (cast-from-Int-to-Int var2194)) ; Statement: $i18 = (int) $c4 
 ; Statement: if $i18 == 41 goto return r5 
(assert (= var1176 41)) ; Cond: $i18 == 41 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), cast-from-Int-to-Int=([char], int), arr-var3617-init=([], jdk.internal.org.objectweb.asm.Type[])}
; {var3686=r0, var3362=null_type, var543=r1, var2272=i9, var2570=i10, var3544=$i0, var236=$c1, var2374=$i14, var3617=jdk.internal.org.objectweb.asm.Type, var2670=r5, var3556=i11, var33=i12, var2194=$c4, var1176=$i18}
; {r0=var3686, null_type=var3362, r1=var543, i9=var2272, i10=var2570, $i0=var3544, $c1=var236, $i14=var2374, jdk.internal.org.objectweb.asm.Type=var3617, r5=var2670, i11=var3556, i12=var33, $c4=var2194, $i18=var1176}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i9 = 1;	i10 = 0;	$i0 = i9;	i9 = i9 + 1;	$c1 = r1[$i0];	$i14 = (int) $c1;	if $i14 != 41 goto $i15 = (int) $c1;	goto [?= r5 = newarray (jdk.internal.org.objectweb.asm.Type)[i10]];	r5 = newarray (jdk.internal.org.objectweb.asm.Type)[i10];	i11 = 1;	i12 = 0;	$c4 = r1[i11];	$i18 = (int) $c4;	if $i18 == 41 goto return r5;	return r5
;block_num 6