(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidDate/1137688615 (var871) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var871 var871)
(declare-const var1479 var871) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeDate 
(assert (not (= var1479 null-var871)))
(assert true)
(define-const var947 Bool (isValidDate/1137688615 var1479)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>() 
 ; Statement: if $z0 == 0 goto $r6 = "Invalid Date" 
(assert (= (ite var947 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1755 String "Invalid Date") ; Statement: $r6 = "Invalid Date" 
(assert true) ; Non Conditional
(define-const var2968 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
(define-const var1688 String (append/672562846 var2968!1 "[Date ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Date ") 
(declare-const var2968!2 String)
(assert (= var2968!2 (str.++ var2968!1 "[Date ")))
(assert true)
(define-const var2572 String (append/672562846 var1688 var1755)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1688!1 String)
(assert (= var1688!1 (str.++ var1688 var1755)))
(assert true)
(define-const var3807 String (append/672562846 var2572 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2572!1 String)
(assert (= var2572!1 (str.++ var2572 "]")))
(assert true)
(define-const var3837 String (toString/-2075883882 var3807)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidDate/1137688615=([jdk.nashorn.internal.objects.NativeDate], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var871=jdk.nashorn.internal.objects.NativeDate, var1479=r0, var947=$z0, var1755=$r6, var2968=$r1, var1688=$r2, var2572=$r3, var3807=$r4, var3837=$r5}
; {jdk.nashorn.internal.objects.NativeDate=var871, r0=var1479, $z0=var947, $r6=var1755, $r1=var2968, $r2=var1688, $r3=var2572, $r4=var3807, $r5=var3837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeDate;	$z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>();	if $z0 == 0 goto $r6 = "Invalid Date";	$r6 = "Invalid Date";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Date ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3