(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var601 0)
(declare-sort var1139 0)
(declare-sort var2610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun openInstant/1786785787 (var601) var1139)
(declare-fun append/-1031950772 (String var2610) String)
(declare-fun cast-from-var1139-to-var2610 (var1139) var2610)
(declare-fun closeInstant/1786785787 (var601) var1139)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var601 var601)
(declare-const var1945 var601) ; Statement: r1 := @this: org.apache.commons.io.input.TimestampedObserver 
(assert (not (= var1945 null-var601)))
(define-const var2974 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2974)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2974!1 String)
(assert (= var2974!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var2974!1 "TimestampedObserver [openInstant=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TimestampedObserver [openInstant=") 
(declare-const var2974!2 String)
(assert (= var2974!2 (str.++ var2974!1 "TimestampedObserver [openInstant=")))
(define-const var1152 var1139 (openInstant/1786785787 var1945)) ; Statement: $r2 = r1.<org.apache.commons.io.input.TimestampedObserver: java.time.Instant openInstant> 
(assert true)
(define-const var3629 String (append/-1031950772 var1931 (cast-from-var1139-to-var2610 var1152))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1931!1 String)
(assert (str.prefixof var1931 var1931!1))
(assert true)
(define-const var3321 String (append/672562846 var3629 ", closeInstant=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", closeInstant=") 
(declare-const var3629!1 String)
(assert (= var3629!1 (str.++ var3629 ", closeInstant=")))
(define-const var3173 var1139 (closeInstant/1786785787 var1945)) ; Statement: $r5 = r1.<org.apache.commons.io.input.TimestampedObserver: java.time.Instant closeInstant> 
(assert true)
(define-const var3967 String (append/-1031950772 var3321 (cast-from-var1139-to-var2610 var3173))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3321!1 String)
(assert (str.prefixof var3321 var3321!1))
(assert true)
(define-const var1004 String (append/672562846 var3967 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3967!1 String)
(assert (= var3967!1 (str.++ var3967 "]")))
(assert true)
(define-const var2753 String (toString/-2075883882 var1004)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), openInstant/1786785787=([org.apache.commons.io.input.TimestampedObserver], java.time.Instant), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1139-to-var2610=([java.time.Instant], java.lang.Object), closeInstant/1786785787=([org.apache.commons.io.input.TimestampedObserver], java.time.Instant), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var601=org.apache.commons.io.input.TimestampedObserver, var1945=r1, var2974=$r0, var1931=$r3, var1139=java.time.Instant, var1152=$r2, var2610=java.lang.Object, var3629=$r4, var3321=$r6, var3173=$r5, var3967=$r7, var1004=$r8, var2753=$r9}
; {org.apache.commons.io.input.TimestampedObserver=var601, r1=var1945, $r0=var2974, $r3=var1931, java.time.Instant=var1139, $r2=var1152, java.lang.Object=var2610, $r4=var3629, $r6=var3321, $r5=var3173, $r7=var3967, $r8=var1004, $r9=var2753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.input.TimestampedObserver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TimestampedObserver [openInstant=");	$r2 = r1.<org.apache.commons.io.input.TimestampedObserver: java.time.Instant openInstant>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", closeInstant=");	$r5 = r1.<org.apache.commons.io.input.TimestampedObserver: java.time.Instant closeInstant>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1