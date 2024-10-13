(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var102 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var102 null-String)))
(declare-const var3793 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3793 null-Bool)))
(define-const var3580 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3580)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3580!1 String)
(assert (= var3580!1 ""))
(assert true)
(define-const var41 (Array Int Int) (toCharArray/415275702 var102)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1425 Int (getLength-Arr-Int-1 var41)) ; Statement: i0 = lengthof r2 
(define-const var3712 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3712 var1425)) ; Cond: i2 >= i0 
(assert true)
(define-const var3175 String (toString/-2075883882 var3580!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var102=r1, var1093=null_type, var3793=z0, var3580=$r4, var41=r2, var1425=i0, var3712=i2, var3175=$r3}
; {r1=var102, null_type=var1093, z0=var3793, $r4=var3580, r2=var41, i0=var1425, i2=var3712, $r3=var3175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3