(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var59 0)
(declare-sort var3364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3364_assertionFailure/-1766832277 () var3364)
(declare-fun message/-1182943533 (var3364 var59) var3364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var59) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun reason/-554335116 (var3364 String) var3364)
(declare-fun buildAndThrow/-910448578 (var3364) void)
(declare-const null-var59 var59)
(declare-const var765 var59) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var765 null-var59)))
(declare-const var1371 var59) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1371 null-var59)))
(define-const var2795 var3364 var3364_assertionFailure/-1766832277) ; Statement: $r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(assert true)
(define-const var1233 var3364 (message/-1182943533 var2795 var1371)) ; Statement: $r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0) 
(define-const var3937 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var2652 String (append/672562846 var3937!1 "expected: not equal but was: <")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: not equal but was: <") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "expected: not equal but was: <")))
(assert true)
(define-const var3779 String (append/-1031950772 var2652 var765)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2652!1 String)
(assert (str.prefixof var2652 var2652!1))
(assert true)
(define-const var3763 String (append/672562846 var3779 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 ">")))
(assert true)
(define-const var3784 String (toString/-2075883882 var3763)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var101 var3364 (reason/-554335116 var1233 var3784)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7) 
(assert true)
;(assert (buildAndThrow/-910448578 var101)) ; Statement: virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var101!1 var3364)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3364_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var59=java.lang.Object, var765=r3, var1371=r0, var3364=org.junit.jupiter.api.AssertionFailureBuilder, var2795=$r1, var1233=$r8, var3937=$r2, var2652=$r4, var3779=$r5, var3763=$r6, var3784=$r7, var101=$r9}
; {java.lang.Object=var59, r3=var765, r0=var1371, org.junit.jupiter.api.AssertionFailureBuilder=var3364, $r1=var2795, $r8=var1233, $r2=var3937, $r4=var2652, $r5=var3779, $r6=var3763, $r7=var3784, $r9=var101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r8 = virtualinvoke $r1.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: not equal but was: <");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r7);	virtualinvoke $r9.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1