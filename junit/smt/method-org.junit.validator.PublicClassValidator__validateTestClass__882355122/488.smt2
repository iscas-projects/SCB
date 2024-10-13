(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var598 0)
(declare-sort var2155 0)
(declare-sort var943 0)
(declare-sort var400 0)
(declare-sort var2051 0)
(declare-sort var497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPublic/2065086460 (var2155) Bool)
(declare-fun var943-init () var943)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1384225025 (var2155) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var943 String) void)
(declare-fun var2051_singletonList/684126186 (var497) var400)
(declare-fun cast-from-var943-to-var497 (var943) var497)
(declare-const null-var598 var598)
(declare-const null-var2155 var2155)
(declare-const var3560 var598) ; Statement: r10 := @this: org.junit.validator.PublicClassValidator 
(assert (not (= var3560 null-var598)))
(declare-const var1998 var2155) ; Statement: r0 := @parameter0: org.junit.runners.model.TestClass 
(assert (not (= var1998 null-var2155)))
(assert true)
(define-const var3864 Bool (isPublic/2065086460 var1998)) ; Statement: $z0 = virtualinvoke r0.<org.junit.runners.model.TestClass: boolean isPublic()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.Exception 
(assert (= (ite var3864 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1576 var943 var943-init) ; Statement: $r1 = new java.lang.Exception 
(define-const var3383 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3383)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3383!1 String)
(assert (= var3383!1 ""))
(assert true)
(define-const var2179 String (append/672562846 var3383!1 "The class ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The class ") 
(declare-const var3383!2 String)
(assert (= var3383!2 (str.++ var3383!1 "The class ")))
(assert true)
(define-const var981 String (getName/1384225025 var1998)) ; Statement: $r3 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.lang.String getName()>() 
(assert true)
(define-const var3143 String (append/672562846 var2179 var981)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2179!1 String)
(assert (= var2179!1 (str.++ var2179 var981)))
(assert true)
(define-const var866 String (append/672562846 var3143 " is not public.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public.") 
(declare-const var3143!1 String)
(assert (= var3143!1 (str.++ var3143 " is not public.")))
(assert true)
(define-const var2341 String (toString/-2075883882 var866)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var1576 var2341)) ; Statement: specialinvoke $r1.<java.lang.Exception: void <init>(java.lang.String)>($r7) 

(declare-const var1576!1 var943)
(declare-const var2341!1 String)
(define-const var1584 var400 (var2051_singletonList/684126186 (cast-from-var943-to-var497 var1576!1))) ; Statement: $r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r1) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isPublic/2065086460=([org.junit.runners.model.TestClass], boolean), var943-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1384225025=([org.junit.runners.model.TestClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), var2051_singletonList/684126186=([java.lang.Object], java.util.List), cast-from-var943-to-var497=([java.lang.Exception], java.lang.Object)}
; {var598=org.junit.validator.PublicClassValidator, var3560=r10, var2155=org.junit.runners.model.TestClass, var1998=r0, var3864=$z0, var943=java.lang.Exception, var1576=$r1, var3383=$r2, var2179=$r4, var981=$r3, var3143=$r5, var866=$r6, var2341=$r7, var400=java.util.List, var2051=java.util.Collections, var497=java.lang.Object, var1584=$r8}
; {org.junit.validator.PublicClassValidator=var598, r10=var3560, org.junit.runners.model.TestClass=var2155, r0=var1998, $z0=var3864, java.lang.Exception=var943, $r1=var1576, $r2=var3383, $r4=var2179, $r3=var981, $r5=var3143, $r6=var866, $r7=var2341, java.util.List=var400, java.util.Collections=var2051, java.lang.Object=var497, $r8=var1584}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.junit.validator.PublicClassValidator;	r0 := @parameter0: org.junit.runners.model.TestClass;	$z0 = virtualinvoke r0.<org.junit.runners.model.TestClass: boolean isPublic()>();	if $z0 == 0 goto $r1 = new java.lang.Exception;	$r1 = new java.lang.Exception;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The class ");	$r3 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.Exception: void <init>(java.lang.String)>($r7);	$r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r1);	return $r8
;block_num 2