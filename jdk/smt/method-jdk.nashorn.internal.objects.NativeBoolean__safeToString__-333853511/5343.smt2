(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-736165626 (var2640) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2640 var2640)
(declare-const var3907 var2640) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeBoolean 
(assert (not (= var3907 null-var2640)))
(define-const var1813 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1813)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1813!1 String)
(assert (= var1813!1 ""))
(assert true)
(define-const var1131 String (append/672562846 var1813!1 "[Boolean ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Boolean ") 
(declare-const var1813!2 String)
(assert (= var1813!2 (str.++ var1813!1 "[Boolean ")))
(assert true)
(define-const var10 String (toString/-736165626 var3907)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeBoolean: java.lang.String toString()>() 
(assert true)
(define-const var332 String (append/672562846 var1131 var10)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 var10)))
(assert true)
(define-const var672 String (append/672562846 var332 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var332!1 String)
(assert (= var332!1 (str.++ var332 "]")))
(assert true)
(define-const var261 String (toString/-2075883882 var672)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-736165626=([jdk.nashorn.internal.objects.NativeBoolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2640=jdk.nashorn.internal.objects.NativeBoolean, var3907=r1, var1813=$r0, var1131=$r3, var10=$r2, var332=$r4, var672=$r5, var261=$r6}
; {jdk.nashorn.internal.objects.NativeBoolean=var2640, r1=var3907, $r0=var1813, $r3=var1131, $r2=var10, $r4=var332, $r5=var672, $r6=var261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.objects.NativeBoolean: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeBoolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Boolean ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeBoolean: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1