(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3962 0)
(declare-sort var2918 0)
(declare-sort var3330 0)
(declare-sort var1235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3330) String)
(declare-fun cast-from-var3962-to-var3330 (var3962) var3330)
(declare-fun getMessage/849299655 (var1235) String)
(declare-fun cast-from-var2918-to-var1235 (var2918) var1235)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3962 var3962)
(declare-const null-var2918 var2918)
(declare-const var2127 var3962) ; Statement: r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var2127 null-var3962)))
(declare-const var274 var2918) ; Statement: r4 := @parameter1: java.io.IOException 
(assert (not (= var274 null-var2918)))
(define-const var1107 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1107)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1107!1 String)
(assert (= var1107!1 ""))
(assert true)
(define-const var210 String (append/672562846 var1107!1 "Repository chunk ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Repository chunk ") 
(declare-const var1107!2 String)
(assert (= var1107!2 (str.++ var1107!1 "Repository chunk ")))
(assert true)
(define-const var1037 String (append/-1031950772 var210 (cast-from-var3962-to-var3330 var2127))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var210!1 String)
(assert (str.prefixof var210 var210!1))
(assert true)
(define-const var2338 String (append/672562846 var1037 " could not be deleted: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be deleted: ") 
(declare-const var1037!1 String)
(assert (= var1037!1 (str.++ var1037 " could not be deleted: ")))
(assert true)
(define-const var68 String (getMessage/849299655 (cast-from-var2918-to-var1235 var274))) ; Statement: $r5 = virtualinvoke r4.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2298 String (append/672562846 var2338 var68)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2338!1 String)
(assert (= var2338!1 (str.++ var2338 var68)))
(assert true)
(define-const var1807 String (toString/-2075883882 var2298)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3962-to-var3330=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2918-to-var1235=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3962=jdk.jfr.internal.SecuritySupport$SafePath, var2127=r1, var2918=java.io.IOException, var274=r4, var1107=$r0, var210=$r2, var3330=java.lang.Object, var1037=$r3, var2338=$r6, var1235=java.lang.Throwable, var68=$r5, var2298=$r7, var1807=$r8}
; {jdk.jfr.internal.SecuritySupport$SafePath=var3962, r1=var2127, java.io.IOException=var2918, r4=var274, $r0=var1107, $r2=var210, java.lang.Object=var3330, $r3=var1037, $r6=var2338, java.lang.Throwable=var1235, $r5=var68, $r7=var2298, $r8=var1807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	r4 := @parameter1: java.io.IOException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Repository chunk ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be deleted: ");	$r5 = virtualinvoke r4.<java.io.IOException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1