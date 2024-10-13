(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var1681 0)
(declare-sort var3526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun message/33220049 (var425) String)
(declare-fun var1681_toString/-749122252 (var3526 String) String)
(declare-fun cast-from-String-to-var3526 (String) var3526)
(declare-fun formatSplitTime/-357006771 (var425) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var425 var425)
(declare-const var2923 var425) ; Statement: r0 := @this: org.apache.commons.lang3.time.StopWatch 
(assert (not (= var2923 null-var425)))
(define-const var3033 String (message/33220049 var2923)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message> 
(define-const var1525 String (var1681_toString/-749122252 (cast-from-String-to-var3526 var3033) "")) ; Statement: r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "") 
(assert true)
(define-const var75 String (formatSplitTime/-357006771 var2923)) ; Statement: r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatSplitTime()>() 
(assert true)
(define-const var3972 Bool (isEmpty/-1285796103 var1525)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var3972 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3726 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3726)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3726!1 String)
(assert (= var3726!1 ""))
(assert true)
(define-const var3794 String (append/672562846 var3726!1 var1525)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3726!2 String)
(assert (= var3726!2 (str.++ var3726!1 var1525)))
(assert true)
(define-const var1636 String (append/672562846 var3794 " ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3794!1 String)
(assert (= var3794!1 (str.++ var3794 " ")))
(assert true)
(define-const var2719 String (append/672562846 var1636 var75)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1636!1 String)
(assert (= var1636!1 (str.++ var1636 var75)))
(assert true)
(define-const var2127 String (toString/-2075883882 var2719)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {message/33220049=([org.apache.commons.lang3.time.StopWatch], java.lang.String), var1681_toString/-749122252=([java.lang.Object, java.lang.String], java.lang.String), cast-from-String-to-var3526=([java.lang.String], java.lang.Object), formatSplitTime/-357006771=([org.apache.commons.lang3.time.StopWatch], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var425=org.apache.commons.lang3.time.StopWatch, var2923=r0, var3033=$r1, var1681=java.util.Objects, var3526=java.lang.Object, var1525=r2, var75=r3, var3972=$z0, var3726=$r4, var3794=$r5, var1636=$r6, var2719=$r7, var2127=$r8}
; {org.apache.commons.lang3.time.StopWatch=var425, r0=var2923, $r1=var3033, java.util.Objects=var1681, java.lang.Object=var3526, r2=var1525, r3=var75, $z0=var3972, $r4=var3726, $r5=var3794, $r6=var1636, $r7=var2719, $r8=var2127}
;seq <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.StopWatch;	$r1 = r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String message>;	r2 = staticinvoke <java.util.Objects: java.lang.String toString(java.lang.Object,java.lang.String)>($r1, "");	r3 = virtualinvoke r0.<org.apache.commons.lang3.time.StopWatch: java.lang.String formatSplitTime()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3