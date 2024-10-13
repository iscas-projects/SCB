(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var3119 0)
(declare-sort var468 0)
(declare-sort var2592 0)
(declare-sort var2609 0)
(declare-sort var2119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2592_assertionFailure/-1766832277 () var2592)
(declare-fun message/-1182943533 (var2592 var2609) var2592)
(declare-fun cast-from-var3119-to-var2609 (var3119) var2609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toMillis/974030211 (var2381) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var2592 String) var2592)
(declare-fun cause/-1799120808 (var2592 var468) var2592)
(declare-fun build/-642990014 (var2592) var2119)
(declare-const null-var2381 var2381)
(declare-const null-var3119 var3119)
(declare-const null-var468 var468)
(declare-const var2088 var2381) ; Statement: r3 := @parameter0: java.time.Duration 
(assert (not (= var2088 null-var2381)))
(declare-const var3575 var3119) ; Statement: r0 := @parameter1: java.util.function.Supplier 
(assert (not (= var3575 null-var3119)))
(declare-const var2161 var468) ; Statement: r9 := @parameter2: java.lang.Throwable 
(assert (not (= var2161 null-var468)))
(define-const var1835 var2592 var2592_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var1448 var2592 (message/-1182943533 var1835 (cast-from-var3119-to-var2609 var3575))) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var920 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var920)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var920!1 String)
(assert (= var920!1 ""))
(assert true)
(define-const var2459 String (append/672562846 var920!1 "execution timed out after ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execution timed out after ") 
(declare-const var920!2 String)
(assert (= var920!2 (str.++ var920!1 "execution timed out after ")))
(assert true)
(define-const var1127 Int (toMillis/974030211 var2088)) ; Statement: $l0 = virtualinvoke r3.<java.time.Duration: long toMillis()>() 
(assert true)
(define-const var3194 String (append/-901862667 var2459 var1127)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2459!1 String)
(assert (str.prefixof var2459 var2459!1))
(assert true)
(define-const var1305 String (append/672562846 var3194 " ms")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms") 
(declare-const var3194!1 String)
(assert (= var3194!1 (str.++ var3194 " ms")))
(assert true)
(define-const var1022 String (toString/-2075883882 var1305)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1875 var2592 (reason/-554335116 var1448 var1022)) ; Statement: $r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
(define-const var1170 var2592 (cause/-1799120808 var1875 var2161)) ; Statement: $r11 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder cause(java.lang.Throwable)>(r9) 
(assert true)
(define-const var2002 var2119 (build/-642990014 var1170)) ; Statement: $r12 = virtualinvoke $r11.<org.junit.jupiter.api.AssertionFailureBuilder: org.opentest4j.AssertionFailedError build()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2592_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), cast-from-var3119-to-var2609=([java.util.function.Supplier], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toMillis/974030211=([java.time.Duration], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), cause/-1799120808=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Throwable], org.junit.jupiter.api.AssertionFailureBuilder), build/-642990014=([org.junit.jupiter.api.AssertionFailureBuilder], org.opentest4j.AssertionFailedError)}
; {var2381=java.time.Duration, var2088=r3, var3119=java.util.function.Supplier, var3575=r0, var468=java.lang.Throwable, var2161=r9, var2592=org.junit.jupiter.api.AssertionFailureBuilder, var1835=$r1, var2609=java.lang.Object, var1448=$r8, var920=$r2, var2459=$r4, var1127=$l0, var3194=$r5, var1305=$r6, var1022=$r7, var1875=$r10, var1170=$r11, var2119=org.opentest4j.AssertionFailedError, var2002=$r12}
; {java.time.Duration=var2381, r3=var2088, java.util.function.Supplier=var3119, r0=var3575, java.lang.Throwable=var468, r9=var2161, org.junit.jupiter.api.AssertionFailureBuilder=var2592, $r1=var1835, java.lang.Object=var2609, $r8=var1448, $r2=var920, $r4=var2459, $l0=var1127, $r5=var3194, $r6=var1305, $r7=var1022, $r10=var1875, $r11=var1170, org.opentest4j.AssertionFailedError=var2119, $r12=var2002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.time.Duration;	r0 := @parameter1: java.util.function.Supplier;	r9 := @parameter2: java.lang.Throwable;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execution timed out after ");	$l0 = virtualinvoke r3.<java.time.Duration: long toMillis()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	$r11 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder cause(java.lang.Throwable)>(r9);	$r12 = virtualinvoke $r11.<org.junit.jupiter.api.AssertionFailureBuilder: org.opentest4j.AssertionFailedError build()>();	return $r12
;block_num 1