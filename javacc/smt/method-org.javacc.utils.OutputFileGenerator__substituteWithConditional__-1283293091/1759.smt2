(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1789 0)
(declare-sort var2996 0)
(declare-sort var197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var197-init () var197)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var197 String) void)
(declare-const null-var1789 var1789)
(declare-const null-String String)
(declare-const var1285 var1789) ; Statement: r1 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var1285 null-var1789)))
(declare-const var3472 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3472 null-String)))
(declare-const var3659 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3659 null-String)))
(assert true)
(define-const var2995 Int (indexOf/-1037706067 var3659 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(define-const var3046 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $z0 = specialinvoke r1.<org.javacc.utils.OutputFileGenerator: boolean evaluate(java.lang.String)>(r2) 
(assert (not (not (= var2995 var3046)))) ; Negate: Cond: i0 != $i3  
(define-const var2565 var197 var197-init) ; Statement: $r13 = new java.io.IOException 
(define-const var2233 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2233)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2233!1 String)
(assert (= var2233!1 ""))
(assert true)
(define-const var3225 String (append/672562846 var2233!1 "No \u0027:\u0027 separator in ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No \':\' separator in ") 
(declare-const var2233!2 String)
(assert (= var2233!2 (str.++ var2233!1 "No \u0027:\u0027 separator in ")))
(assert true)
(define-const var2718 String (append/672562846 var3225 var3659)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3225!1 String)
(assert (= var3225!1 (str.++ var3225 var3659)))
(assert true)
(define-const var594 String (toString/-2075883882 var2718)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2565 var594)) ; Statement: specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r11) 

(declare-const var2565!1 var197)
(declare-const var594!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var197-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1789=org.javacc.utils.OutputFileGenerator, var1285=r1, var3472=r2, var2996=null_type, var3659=r0, var2995=i0, var3046=$i3, var197=java.io.IOException, var2565=$r13, var2233=$r12, var3225=$r9, var2718=$r10, var594=$r11}
; {org.javacc.utils.OutputFileGenerator=var1789, r1=var1285, r2=var3472, null_type=var2996, r0=var3659, i0=var2995, $i3=var3046, java.io.IOException=var197, $r13=var2565, $r12=var2233, $r9=var3225, $r10=var2718, $r11=var594}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.utils.OutputFileGenerator;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	$i3 = (int) -1;	if i0 != $i3 goto $z0 = specialinvoke r1.<org.javacc.utils.OutputFileGenerator: boolean evaluate(java.lang.String)>(r2);	$r13 = new java.io.IOException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No \':\' separator in ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2