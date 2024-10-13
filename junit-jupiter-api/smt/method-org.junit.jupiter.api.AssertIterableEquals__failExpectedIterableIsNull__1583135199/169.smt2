(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2295 0)
(declare-sort var2931 0)
(declare-sort var2870 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2870_assertionFailure/-1766832277 () var2870)
(declare-fun message/-1182943533 (var2870 var2931) var2870)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3419_formatIndexes/152567131 (var2295) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var2870 String) var2870)
(declare-fun buildAndThrow/-910448578 (var2870) void)
(declare-const null-var2295 var2295)
(declare-const null-var2931 var2931)
(declare-const var983 var2295) ; Statement: r3 := @parameter0: java.util.Deque 
(assert (not (= var983 null-var2295)))
(declare-const var1427 var2931) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1427 null-var2931)))
(define-const var960 var2870 var2870_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var3078 var2870 (message/-1182943533 var960 var1427)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var3925 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3925)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3925!1 String)
(assert (= var3925!1 ""))
(assert true)
(define-const var109 String (append/672562846 var3925!1 "expected iterable was <null>")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected iterable was <null>") 
(declare-const var3925!2 String)
(assert (= var3925!2 (str.++ var3925!1 "expected iterable was <null>")))
(define-const var3728 String (var3419_formatIndexes/152567131 var983)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var1034 String (append/672562846 var109 var3728)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var109!1 String)
(assert (= var109!1 (str.++ var109 var3728)))
(assert true)
(define-const var2118 String (toString/-2075883882 var1034)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var550 var2870 (reason/-554335116 var3078 var2118)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var550)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var550!1 var2870)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2870_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3419_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var2295=java.util.Deque, var983=r3, var2931=java.lang.Object, var1427=r0, var2870=org.junit.jupiter.api.AssertionFailureBuilder, var960=$r1, var3078=$r8, var3925=$r2, var109=$r5, var3419=org.junit.jupiter.api.AssertionUtils, var3728=$r4, var1034=$r6, var2118=$r7, var550=$r9}
; {java.util.Deque=var2295, r3=var983, java.lang.Object=var2931, r0=var1427, org.junit.jupiter.api.AssertionFailureBuilder=var2870, $r1=var960, $r8=var3078, $r2=var3925, $r5=var109, org.junit.jupiter.api.AssertionUtils=var3419, $r4=var3728, $r6=var1034, $r7=var2118, $r9=var550}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected iterable was <null>");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1