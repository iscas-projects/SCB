(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort var2300 0)
(declare-sort var3379 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3379_assertionFailure/-1766832277 () var3379)
(declare-fun message/-1182943533 (var3379 var2300) var3379)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3855_formatIndexes/152567131 (var1746) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var3379 String) var3379)
(declare-fun buildAndThrow/-910448578 (var3379) void)
(declare-const null-var1746 var1746)
(declare-const null-var2300 var2300)
(declare-const var2808 var1746) ; Statement: r3 := @parameter0: java.util.Deque 
(assert (not (= var2808 null-var1746)))
(declare-const var3949 var2300) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3949 null-var2300)))
(define-const var958 var3379 var3379_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var3451 var3379 (message/-1182943533 var958 var3949)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var3028 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3028)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3028!1 String)
(assert (= var3028!1 ""))
(assert true)
(define-const var3867 String (append/672562846 var3028!1 "actual array was <null>")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("actual array was <null>") 
(declare-const var3028!2 String)
(assert (= var3028!2 (str.++ var3028!1 "actual array was <null>")))
(define-const var1708 String (var3855_formatIndexes/152567131 var2808)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var3629 String (append/672562846 var3867 var1708)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3867!1 String)
(assert (= var3867!1 (str.++ var3867 var1708)))
(assert true)
(define-const var3147 String (toString/-2075883882 var3629)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var891 var3379 (reason/-554335116 var3451 var3147)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var891)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var891!1 var3379)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3379_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3855_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var1746=java.util.Deque, var2808=r3, var2300=java.lang.Object, var3949=r0, var3379=org.junit.jupiter.api.AssertionFailureBuilder, var958=$r1, var3451=$r8, var3028=$r2, var3867=$r5, var3855=org.junit.jupiter.api.AssertionUtils, var1708=$r4, var3629=$r6, var3147=$r7, var891=$r9}
; {java.util.Deque=var1746, r3=var2808, java.lang.Object=var2300, r0=var3949, org.junit.jupiter.api.AssertionFailureBuilder=var3379, $r1=var958, $r8=var3451, $r2=var3028, $r5=var3867, org.junit.jupiter.api.AssertionUtils=var3855, $r4=var1708, $r6=var3629, $r7=var3147, $r9=var891}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("actual array was <null>");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1