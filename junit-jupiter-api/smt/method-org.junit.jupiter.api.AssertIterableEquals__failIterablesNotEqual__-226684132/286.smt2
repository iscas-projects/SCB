(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3668 0)
(declare-sort var2567 0)
(declare-sort var173 0)
(declare-sort var529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var173_assertionFailure/-1766832277 () var173)
(declare-fun message/-1182943533 (var173 var3668) var173)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var529_formatIndexes/152567131 (var2567) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var173 String) var173)
(declare-fun expected/127684014 (var173 var3668) var173)
(declare-fun actual/-918735720 (var173 var3668) var173)
(declare-fun buildAndThrow/-910448578 (var173) void)
(declare-const null-var3668 var3668)
(declare-const null-var2567 var2567)
(declare-const var2659 var3668) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var2659 null-var3668)))
(declare-const var3118 var3668) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var3118 null-var3668)))
(declare-const var3304 var2567) ; Statement: r3 := @parameter2: java.util.Deque 
(assert (not (= var3304 null-var2567)))
(declare-const var766 var3668) ; Statement: r0 := @parameter3: java.lang.Object 
(assert (not (= var766 null-var3668)))
(define-const var969 var173 var173_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var2146 var173 (message/-1182943533 var969 var766)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var1058 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1058)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1058!1 String)
(assert (= var1058!1 ""))
(assert true)
(define-const var2993 String (append/672562846 var1058!1 "iterable contents differ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iterable contents differ") 
(declare-const var1058!2 String)
(assert (= var1058!2 (str.++ var1058!1 "iterable contents differ")))
(define-const var2335 String (var529_formatIndexes/152567131 var3304)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var3828 String (append/672562846 var2993 var2335)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2993!1 String)
(assert (= var2993!1 (str.++ var2993 var2335)))
(assert true)
(define-const var3593 String (toString/-2075883882 var3828)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1870 var173 (reason/-554335116 var2146 var3593)) ; Statement: $r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
(define-const var284 var173 (expected/127684014 var1870 var2659)) ; Statement: $r12 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>(r9) 
(assert true)
(define-const var2721 var173 (actual/-918735720 var284 var3118)) ; Statement: $r13 = virtualinvoke $r12.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>(r11) 
(assert true)
;(assert (buildAndThrow/-910448578 var2721)) ; Statement: virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var2721!1 var173)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var173_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var529_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), expected/127684014=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), actual/-918735720=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var3668=java.lang.Object, var2659=r9, var3118=r11, var2567=java.util.Deque, var3304=r3, var766=r0, var173=org.junit.jupiter.api.AssertionFailureBuilder, var969=$r1, var2146=$r8, var1058=$r2, var2993=$r5, var529=org.junit.jupiter.api.AssertionUtils, var2335=$r4, var3828=$r6, var3593=$r7, var1870=$r10, var284=$r12, var2721=$r13}
; {java.lang.Object=var3668, r9=var2659, r11=var3118, java.util.Deque=var2567, r3=var3304, r0=var766, org.junit.jupiter.api.AssertionFailureBuilder=var173, $r1=var969, $r8=var2146, $r2=var1058, $r5=var2993, org.junit.jupiter.api.AssertionUtils=var529, $r4=var2335, $r6=var3828, $r7=var3593, $r10=var1870, $r12=var284, $r13=var2721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.Object;	r11 := @parameter1: java.lang.Object;	r3 := @parameter2: java.util.Deque;	r0 := @parameter3: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iterable contents differ");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	$r12 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>(r9);	$r13 = virtualinvoke $r12.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>(r11);	virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1