(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3696 0)
(declare-sort var95 0)
(declare-sort var1021 0)
(declare-sort var1875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1021_assertionFailure/-1766832277 () var1021)
(declare-fun message/-1182943533 (var1021 var95) var1021)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1875_formatIndexes/152567131 (var3696) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var1021 String) var1021)
(declare-fun buildAndThrow/-910448578 (var1021) void)
(declare-const null-var3696 var3696)
(declare-const null-var95 var95)
(declare-const var2197 var3696) ; Statement: r3 := @parameter0: java.util.Deque 
(assert (not (= var2197 null-var3696)))
(declare-const var161 var95) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var161 null-var95)))
(define-const var3441 var1021 var1021_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var1294 var1021 (message/-1182943533 var3441 var161)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var2911 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2911)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2911!1 String)
(assert (= var2911!1 ""))
(assert true)
(define-const var3315 String (append/672562846 var2911!1 "expected array was <null>")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected array was <null>") 
(declare-const var2911!2 String)
(assert (= var2911!2 (str.++ var2911!1 "expected array was <null>")))
(define-const var1919 String (var1875_formatIndexes/152567131 var2197)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var1436 String (append/672562846 var3315 var1919)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3315!1 String)
(assert (= var3315!1 (str.++ var3315 var1919)))
(assert true)
(define-const var419 String (toString/-2075883882 var1436)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1959 var1021 (reason/-554335116 var1294 var419)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var1959)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var1959!1 var1021)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1021_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1875_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var3696=java.util.Deque, var2197=r3, var95=java.lang.Object, var161=r0, var1021=org.junit.jupiter.api.AssertionFailureBuilder, var3441=$r1, var1294=$r8, var2911=$r2, var3315=$r5, var1875=org.junit.jupiter.api.AssertionUtils, var1919=$r4, var1436=$r6, var419=$r7, var1959=$r9}
; {java.util.Deque=var3696, r3=var2197, java.lang.Object=var95, r0=var161, org.junit.jupiter.api.AssertionFailureBuilder=var1021, $r1=var3441, $r8=var1294, $r2=var2911, $r5=var3315, org.junit.jupiter.api.AssertionUtils=var1875, $r4=var1919, $r6=var1436, $r7=var419, $r9=var1959}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected array was <null>");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1