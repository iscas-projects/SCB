(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3413 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3413 null-String)))
(define-const var2350 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2350)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2350!1 String)
(assert (= var2350!1 ""))
(assert true)
(define-const var656 (Array Int Int) (toCharArray/415275702 var3413)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var3225 Int (getLength-Arr-Int-1 var656)) ; Statement: i0 = lengthof r2 
(define-const var2441 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2441 var3225)) ; Cond: i2 >= i0 
(assert true)
(define-const var1961 String (toString/-2075883882 var2350!1)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3413=r1, var2638=null_type, var2350=$r7, var656=r2, var3225=i0, var2441=i2, var1961=$r3}
; {r1=var3413, null_type=var2638, $r7=var2350, r2=var656, i0=var3225, i2=var2441, $r3=var1961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3