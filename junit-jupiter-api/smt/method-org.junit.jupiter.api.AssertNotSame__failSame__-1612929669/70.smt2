(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3774 0)
(declare-sort var2591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2591_assertionFailure/-1766832277 () var2591)
(declare-fun message/-1182943533 (var2591 var3774) var2591)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var2591 String) var2591)
(declare-fun buildAndThrow/-910448578 (var2591) void)
(declare-const null-var3774 var3774)
(declare-const var3801 var3774) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3801 null-var3774)))
(declare-const var2880 var3774) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2880 null-var3774)))
(define-const var3711 var2591 var2591_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var1554 var2591 (message/-1182943533 var3711 var2880)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var2864 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2864)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2864!1 String)
(assert (= var2864!1 ""))
(assert true)
(define-const var3808 String (append/672562846 var2864!1 "expected: not same but was: <")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: not same but was: <") 
(declare-const var2864!2 String)
(assert (= var2864!2 (str.++ var2864!1 "expected: not same but was: <")))
(assert true)
(define-const var1207 String (append/-1031950772 var3808 var3801)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var3808!1 String)
(assert (str.prefixof var3808 var3808!1))
(assert true)
(define-const var1098 String (append/672562846 var1207 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1207!1 String)
(assert (= var1207!1 (str.++ var1207 ">")))
(assert true)
(define-const var1273 String (toString/-2075883882 var1098)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2619 var2591 (reason/-554335116 var1554 var1273)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var2619)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var2619!1 var2591)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2591_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var3774=java.lang.Object, var3801=r3, var2880=r0, var2591=org.junit.jupiter.api.AssertionFailureBuilder, var3711=$r1, var1554=$r8, var2864=$r2, var3808=$r4, var1207=$r5, var1098=$r6, var1273=$r7, var2619=$r9}
; {java.lang.Object=var3774, r3=var3801, r0=var2880, org.junit.jupiter.api.AssertionFailureBuilder=var2591, $r1=var3711, $r8=var1554, $r2=var2864, $r4=var3808, $r5=var1207, $r6=var1098, $r7=var1273, $r9=var2619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: not same but was: <");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1