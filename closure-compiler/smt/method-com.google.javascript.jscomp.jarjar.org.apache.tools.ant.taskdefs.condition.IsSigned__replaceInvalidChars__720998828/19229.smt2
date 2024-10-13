(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1899 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1899 null-String)))
(define-const var1606 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1606)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1606!1 String)
(assert (= var1606!1 ""))
(define-const var2504 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true)
(define-const var954 (Array Int Int) (toCharArray/415275702 var1899)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1320 Int (getLength-Arr-Int-1 var954)) ; Statement: i0 = lengthof r2 
(define-const var3817 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto (branch) 
(assert (>= var3817 var1320)) ; Cond: i3 >= i0 
 ; Statement: if z0 == 0 goto $r4 = r1 
(assert (not (= (ite var2504 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var1009 String (toString/-2075883882 var1606!1)) ; Statement: $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1899=r1, var1559=null_type, var1606=$r5, var2504=z0, var954=r2, var1320=i0, var3817=i3, var1009=$r4}
; {r1=var1899, null_type=var1559, $r5=var1606, z0=var2504, r2=var954, i0=var1320, i3=var3817, $r4=var1009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	z0 = 0;	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i3 = 0;	if i3 >= i0 goto (branch);	if z0 == 0 goto $r4 = r1;	$r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r4];	return $r4
;block_num 5