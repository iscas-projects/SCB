(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const var1912 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1912 null-String)))
(define-const var2777 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2777)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2777!1 String)
(assert (= var2777!1 ""))
(define-const var3293 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true)
(define-const var1545 (Array Int Int) (toCharArray/415275702 var1912)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var3591 Int (getLength-Arr-Int-1 var1545)) ; Statement: i0 = lengthof r2 
(define-const var2698 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto (branch) 
(assert (>= var2698 var3591)) ; Cond: i3 >= i0 
 ; Statement: if z0 == 0 goto $r4 = r1 
(assert (= (ite var3293 1 0) 0)) ; Cond: z0 == 0 
(define-const var3379 String var1912) ; Statement: $r4 = r1 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var1912=r1, var1283=null_type, var2777=$r5, var3293=z0, var1545=r2, var3591=i0, var2698=i3, var3379=$r4}
; {r1=var1912, null_type=var1283, $r5=var2777, z0=var3293, r2=var1545, i0=var3591, i3=var2698, $r4=var3379}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	z0 = 0;	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i3 = 0;	if i3 >= i0 goto (branch);	if z0 == 0 goto $r4 = r1;	$r4 = r1;	return $r4
;block_num 5