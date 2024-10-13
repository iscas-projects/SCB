(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort var3377 0)
(declare-sort var2166 0)
(declare-sort var294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fFailedTest/-1457424504 (var2908) var3377)
(declare-fun append/-1031950772 (String var2166) String)
(declare-fun cast-from-var3377-to-var2166 (var3377) var2166)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fThrownException/-1457424504 (var2908) var294)
(declare-fun getMessage/849299655 (var294) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2908 var2908)
(declare-const var566 var2908) ; Statement: r1 := @this: junit.framework.TestFailure 
(assert (not (= var566 null-var2908)))
(define-const var3833 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3833)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3833!1 String)
(assert (= var3833!1 ""))
(define-const var2701 var3377 (fFailedTest/-1457424504 var566)) ; Statement: $r2 = r1.<junit.framework.TestFailure: junit.framework.Test fFailedTest> 
(assert true)
(define-const var3515 String (append/-1031950772 var3833!1 (cast-from-var3377-to-var2166 var2701))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3833!2 String)
(assert (str.prefixof var3833!1 var3833!2))
(assert true)
(define-const var563 String (append/672562846 var3515 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3515!1 String)
(assert (= var3515!1 (str.++ var3515 ": ")))
(define-const var304 var294 (fThrownException/-1457424504 var566)) ; Statement: $r4 = r1.<junit.framework.TestFailure: java.lang.Throwable fThrownException> 
(assert true)
(define-const var3236 String (getMessage/849299655 var304)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var3140 String (append/672562846 var563 var3236)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var563!1 String)
(assert (= var563!1 (str.++ var563 var3236)))
(assert true)
(define-const var3130 String (toString/-2075883882 var3140)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fFailedTest/-1457424504=([junit.framework.TestFailure], junit.framework.Test), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3377-to-var2166=([junit.framework.Test], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fThrownException/-1457424504=([junit.framework.TestFailure], java.lang.Throwable), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2908=junit.framework.TestFailure, var566=r1, var3833=$r0, var3377=junit.framework.Test, var2701=$r2, var2166=java.lang.Object, var3515=$r3, var563=$r6, var294=java.lang.Throwable, var304=$r4, var3236=$r5, var3140=$r7, var3130=$r8}
; {junit.framework.TestFailure=var2908, r1=var566, $r0=var3833, junit.framework.Test=var3377, $r2=var2701, java.lang.Object=var2166, $r3=var3515, $r6=var563, java.lang.Throwable=var294, $r4=var304, $r5=var3236, $r7=var3140, $r8=var3130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.framework.TestFailure;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<junit.framework.TestFailure: junit.framework.Test fFailedTest>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<junit.framework.TestFailure: java.lang.Throwable fThrownException>;	$r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1