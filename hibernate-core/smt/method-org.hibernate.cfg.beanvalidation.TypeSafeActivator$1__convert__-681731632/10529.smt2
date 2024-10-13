(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2779 0)
(declare-sort var2985 0)
(declare-sort var1288 0)
(declare-sort var1001 0)
(declare-sort var2125 0)
(declare-sort var206 0)
(declare-sort var1346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1288!class ClassObject)
(declare-fun var2125-init () var2125)
(declare-fun arr-var2985-init () (Array Int var2985))
(declare-fun cast-from-String-to-var2985 (String) var2985)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClass/1258963082 (var2985) ClassObject)
(declare-fun String_format/-647569892 (var206 String (Array Int var2985)) String)
(declare-fun <init>/-1507713506 (var2125 String) void)
(declare-fun cast-from-var2125-to-var1346 (var2125) var1346)
(declare-const null-var2779 var2779)
(declare-const null-var2985 var2985)
(declare-const null-var1001 var1001)
(declare-const var206-ENGLISH var206)
(declare-const null-__Array__Int__var2985__ (Array Int var2985))
(declare-const var971 var2779) ; Statement: r13 := @this: org.hibernate.cfg.beanvalidation.TypeSafeActivator$1 
(assert (not (= var971 null-var2779)))
(declare-const var1942 var2985) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1942 null-var2985)))
(define-const var3919 ClassObject var1288!class) ; Statement: $r1 = class "Ljavax/validation/ValidatorFactory;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var980 var1001) ; Statement: $r4 := @caughtexception 
(assert (not (= var980 null-var1001)))
(define-const var1953 var2125 var2125-init) ; Statement: $r14 = new org.hibernate.cfg.beanvalidation.IntegrationException 
(define-const var1979 var206 var206-ENGLISH) ; Statement: $r8 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var736 (Array Int var2985) arr-var2985-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var736!1 (Array Int var2985))
(assert (not (= var736!1 null-__Array__Int__var2985__)))
(assert (= (select var736!1 0) (cast-from-String-to-var2985 "javax.persistence.validation.factory"))) ; Statement: $r6[0] = "javax.persistence.validation.factory" 
(define-const var1737 ClassObject var1288!class) ; Statement: $r7 = class "Ljavax/validation/ValidatorFactory;" 
(assert true)
(define-const var143 String (getName/-1958580599 var1737)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(declare-const var736!2 (Array Int var2985))
(assert (not (= var736!2 null-__Array__Int__var2985__)))
(assert (= (select var736!2 1) (cast-from-String-to-var2985 var143))) ; Statement: $r6[1] = $r9 
(assert true)
(define-const var208 ClassObject (getClass/1258963082 var1942)) ; Statement: $r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3827 String (getName/-1958580599 var208)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(declare-const var736!3 (Array Int var2985))
(assert (not (= var736!3 null-__Array__Int__var2985__)))
(assert (= (select var736!3 2) (cast-from-String-to-var2985 var3827))) ; Statement: $r6[2] = $r11 
(define-const var1193 String (String_format/-647569892 var1979 "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s" var736!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s", $r6) 
(assert true)
;(assert (<init>/-1507713506 var1953 var1193)) ; Statement: specialinvoke $r14.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r12) 

(declare-const var1953!1 var2125)
(declare-const var1193!1 String)
(define-const var3782 var1346 (cast-from-var2125-to-var1346 var1953!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2125-init=([], org.hibernate.cfg.beanvalidation.IntegrationException), arr-var2985-init=([], java.lang.Object[]), cast-from-String-to-var2985=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1507713506=([org.hibernate.cfg.beanvalidation.IntegrationException, java.lang.String], void), cast-from-var2125-to-var1346=([org.hibernate.cfg.beanvalidation.IntegrationException], java.lang.Throwable)}
; {var2779=org.hibernate.cfg.beanvalidation.TypeSafeActivator$1, var971=r13, var2985=java.lang.Object, var1942=r0, var1288=javax.validation.ValidatorFactory, var3919=$r1, var1001=java.lang.ClassCastException, var980=$r4, var2125=org.hibernate.cfg.beanvalidation.IntegrationException, var1953=$r14, var206=java.util.Locale, var1979=$r8, var736=$r6, var1737=$r7, var143=$r9, var208=$r10, var3827=$r11, var1193=$r12, var1346=java.lang.Throwable, var3782=$r15}
; {org.hibernate.cfg.beanvalidation.TypeSafeActivator$1=var2779, r13=var971, java.lang.Object=var2985, r0=var1942, javax.validation.ValidatorFactory=var1288, $r1=var3919, java.lang.ClassCastException=var1001, $r4=var980, org.hibernate.cfg.beanvalidation.IntegrationException=var2125, $r14=var1953, java.util.Locale=var206, $r8=var1979, $r6=var736, $r7=var1737, $r9=var143, $r10=var208, $r11=var3827, $r12=var1193, java.lang.Throwable=var1346, $r15=var3782}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r13 := @this: org.hibernate.cfg.beanvalidation.TypeSafeActivator$1;	r0 := @parameter0: java.lang.Object;	$r1 = class "Ljavax/validation/ValidatorFactory;";	$r4 := @caughtexception;	$r14 = new org.hibernate.cfg.beanvalidation.IntegrationException;	$r8 = <java.util.Locale: java.util.Locale ENGLISH>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = "javax.persistence.validation.factory";	$r7 = class "Ljavax/validation/ValidatorFactory;";	$r9 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r6[1] = $r9;	$r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r6[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s", $r6);	specialinvoke $r14.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2