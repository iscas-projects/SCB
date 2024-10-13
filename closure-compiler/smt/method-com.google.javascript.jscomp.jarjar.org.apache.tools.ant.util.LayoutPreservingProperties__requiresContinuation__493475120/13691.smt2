(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort var3382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var285 var285)
(declare-const null-String String)
(declare-const var3080 var285) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var3080 null-var285)))
(declare-const var1929 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1929 null-String)))
(assert true)
(define-const var3569 (Array Int Int) (toCharArray/415275702 var1929)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1289 Int (getLength-Arr-Int-1 var3569)) ; Statement: $i0 = lengthof r1 
(define-const var3531 Int (- var1289 1)) ; Statement: i6 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i6 <= 0 goto $i1 = lengthof r1 
(assert (<= var3531 0)) ; Cond: i6 <= 0 
(define-const var2892 Int (getLength-Arr-Int-1 var3569)) ; Statement: $i1 = lengthof r1 
(define-const var1245 Int (- var2892 var3531)) ; Statement: $i2 = $i1 - i6 
(define-const var2435 Int (- var1245 1)) ; Statement: $i5 = $i2 - 1 
(define-const var3733 Int (mod var2435 2)) ; Statement: $i3 = $i5 % 2 
 ; Statement: if $i3 != 1 goto $z0 = 0 
(assert (not (= var3733 1))) ; Cond: $i3 != 1 
(define-const var2115 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var285=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var3080=r2, var1929=r0, var3382=null_type, var3569=r1, var1289=$i0, var3531=i6, var2892=$i1, var1245=$i2, var2435=$i5, var3733=$i3, var2115=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var285, r2=var3080, r0=var1929, null_type=var3382, r1=var3569, $i0=var1289, i6=var3531, $i1=var2892, $i2=var1245, $i5=var2435, $i3=var3733, $z0=var2115}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$i0 = lengthof r1;	i6 = $i0 - 1;	if i6 <= 0 goto $i1 = lengthof r1;	$i1 = lengthof r1;	$i2 = $i1 - i6;	$i5 = $i2 - 1;	$i3 = $i5 % 2;	if $i3 != 1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 5