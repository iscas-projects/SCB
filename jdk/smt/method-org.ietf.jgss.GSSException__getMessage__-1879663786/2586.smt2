(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun minor/111710723 (var3379) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMajorString/1398792531 (var3379) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMinorString/-432100649 (var3379) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3379 var3379)
(declare-const var126 var3379) ; Statement: r0 := @this: org.ietf.jgss.GSSException 
(assert (not (= var126 null-var3379)))
(define-const var2626 Int (minor/111710723 var126)) ; Statement: $i0 = r0.<org.ietf.jgss.GSSException: int minor> 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var2626 0))) ; Cond: $i0 != 0 
(define-const var3137 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3137)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3137!1 String)
(assert (= var3137!1 ""))
(assert true)
(define-const var844 String (getMajorString/1398792531 var126)) ; Statement: $r2 = virtualinvoke r0.<org.ietf.jgss.GSSException: java.lang.String getMajorString()>() 
(assert true)
(define-const var2998 String (append/672562846 var3137!1 var844)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3137!2 String)
(assert (= var3137!2 (str.++ var3137!1 var844)))
(assert true)
(define-const var2755 String (append/672562846 var2998 " (Mechanism level: ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (Mechanism level: ") 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 " (Mechanism level: ")))
(assert true)
(define-const var3868 String (getMinorString/-432100649 var126)) ; Statement: $r4 = virtualinvoke r0.<org.ietf.jgss.GSSException: java.lang.String getMinorString()>() 
(assert true)
(define-const var3891 String (append/672562846 var2755 var3868)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2755!1 String)
(assert (= var2755!1 (str.++ var2755 var3868)))
(assert true)
(define-const var2320 String (append/672562846 var3891 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3891!1 String)
(assert (= var3891!1 (str.++ var3891 ")")))
(assert true)
(define-const var1300 String (toString/-2075883882 var2320)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {minor/111710723=([org.ietf.jgss.GSSException], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMajorString/1398792531=([org.ietf.jgss.GSSException], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMinorString/-432100649=([org.ietf.jgss.GSSException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3379=org.ietf.jgss.GSSException, var126=r0, var2626=$i0, var3137=$r1, var844=$r2, var2998=$r3, var2755=$r5, var3868=$r4, var3891=$r6, var2320=$r7, var1300=$r8}
; {org.ietf.jgss.GSSException=var3379, r0=var126, $i0=var2626, $r1=var3137, $r2=var844, $r3=var2998, $r5=var2755, $r4=var3868, $r6=var3891, $r7=var2320, $r8=var1300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.ietf.jgss.GSSException;	$i0 = r0.<org.ietf.jgss.GSSException: int minor>;	if $i0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<org.ietf.jgss.GSSException: java.lang.String getMajorString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (Mechanism level: ");	$r4 = virtualinvoke r0.<org.ietf.jgss.GSSException: java.lang.String getMinorString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2