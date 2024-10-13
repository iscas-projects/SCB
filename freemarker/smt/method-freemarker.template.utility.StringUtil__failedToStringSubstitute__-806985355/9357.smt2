(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var234 0)
(declare-sort var2430 0)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1969_getShortClassNameOfObject/-1665341662 (var234) String)
(declare-fun cast-from-var2430-to-var234 (var2430) var234)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var234 var234)
(declare-const null-var2430 var2430)
(declare-const var283 var234) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var283 null-var234)))
(declare-const var1399 var2430) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var1399 null-var2430)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2913 var2430) ; Statement: $r10 := @caughtexception 
(assert (not (= var2913 null-var2430)))
(define-const var766 String (var1969_getShortClassNameOfObject/-1665341662 (cast-from-var2430-to-var234 var1399))) ; Statement: r11 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
(define-const var1694 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1694)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1694!1 String)
(assert (= var1694!1 ""))
(assert true)
(define-const var3317 String (append/672562846 var1694!1 "[")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1694!2 String)
(assert (= var1694!2 (str.++ var1694!1 "[")))
(define-const var3680 String (var1969_getShortClassNameOfObject/-1665341662 var283)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2) 
(assert true)
(define-const var3420 String (append/672562846 var3317 var3680)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 var3680)))
(assert true)
(define-const var3901 String (append/672562846 var3420 ".toString() failed: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ") 
(declare-const var3420!1 String)
(assert (= var3420!1 (str.++ var3420 ".toString() failed: ")))
(assert true)
(define-const var3993 String (append/672562846 var3901 var766)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var3901!1 String)
(assert (= var3901!1 (str.++ var3901 var766)))
(assert true)
(define-const var926 String (append/672562846 var3993 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 "]")))
(assert true)
(define-const var1313 String (toString/-2075883882 var926)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1969_getShortClassNameOfObject/-1665341662=([java.lang.Object], java.lang.String), cast-from-var2430-to-var234=([java.lang.Throwable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var234=java.lang.Object, var283=r2, var2430=java.lang.Throwable, var1399=r0, var2913=$r10, var1969=freemarker.template.utility.ClassUtil, var766=r11, var1694=$r1, var3317=$r4, var3680=$r3, var3420=$r5, var3901=$r6, var3993=$r7, var926=$r8, var1313=$r9}
; {java.lang.Object=var234, r2=var283, java.lang.Throwable=var2430, r0=var1399, $r10=var2913, freemarker.template.utility.ClassUtil=var1969, r11=var766, $r1=var1694, $r4=var3317, $r3=var3680, $r5=var3420, $r6=var3901, $r7=var3993, $r8=var926, $r9=var1313}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Throwable;	$r10 := @caughtexception;	r11 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3