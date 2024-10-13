(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2004 0)
(declare-sort var1763 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun message/33220049 (var2004) String)
(declare-fun var1763_toString/-749122252 (var2075 String) String)
(declare-fun cast-from-String-to-var2075 (String) var2075)
(declare-fun formatTime/309879225 (var2004) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2004 var2004)
(declare-const var558 var2004) ; Statement: r0 := @this: org.apache.commons.lang3.time.StopWatch 
(assert (not (= var558 null-var2004)))
(define-const var3841 String (message/33220049 var558)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message> 
(define-const var1164 String (var1763_toString/-749122252 (cast-from-String-to-var2075 var3841) "")) ; Statement: r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "") 
(assert true)
(define-const var2662 String (formatTime/309879225 var558)) ; Statement: r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatTime()>() 
(assert true)
(define-const var2099 Bool (isEmpty/-1285796103 var1164)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var2099 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1907 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1907)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1907!1 String)
(assert (= var1907!1 ""))
(assert true)
(define-const var310 String (append/672562846 var1907!1 var1164)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1907!2 String)
(assert (= var1907!2 (str.++ var1907!1 var1164)))
(assert true)
(define-const var1328 String (append/672562846 var310 " ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var310!1 String)
(assert (= var310!1 (str.++ var310 " ")))
(assert true)
(define-const var2046 String (append/672562846 var1328 var2662)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1328!1 String)
(assert (= var1328!1 (str.++ var1328 var2662)))
(assert true)
(define-const var405 String (toString/-2075883882 var2046)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {message/33220049=([org.apache.commons.lang3.time.StopWatch], java.lang.String), var1763_toString/-749122252=([java.lang.Object, java.lang.String], java.lang.String), cast-from-String-to-var2075=([java.lang.String], java.lang.Object), formatTime/309879225=([org.apache.commons.lang3.time.StopWatch], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2004=org.apache.commons.lang3.time.StopWatch, var558=r0, var3841=$r1, var1763=java.util.Objects, var2075=java.lang.Object, var1164=r2, var2662=r3, var2099=$z0, var1907=$r4, var310=$r5, var1328=$r6, var2046=$r7, var405=$r8}
; {org.apache.commons.lang3.time.StopWatch=var2004, r0=var558, $r1=var3841, java.util.Objects=var1763, java.lang.Object=var2075, r2=var1164, r3=var2662, $z0=var2099, $r4=var1907, $r5=var310, $r6=var1328, $r7=var2046, $r8=var405}
;seq <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.StopWatch;	$r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message>;	r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "");	r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatTime()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3