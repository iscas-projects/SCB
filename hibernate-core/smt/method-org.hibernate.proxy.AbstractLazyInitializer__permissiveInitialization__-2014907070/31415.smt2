(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var644 0)
(declare-sort var3155 0)
(declare-sort var3768 0)
(declare-sort var729 0)
(declare-sort var1214 0)
(declare-sort var402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/752502022 (var3043) var644)
(declare-fun sessionFactoryUuid/752502022 (var3043) String)
(declare-fun var3768-init () var3768)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/752502022 (var3043) String)
(declare-fun id/752502022 (var3043) var729)
(declare-fun append/-1031950772 (String var1214) String)
(declare-fun cast-from-var729-to-var1214 (var729) var1214)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1436286819 (var3768 String) void)
(declare-fun cast-from-var3768-to-var402 (var3768) var402)
(declare-const null-var3043 var3043)
(declare-const null-var644 var644)
(declare-const null-String String)
(declare-const var861 var3043) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var861 null-var3043)))
(define-const var1745 var644 (session/752502022 var861)) ; Statement: $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
(assert (not (not (= var1745 null-var644)))) ; Negate: Cond: $r1 != null  
(define-const var609 String (sessionFactoryUuid/752502022 var861)) ; Statement: $r19 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String sessionFactoryUuid> 
 ; Statement: if $r19 != null goto $r21 = <org.hibernate.internal.SessionFactoryRegistry: org.hibernate.internal.SessionFactoryRegistry INSTANCE> 
(assert (not (not (= var609 null-String)))) ; Negate: Cond: $r19 != null  
(define-const var3879 var3768 var3768-init) ; Statement: $r64 = new org.hibernate.LazyInitializationException 
(define-const var3158 String String-init) ; Statement: $r63 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3158)) ; Statement: specialinvoke $r63.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3158!1 String)
(assert (= var3158!1 ""))
(assert true)
(define-const var1435 String (append/672562846 var3158!1 "could not initialize proxy [")) ; Statement: $r36 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize proxy [") 
(declare-const var3158!2 String)
(assert (= var3158!2 (str.++ var3158!1 "could not initialize proxy [")))
(define-const var2418 String (entityName/752502022 var861)) ; Statement: $r35 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName> 
(assert true)
(define-const var75 String (append/672562846 var1435 var2418)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1435!1 String)
(assert (= var1435!1 (str.++ var1435 var2418)))
(assert true)
(define-const var1299 String (append/672562846 var75 "#")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var75!1 String)
(assert (= var75!1 (str.++ var75 "#")))
(define-const var3964 var729 (id/752502022 var861)) ; Statement: $r38 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id> 
(assert true)
(define-const var2126 String (append/-1031950772 var1299 (cast-from-var729-to-var1214 var3964))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var1299!1 String)
(assert (str.prefixof var1299 var1299!1))
(assert true)
(define-const var2213 String (append/672562846 var2126 "] - no Session")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - no Session") 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 "] - no Session")))
(assert true)
(define-const var902 String (toString/-2075883882 var2213)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1436286819 var3879 var902)) ; Statement: specialinvoke $r64.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r42) 

(declare-const var3879!1 var3768)
(declare-const var902!1 String)
(define-const var3055 var402 (cast-from-var3768-to-var402 var3879!1)) ; Statement: $r69 = (java.lang.Throwable) $r64 
 ; Statement: throw $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {session/752502022=([org.hibernate.proxy.AbstractLazyInitializer], org.hibernate.engine.spi.SharedSessionContractImplementor), sessionFactoryUuid/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), var3768-init=([], org.hibernate.LazyInitializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), id/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var729-to-var1214=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var3768-to-var402=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var3043=org.hibernate.proxy.AbstractLazyInitializer, var861=r0, var644=org.hibernate.engine.spi.SharedSessionContractImplementor, var1745=$r1, var609=$r19, var3155=null_type, var3768=org.hibernate.LazyInitializationException, var3879=$r64, var3158=$r63, var1435=$r36, var2418=$r35, var75=$r37, var1299=$r39, var729=java.io.Serializable, var3964=$r38, var1214=java.lang.Object, var2126=$r40, var2213=$r41, var902=$r42, var402=java.lang.Throwable, var3055=$r69}
; {org.hibernate.proxy.AbstractLazyInitializer=var3043, r0=var861, org.hibernate.engine.spi.SharedSessionContractImplementor=var644, $r1=var1745, $r19=var609, null_type=var3155, org.hibernate.LazyInitializationException=var3768, $r64=var3879, $r63=var3158, $r36=var1435, $r35=var2418, $r37=var75, $r39=var1299, java.io.Serializable=var729, $r38=var3964, java.lang.Object=var1214, $r40=var2126, $r41=var2213, $r42=var902, java.lang.Throwable=var402, $r69=var3055}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	$r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	if $r1 != null goto $r2 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	$r19 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String sessionFactoryUuid>;	if $r19 != null goto $r21 = <org.hibernate.internal.SessionFactoryRegistry: org.hibernate.internal.SessionFactoryRegistry INSTANCE>;	$r64 = new org.hibernate.LazyInitializationException;	$r63 = new java.lang.StringBuilder;	specialinvoke $r63.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize proxy [");	$r35 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName>;	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r38 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id>;	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - no Session");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r64.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r42);	$r69 = (java.lang.Throwable) $r64;	throw $r69
;block_num 3