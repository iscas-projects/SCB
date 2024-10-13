(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3342 0)
(declare-sort var2907 0)
(declare-sort var2411 0)
(declare-sort var10 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2907_getCallerClass/-1224180422 () ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2411_contains/1636690605 (var2411 var10) Bool)
(declare-fun cast-from-String-to-var10 (String) var10)
(declare-fun var524-init () var524)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var10) String)
(declare-fun cast-from-ClassObject-to-var10 (ClassObject) var10)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1911872951 (var524 String) void)
(declare-const null-var3342 var3342)
(declare-const var2907-authorizedClasses var2411)
(declare-const var3622 var3342) ; Statement: r4 := @parameter0: java.security.PrivilegedAction 
(assert (not (= var3622 null-var3342)))
(define-const var2561 ClassObject var2907_getCallerClass/-1224180422) ; Statement: r0 = staticinvoke <org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher: java.lang.Class getCallerClass()>() 
(define-const var2649 var2411 var2907-authorizedClasses) ; Statement: $r1 = <org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher: java.util.Set authorizedClasses> 
(assert true)
(define-const var3161 String (getName/-1958580599 var2561)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var2323 Bool (var2411_contains/1636690605 var2649 (cast-from-String-to-var10 var3161))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r3 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>() 
(assert (not (not (= (ite var2323 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3046 var524 var524-init) ; Statement: $r7 = new java.lang.SecurityException 
(define-const var1227 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1227)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1227!1 String)
(assert (= var1227!1 ""))
(assert true)
(define-const var1920 String (append/672562846 var1227!1 "Unauthorized call by class ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unauthorized call by class ") 
(declare-const var1227!2 String)
(assert (= var1227!2 (str.++ var1227!1 "Unauthorized call by class ")))
(assert true)
(define-const var3074 String (append/-1031950772 var1920 (cast-from-ClassObject-to-var10 var2561))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1920!1 String)
(assert (str.prefixof var1920 var1920!1))
(assert true)
(define-const var1825 String (toString/-2075883882 var3074)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1911872951 var3046 var1825)) ; Statement: specialinvoke $r7.<java.lang.SecurityException: void <init>(java.lang.String)>($r11) 

(declare-const var3046!1 var524)
(declare-const var1825!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2907_getCallerClass/-1224180422=([], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var2411_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var10=([java.lang.String], java.lang.Object), var524-init=([], java.lang.SecurityException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var10=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1911872951=([java.lang.SecurityException, java.lang.String], void)}
; {var3342=java.security.PrivilegedAction, var3622=r4, var2907=org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher, var2561=r0, var2411=java.util.Set, var2649=$r1, var3161=$r2, var10=java.lang.Object, var2323=$z0, var524=java.lang.SecurityException, var3046=$r7, var1227=$r8, var1920=$r9, var3074=$r10, var1825=$r11}
; {java.security.PrivilegedAction=var3342, r4=var3622, org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher=var2907, r0=var2561, java.util.Set=var2411, $r1=var2649, $r2=var3161, java.lang.Object=var10, $z0=var2323, java.lang.SecurityException=var524, $r7=var3046, $r8=var1227, $r9=var1920, $r10=var3074, $r11=var1825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.security.PrivilegedAction;	r0 = staticinvoke <org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher: java.lang.Class getCallerClass()>();	$r1 = <org.hibernate.bytecode.internal.bytebuddy.HibernateMethodLookupDispatcher: java.util.Set authorizedClasses>;	$r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2);	if $z0 != 0 goto $r3 = staticinvoke <java.lang.System: java.lang.SecurityManager getSecurityManager()>();	$r7 = new java.lang.SecurityException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unauthorized call by class ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.SecurityException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2