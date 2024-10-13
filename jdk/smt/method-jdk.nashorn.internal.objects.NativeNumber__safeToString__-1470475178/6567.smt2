(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1768283939 (var2754) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2754 var2754)
(declare-const var7 var2754) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeNumber 
(assert (not (= var7 null-var2754)))
(define-const var1613 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1613)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1613!1 String)
(assert (= var1613!1 ""))
(assert true)
(define-const var1306 String (append/672562846 var1613!1 "[Number ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Number ") 
(declare-const var1613!2 String)
(assert (= var1613!2 (str.++ var1613!1 "[Number ")))
(assert true)
(define-const var1951 String (toString/1768283939 var7)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeNumber: java.lang.String toString()>() 
(assert true)
(define-const var2667 String (append/672562846 var1306 var1951)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1306!1 String)
(assert (= var1306!1 (str.++ var1306 var1951)))
(assert true)
(define-const var1955 String (append/672562846 var2667 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2667!1 String)
(assert (= var2667!1 (str.++ var2667 "]")))
(assert true)
(define-const var880 String (toString/-2075883882 var1955)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1768283939=([jdk.nashorn.internal.objects.NativeNumber], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2754=jdk.nashorn.internal.objects.NativeNumber, var7=r1, var1613=$r0, var1306=$r3, var1951=$r2, var2667=$r4, var1955=$r5, var880=$r6}
; {jdk.nashorn.internal.objects.NativeNumber=var2754, r1=var7, $r0=var1613, $r3=var1306, $r2=var1951, $r4=var2667, $r5=var1955, $r6=var880}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.objects.NativeNumber: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeNumber;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Number ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeNumber: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1