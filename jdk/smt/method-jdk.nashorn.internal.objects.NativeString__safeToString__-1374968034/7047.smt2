(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-838871573 (var2497) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2497 var2497)
(declare-const var3102 var2497) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var3102 null-var2497)))
(define-const var3045 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3045)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3045!1 String)
(assert (= var3045!1 ""))
(assert true)
(define-const var462 String (append/672562846 var3045!1 "[String ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[String ") 
(declare-const var3045!2 String)
(assert (= var3045!2 (str.++ var3045!1 "[String ")))
(assert true)
(define-const var2455 String (toString/-838871573 var3102)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeString: java.lang.String toString()>() 
(assert true)
(define-const var1634 String (append/672562846 var462 var2455)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var462!1 String)
(assert (= var462!1 (str.++ var462 var2455)))
(assert true)
(define-const var731 String (append/672562846 var1634 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1634!1 String)
(assert (= var1634!1 (str.++ var1634 "]")))
(assert true)
(define-const var637 String (toString/-2075883882 var731)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-838871573=([jdk.nashorn.internal.objects.NativeString], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2497=jdk.nashorn.internal.objects.NativeString, var3102=r1, var3045=$r0, var462=$r3, var2455=$r2, var1634=$r4, var731=$r5, var637=$r6}
; {jdk.nashorn.internal.objects.NativeString=var2497, r1=var3102, $r0=var3045, $r3=var462, $r2=var2455, $r4=var1634, $r5=var731, $r6=var637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.objects.NativeString: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeString;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[String ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeString: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1