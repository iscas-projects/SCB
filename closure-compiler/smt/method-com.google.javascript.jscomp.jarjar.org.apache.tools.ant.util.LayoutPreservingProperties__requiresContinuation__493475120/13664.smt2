(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1868 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1868 var1868)
(declare-const null-String String)
(declare-const var3019 var1868) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var3019 null-var1868)))
(declare-const var1024 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1024 null-String)))
(assert true)
(define-const var3827 (Array Int Int) (toCharArray/415275702 var1024)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3396 Int (getLength-Arr-Int-1 var3827)) ; Statement: $i0 = lengthof r1 
(define-const var718 Int (- var3396 1)) ; Statement: i6 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i6 <= 0 goto $i1 = lengthof r1 
(assert (<= var718 0)) ; Cond: i6 <= 0 
(define-const var3623 Int (getLength-Arr-Int-1 var3827)) ; Statement: $i1 = lengthof r1 
(define-const var3452 Int (- var3623 var718)) ; Statement: $i2 = $i1 - i6 
(define-const var3065 Int (- var3452 1)) ; Statement: $i5 = $i2 - 1 
(define-const var2491 Int (mod var3065 2)) ; Statement: $i3 = $i5 % 2 
 ; Statement: if $i3 != 1 goto $z0 = 0 
(assert (not (not (= var2491 1)))) ; Negate: Cond: $i3 != 1  
(define-const var2816 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var1868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var3019=r2, var1024=r0, var2820=null_type, var3827=r1, var3396=$i0, var718=i6, var3623=$i1, var3452=$i2, var3065=$i5, var2491=$i3, var2816=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var1868, r2=var3019, r0=var1024, null_type=var2820, r1=var3827, $i0=var3396, i6=var718, $i1=var3623, $i2=var3452, $i5=var3065, $i3=var2491, $z0=var2816}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$i0 = lengthof r1;	i6 = $i0 - 1;	if i6 <= 0 goto $i1 = lengthof r1;	$i1 = lengthof r1;	$i2 = $i1 - i6;	$i5 = $i2 - 1;	$i3 = $i5 % 2;	if $i3 != 1 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 5