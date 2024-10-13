(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var2613 0)
(declare-sort var1201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1227988463 (var2613) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1201_parameterTypesAsString/1671299820 (var2613) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3274 var3274)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2613 var2613)
(declare-const var306 var3274) ; Statement: r7 := @this: org.junit.jupiter.api.DisplayNameGenerator$Standard 
(assert (not (= var306 null-var3274)))
(declare-const var6 ClassObject) ; Statement: r8 := @parameter0: java.lang.Class 
(assert (not (= var6 null-ClassObject)))
(declare-const var1297 var2613) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1297 null-var2613)))
(define-const var163 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var163)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var163!1 String)
(assert (= var163!1 ""))
(assert true)
(define-const var669 String (getName/1227988463 var1297)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3207 String (append/672562846 var163!1 var669)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var163!2 String)
(assert (= var163!2 (str.++ var163!1 var669)))
(define-const var1897 String (var1201_parameterTypesAsString/1671299820 var1297)) ; Statement: $r3 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator: java.lang.String parameterTypesAsString(java.lang.reflect.Method)>(r1) 
(assert true)
(define-const var3465 String (append/672562846 var3207 var1897)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3207!1 String)
(assert (= var3207!1 (str.++ var3207 var1897)))
(assert true)
(define-const var3619 String (toString/-2075883882 var3465)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1227988463=([java.lang.reflect.Method], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1201_parameterTypesAsString/1671299820=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3274=org.junit.jupiter.api.DisplayNameGenerator$Standard, var306=r7, var6=r8, var2613=java.lang.reflect.Method, var1297=r1, var163=$r0, var669=$r2, var3207=$r4, var1201=org.junit.jupiter.api.DisplayNameGenerator, var1897=$r3, var3465=$r5, var3619=$r6}
; {org.junit.jupiter.api.DisplayNameGenerator$Standard=var3274, r7=var306, r8=var6, java.lang.reflect.Method=var2613, r1=var1297, $r0=var163, $r2=var669, $r4=var3207, org.junit.jupiter.api.DisplayNameGenerator=var1201, $r3=var1897, $r5=var3465, $r6=var3619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.junit.jupiter.api.DisplayNameGenerator$Standard;	r8 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.reflect.Method;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator: java.lang.String parameterTypesAsString(java.lang.reflect.Method)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1