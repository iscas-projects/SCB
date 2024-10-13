(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var21 0)
(declare-sort var487 0)
(declare-sort var437 0)
(declare-sort var3251 0)
(declare-sort var1355 0)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var487!class ClassObject)
(declare-fun var3251-init () var3251)
(declare-fun arr-var21-init () (Array Int var21))
(declare-fun cast-from-String-to-var21 (String) var21)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClass/1258963082 (var21) ClassObject)
(declare-fun String_format/-647569892 (var1355 String (Array Int var21)) String)
(declare-fun <init>/-1507713506 (var3251 String) void)
(declare-fun cast-from-var3251-to-var2436 (var3251) var2436)
(declare-const null-var2381 var2381)
(declare-const null-var21 var21)
(declare-const null-var437 var437)
(declare-const var1355-ENGLISH var1355)
(declare-const null-__Array__Int__var21__ (Array Int var21))
(declare-const var1995 var2381) ; Statement: r13 := @this: org.hibernate.cfg.beanvalidation.TypeSafeActivator$2 
(assert (not (= var1995 null-var2381)))
(declare-const var3923 var21) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3923 null-var21)))
(define-const var203 ClassObject var487!class) ; Statement: $r1 = class "Ljavax/validation/ValidatorFactory;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2243 var437) ; Statement: $r4 := @caughtexception 
(assert (not (= var2243 null-var437)))
(define-const var201 var3251 var3251-init) ; Statement: $r14 = new org.hibernate.cfg.beanvalidation.IntegrationException 
(define-const var1253 var1355 var1355-ENGLISH) ; Statement: $r8 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1619 (Array Int var21) arr-var21-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var1619!1 (Array Int var21))
(assert (not (= var1619!1 null-__Array__Int__var21__)))
(assert (= (select var1619!1 0) (cast-from-String-to-var21 "jakarta.persistence.validation.factory"))) ; Statement: $r6[0] = "jakarta.persistence.validation.factory" 
(define-const var1581 ClassObject var487!class) ; Statement: $r7 = class "Ljavax/validation/ValidatorFactory;" 
(assert true)
(define-const var642 String (getName/-1958580599 var1581)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1619!2 (Array Int var21))
(assert (not (= var1619!2 null-__Array__Int__var21__)))
(assert (= (select var1619!2 1) (cast-from-String-to-var21 var642))) ; Statement: $r6[1] = $r9 
(assert true)
(define-const var1928 ClassObject (getClass/1258963082 var3923)) ; Statement: $r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3172 String (getName/-1958580599 var1928)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1619!3 (Array Int var21))
(assert (not (= var1619!3 null-__Array__Int__var21__)))
(assert (= (select var1619!3 2) (cast-from-String-to-var21 var3172))) ; Statement: $r6[2] = $r11 
(define-const var1107 String (String_format/-647569892 var1253 "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s" var1619!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s", $r6) 
(assert true)
;(assert (<init>/-1507713506 var201 var1107)) ; Statement: specialinvoke $r14.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r12) 

(declare-const var201!1 var3251)
(declare-const var1107!1 String)
(define-const var1800 var2436 (cast-from-var3251-to-var2436 var201!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3251-init=([], org.hibernate.cfg.beanvalidation.IntegrationException), arr-var21-init=([], java.lang.Object[]), cast-from-String-to-var21=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1507713506=([org.hibernate.cfg.beanvalidation.IntegrationException, java.lang.String], void), cast-from-var3251-to-var2436=([org.hibernate.cfg.beanvalidation.IntegrationException], java.lang.Throwable)}
; {var2381=org.hibernate.cfg.beanvalidation.TypeSafeActivator$2, var1995=r13, var21=java.lang.Object, var3923=r0, var487=javax.validation.ValidatorFactory, var203=$r1, var437=java.lang.ClassCastException, var2243=$r4, var3251=org.hibernate.cfg.beanvalidation.IntegrationException, var201=$r14, var1355=java.util.Locale, var1253=$r8, var1619=$r6, var1581=$r7, var642=$r9, var1928=$r10, var3172=$r11, var1107=$r12, var2436=java.lang.Throwable, var1800=$r15}
; {org.hibernate.cfg.beanvalidation.TypeSafeActivator$2=var2381, r13=var1995, java.lang.Object=var21, r0=var3923, javax.validation.ValidatorFactory=var487, $r1=var203, java.lang.ClassCastException=var437, $r4=var2243, org.hibernate.cfg.beanvalidation.IntegrationException=var3251, $r14=var201, java.util.Locale=var1355, $r8=var1253, $r6=var1619, $r7=var1581, $r9=var642, $r10=var1928, $r11=var3172, $r12=var1107, java.lang.Throwable=var2436, $r15=var1800}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r13 := @this: org.hibernate.cfg.beanvalidation.TypeSafeActivator$2;	r0 := @parameter0: java.lang.Object;	$r1 = class "Ljavax/validation/ValidatorFactory;";	$r4 := @caughtexception;	$r14 = new org.hibernate.cfg.beanvalidation.IntegrationException;	$r8 = <java.util.Locale: java.util.Locale ENGLISH>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = "jakarta.persistence.validation.factory";	$r7 = class "Ljavax/validation/ValidatorFactory;";	$r9 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r6[1] = $r9;	$r10 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r6[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "ValidatorFactory reference (provided via `%s` setting) was not castable to %s : %s", $r6);	specialinvoke $r14.<org.hibernate.cfg.beanvalidation.IntegrationException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2