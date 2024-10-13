(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1213682957 (var772) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var772 var772)
(declare-const var920 var772) ; Statement: r1 := @parameter0: jdk.jfr.internal.PlatformRecording 
(assert (not (= var920 null-var772)))
(define-const var2285 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2285)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2285!1 String)
(assert (= var2285!1 ""))
(assert true)
(define-const var815 String (append/672562846 var2285!1 "Could not dump recording ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not dump recording ") 
(declare-const var2285!2 String)
(assert (= var2285!2 (str.++ var2285!1 "Could not dump recording ")))
(assert true)
(define-const var3521 String (getName/-1213682957 var920)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>() 
(assert true)
(define-const var3987 String (append/672562846 var815 var3521)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var815!1 String)
(assert (= var815!1 (str.++ var815 var3521)))
(assert true)
(define-const var1844 String (append/672562846 var3987 " on exit.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on exit.") 
(declare-const var3987!1 String)
(assert (= var3987!1 (str.++ var3987 " on exit.")))
(assert true)
(define-const var1991 String (toString/-2075883882 var1844)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1213682957=([jdk.jfr.internal.PlatformRecording], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var772=jdk.jfr.internal.PlatformRecording, var920=r1, var2285=$r0, var815=$r3, var3521=$r2, var3987=$r4, var1844=$r5, var1991=$r6}
; {jdk.jfr.internal.PlatformRecording=var772, r1=var920, $r0=var2285, $r3=var815, $r2=var3521, $r4=var3987, $r5=var1844, $r6=var1991}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.jfr.internal.PlatformRecording;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not dump recording ");	$r2 = virtualinvoke r1.<jdk.jfr.internal.PlatformRecording: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on exit.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1