(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var2638 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2638 null-Int)))
(declare-const var1407 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1407 null-Int)))
 ; Statement: if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var2638 2147483647))) ; Cond: i0 != 2147483647 
(define-const var1731 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1731)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1731!1 String)
(assert (= var1731!1 ""))
(assert true)
(define-const var3922 String (append/672562846 var1731!1 "")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1731!2 String)
(assert (= var1731!2 (str.++ var1731!1 "")))
(assert true)
(define-const var2115 String (append/672562846 var3922 "(")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3922!1 String)
(assert (= var3922!1 (str.++ var3922 "(")))
(assert true)
(define-const var3088 String (append/-1001720160 var2115 var2638)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2115!1 String)
(assert (str.prefixof var2115 var2115!1))
(assert true)
(define-const var3400 String (append/672562846 var3088 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3088!1 String)
(assert (= var3088!1 (str.++ var3088 ")")))
(assert true)
(define-const var2871 String (toString/-2075883882 var3400)) ; Statement: r20 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3226 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3226)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3226!1 String)
(assert (= var3226!1 ""))
(assert true)
(define-const var1719 String (append/672562846 var3226!1 var2871)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3226!2 String)
(assert (= var3226!2 (str.++ var3226!1 var2871)))
(assert true)
(define-const var1018 String (append/672562846 var1719 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var1719!1 String)
(assert (= var1719!1 (str.++ var1719 "-")))
(assert true)
(define-const var273 String (toString/-2075883882 var1018)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder 
(assert (not (not (= var1407 2147483647)))) ; Negate: Cond: i1 != 2147483647  
(define-const var2947 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2947)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2947!1 String)
(assert (= var2947!1 ""))
(assert true)
(define-const var321 String (append/672562846 var2947!1 var273)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2947!2 String)
(assert (= var2947!2 (str.++ var2947!1 var273)))
(assert true)
(define-const var2233 String (append/672562846 var321 "inf")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inf") 
(declare-const var321!1 String)
(assert (= var321!1 (str.++ var321 "inf")))
(assert true)
(define-const var3347 String (toString/-2075883882 var2233)) ; Statement: r21 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r21] 
(assert true) ; Non Conditional
 ; Statement: return r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2638=i0, var1407=i1, var1731=$r0, var3922=$r1, var2115=$r2, var3088=$r3, var3400=$r4, var2871=r20, var3226=$r5, var1719=$r6, var1018=$r7, var273=$r19, var2947=$r13, var321=$r14, var2233=$r15, var3347=r21}
; {i0=var2638, i1=var1407, $r0=var1731, $r1=var3922, $r2=var2115, $r3=var3088, $r4=var3400, r20=var2871, $r5=var3226, $r6=var1719, $r7=var1018, $r19=var273, $r13=var2947, $r14=var321, $r15=var2233, r21=var3347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r20 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("inf");	r21 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r21];	return r21
;block_num 5