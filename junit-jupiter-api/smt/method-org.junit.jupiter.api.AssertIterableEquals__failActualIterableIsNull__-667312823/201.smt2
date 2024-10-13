(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var943 0)
(declare-sort var1970 0)
(declare-sort var1684 0)
(declare-sort var2789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1684_assertionFailure/-1766832277 () var1684)
(declare-fun message/-1182943533 (var1684 var1970) var1684)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2789_formatIndexes/152567131 (var943) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var1684 String) var1684)
(declare-fun buildAndThrow/-910448578 (var1684) void)
(declare-const null-var943 var943)
(declare-const null-var1970 var1970)
(declare-const var593 var943) ; Statement: r3 := @parameter0: java.util.Deque 
(assert (not (= var593 null-var943)))
(declare-const var944 var1970) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var944 null-var1970)))
(define-const var1825 var1684 var1684_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var1556 var1684 (message/-1182943533 var1825 var944)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var2879 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2879)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2879!1 String)
(assert (= var2879!1 ""))
(assert true)
(define-const var3988 String (append/672562846 var2879!1 "actual iterable was <null>")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("actual iterable was <null>") 
(declare-const var2879!2 String)
(assert (= var2879!2 (str.++ var2879!1 "actual iterable was <null>")))
(define-const var2400 String (var2789_formatIndexes/152567131 var593)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var1853 String (append/672562846 var3988 var2400)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3988!1 String)
(assert (= var3988!1 (str.++ var3988 var2400)))
(assert true)
(define-const var3505 String (toString/-2075883882 var1853)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var18 var1684 (reason/-554335116 var1556 var3505)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var18)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var18!1 var1684)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1684_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2789_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var943=java.util.Deque, var593=r3, var1970=java.lang.Object, var944=r0, var1684=org.junit.jupiter.api.AssertionFailureBuilder, var1825=$r1, var1556=$r8, var2879=$r2, var3988=$r5, var2789=org.junit.jupiter.api.AssertionUtils, var2400=$r4, var1853=$r6, var3505=$r7, var18=$r9}
; {java.util.Deque=var943, r3=var593, java.lang.Object=var1970, r0=var944, org.junit.jupiter.api.AssertionFailureBuilder=var1684, $r1=var1825, $r8=var1556, $r2=var2879, $r5=var3988, org.junit.jupiter.api.AssertionUtils=var2789, $r4=var2400, $r6=var1853, $r7=var3505, $r9=var18}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("actual iterable was <null>");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1