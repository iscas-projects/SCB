(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var775 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var775 null-String)))
(define-const var490 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var490)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var490!1 String)
(assert (= var490!1 ""))
(define-const var1250 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true)
(define-const var1224 (Array Int Int) (toCharArray/415275702 var775)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1804 Int (getLength-Arr-Int-1 var1224)) ; Statement: i0 = lengthof r2 
(define-const var3707 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3707 var1804)) ; Cond: i2 >= i0 
(assert true)
(define-const var3060 String (toString/-2075883882 var490!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var775=r1, var3021=null_type, var490=$r4, var1250=z0, var1224=r2, var1804=i0, var3707=i2, var3060=$r3}
; {r1=var775, null_type=var3021, $r4=var490, z0=var1250, r2=var1224, i0=var1804, i2=var3707, $r3=var3060}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	z0 = 0;	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3