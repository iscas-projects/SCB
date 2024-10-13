(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3529 0)
(declare-sort var2200 0)
(declare-sort var3959 0)
(declare-sort var2835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3959_assertionFailure/-1766832277 () var3959)
(declare-fun message/-1182943533 (var3959 var3529) var3959)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2835_formatIndexes/152567131 (var2200) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var3959 String) var3959)
(declare-fun expected/127684014 (var3959 var3529) var3959)
(declare-fun actual/-918735720 (var3959 var3529) var3959)
(declare-fun buildAndThrow/-910448578 (var3959) void)
(declare-const null-var3529 var3529)
(declare-const null-var2200 var2200)
(declare-const var352 var3529) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var352 null-var3529)))
(declare-const var1791 var3529) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var1791 null-var3529)))
(declare-const var2760 var2200) ; Statement: r3 := @parameter2: java.util.Deque 
(assert (not (= var2760 null-var2200)))
(declare-const var925 var3529) ; Statement: r0 := @parameter3: java.lang.Object 
(assert (not (= var925 null-var3529)))
(define-const var2033 var3959 var3959_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var2313 var3959 (message/-1182943533 var2033 var925)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var873 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var873)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var873!1 String)
(assert (= var873!1 ""))
(assert true)
(define-const var1511 String (append/672562846 var873!1 "array contents differ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array contents differ") 
(declare-const var873!2 String)
(assert (= var873!2 (str.++ var873!1 "array contents differ")))
(define-const var636 String (var2835_formatIndexes/152567131 var2760)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3) 
(assert true)
(define-const var356 String (append/672562846 var1511 var636)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1511!1 String)
(assert (= var1511!1 (str.++ var1511 var636)))
(assert true)
(define-const var1049 String (toString/-2075883882 var356)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2640 var3959 (reason/-554335116 var2313 var1049)) ; Statement: $r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
(define-const var369 var3959 (expected/127684014 var2640 var352)) ; Statement: $r12 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>(r9) 
(assert true)
(define-const var2213 var3959 (actual/-918735720 var369 var1791)) ; Statement: $r13 = virtualinvoke $r12.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>(r11) 
(assert true)
;(assert (buildAndThrow/-910448578 var2213)) ; Statement: virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var2213!1 var3959)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3959_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2835_formatIndexes/152567131=([java.util.Deque], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), expected/127684014=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), actual/-918735720=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var3529=java.lang.Object, var352=r9, var1791=r11, var2200=java.util.Deque, var2760=r3, var925=r0, var3959=org.junit.jupiter.api.AssertionFailureBuilder, var2033=$r1, var2313=$r8, var873=$r2, var1511=$r5, var2835=org.junit.jupiter.api.AssertionUtils, var636=$r4, var356=$r6, var1049=$r7, var2640=$r10, var369=$r12, var2213=$r13}
; {java.lang.Object=var3529, r9=var352, r11=var1791, java.util.Deque=var2200, r3=var2760, r0=var925, org.junit.jupiter.api.AssertionFailureBuilder=var3959, $r1=var2033, $r8=var2313, $r2=var873, $r5=var1511, org.junit.jupiter.api.AssertionUtils=var2835, $r4=var636, $r6=var356, $r7=var1049, $r10=var2640, $r12=var369, $r13=var2213}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.Object;	r11 := @parameter1: java.lang.Object;	r3 := @parameter2: java.util.Deque;	r0 := @parameter3: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array contents differ");	$r4 = staticinvoke <org.junit.jupiter.api.AssertionUtils: java.lang.String formatIndexes(java.util.Deque)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	$r12 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>(r9);	$r13 = virtualinvoke $r12.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>(r11);	virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1