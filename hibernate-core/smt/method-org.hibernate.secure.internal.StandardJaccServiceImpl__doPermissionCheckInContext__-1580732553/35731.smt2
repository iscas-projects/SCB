(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var383 0)
(declare-sort var3550 0)
(declare-sort var1060 0)
(declare-sort var1473 0)
(declare-sort var2898 0)
(declare-sort var3349 0)
(declare-sort var3905 0)
(declare-sort var184 0)
(declare-sort var3053 0)
(declare-sort var3444 0)
(declare-sort var356 0)
(declare-sort var2713 0)
(declare-sort var1263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1473_getPolicy/-1254955957 () var1473)
(declare-fun getCallerPrincipals/1962241012 (var383) (Array Int var2898))
(declare-fun var3550_getEntity/1566964452 (var3550) var3349)
(declare-fun getClass/1258963082 (var3349) ClassObject)
(declare-fun getProtectionDomain/49749181 (ClassObject) var3905)
(declare-fun getCodeSource/-110877260 (var3905) var184)
(declare-fun var3905-init () var3905)
(declare-fun <init>/1389342184 (var3905 var184 var3053 var3444 (Array Int var2898)) void)
(declare-fun var2713-init () var2713)
(declare-fun var3550_getEntityName/-1421005241 (var3550) String)
(declare-fun getImpliedActions/-1314486117 (var1060) (Array Int String))
(declare-fun <init>/-1730251453 (var2713 String String String (Array Int String)) void)
(declare-fun cast-from-var2713-to-var1263 (var2713) var1263)
(declare-fun implies/1898885460 (var1473 var3905 var1263) Bool)
(declare-const null-var383 var383)
(declare-const null-var3550 var3550)
(declare-const null-var1060 var1060)
(declare-const null-NullType var356)
(declare-const null-var3053 var3053)
(declare-const null-var3444 var3444)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1193 var383) ; Statement: r1 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl 
(assert (not (= var1193 null-var383)))
(declare-const var344 var3550) ; Statement: r3 := @parameter0: org.hibernate.secure.spi.PermissionCheckEntityInformation 
(assert (not (= var344 null-var3550)))
(declare-const var1636 var1060) ; Statement: r10 := @parameter1: org.hibernate.secure.spi.PermissibleAction 
(assert (not (= var1636 null-var1060)))
(define-const var3693 var1473 var1473_getPolicy/-1254955957) ; Statement: r0 = staticinvoke <java.security.Policy: java.security.Policy getPolicy()>() 
(assert true)
(define-const var3933 (Array Int var2898) (getCallerPrincipals/1962241012 var1193)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.security.Principal[] getCallerPrincipals()>() 
(define-const var2833 var3349 (var3550_getEntity/1566964452 var344)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.Object getEntity()>() 
(assert true)
(define-const var2676 ClassObject (getClass/1258963082 var2833)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1095 var3905 (getProtectionDomain/49749181 var2676)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
(assert true)
(define-const var2809 var184 (getCodeSource/-110877260 var1095)) ; Statement: r7 = virtualinvoke $r6.<java.security.ProtectionDomain: java.security.CodeSource getCodeSource()>() 
(define-const var470 var3905 var3905-init) ; Statement: $r21 = new java.security.ProtectionDomain 
(assert true)
;(assert (<init>/1389342184 var470 var2809 null-var3053 null-var3444 var3933)) ; Statement: specialinvoke $r21.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection,java.lang.ClassLoader,java.security.Principal[])>(r7, null, null, r2) 

(declare-const var470!1 var3905)
(declare-const var2809!1 var184)
(declare-const var3515 var356)
(declare-const var3515!1 var356)
(declare-const var3933!1 (Array Int var2898))
(define-const var1125 var2713 var2713-init) ; Statement: $r22 = new javax.security.jacc.EJBMethodPermission 
(define-const var165 String (var3550_getEntityName/-1421005241 var344)) ; Statement: $r13 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>() 
(assert true)
(define-const var1577 (Array Int String) (getImpliedActions/-1314486117 var1636)) ; Statement: $r11 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>() 
(define-const var1398 String (select var1577 0)) ; Statement: $r12 = $r11[0] 
(assert true)
;(assert (<init>/-1730251453 var1125 var165 var1398 null-String null-__Array__Int__String__)) ; Statement: specialinvoke $r22.<javax.security.jacc.EJBMethodPermission: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>($r13, $r12, null, null) 

(declare-const var1125!1 var2713)
(declare-const var165!1 String)
(declare-const var1398!1 String)
(declare-const var3515!2 var356)
(declare-const var3515!3 var356)
(define-const var3724 var1263 (cast-from-var2713-to-var1263 var1125!1)) ; Statement: $r24 = (java.security.Permission) $r22 
(assert true)
(define-const var3210 Bool (implies/1898885460 var3693 var470!1 var3724)) ; Statement: $z0 = virtualinvoke r0.<java.security.Policy: boolean implies(java.security.ProtectionDomain,java.security.Permission)>($r21, $r24) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3210 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1473_getPolicy/-1254955957=([], java.security.Policy), getCallerPrincipals/1962241012=([org.hibernate.secure.internal.StandardJaccServiceImpl], java.security.Principal[]), var3550_getEntity/1566964452=([org.hibernate.secure.spi.PermissionCheckEntityInformation], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain), getCodeSource/-110877260=([java.security.ProtectionDomain], java.security.CodeSource), var3905-init=([], java.security.ProtectionDomain), <init>/1389342184=([java.security.ProtectionDomain, java.security.CodeSource, java.security.PermissionCollection, java.lang.ClassLoader, java.security.Principal[]], void), var2713-init=([], javax.security.jacc.EJBMethodPermission), var3550_getEntityName/-1421005241=([org.hibernate.secure.spi.PermissionCheckEntityInformation], java.lang.String), getImpliedActions/-1314486117=([org.hibernate.secure.spi.PermissibleAction], java.lang.String[]), <init>/-1730251453=([javax.security.jacc.EJBMethodPermission, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], void), cast-from-var2713-to-var1263=([javax.security.jacc.EJBMethodPermission], java.security.Permission), implies/1898885460=([java.security.Policy, java.security.ProtectionDomain, java.security.Permission], boolean)}
; {var383=org.hibernate.secure.internal.StandardJaccServiceImpl, var1193=r1, var3550=org.hibernate.secure.spi.PermissionCheckEntityInformation, var344=r3, var1060=org.hibernate.secure.spi.PermissibleAction, var1636=r10, var1473=java.security.Policy, var3693=r0, var2898=java.security.Principal, var3933=r2, var3349=java.lang.Object, var2833=$r4, var2676=$r5, var3905=java.security.ProtectionDomain, var1095=$r6, var184=java.security.CodeSource, var2809=r7, var470=$r21, var3053=java.security.PermissionCollection, var3444=java.lang.ClassLoader, var3515=null, var356=null_type, var2713=javax.security.jacc.EJBMethodPermission, var1125=$r22, var165=$r13, var1577=$r11, var1398=$r12, var1263=java.security.Permission, var3724=$r24, var3210=$z0}
; {org.hibernate.secure.internal.StandardJaccServiceImpl=var383, r1=var1193, org.hibernate.secure.spi.PermissionCheckEntityInformation=var3550, r3=var344, org.hibernate.secure.spi.PermissibleAction=var1060, r10=var1636, java.security.Policy=var1473, r0=var3693, java.security.Principal=var2898, r2=var3933, java.lang.Object=var3349, $r4=var2833, $r5=var2676, java.security.ProtectionDomain=var3905, $r6=var1095, java.security.CodeSource=var184, r7=var2809, $r21=var470, java.security.PermissionCollection=var3053, java.lang.ClassLoader=var3444, null=var3515, null_type=var356, javax.security.jacc.EJBMethodPermission=var2713, $r22=var1125, $r13=var165, $r11=var1577, $r12=var1398, java.security.Permission=var1263, $r24=var3724, $z0=var3210}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl;	r3 := @parameter0: org.hibernate.secure.spi.PermissionCheckEntityInformation;	r10 := @parameter1: org.hibernate.secure.spi.PermissibleAction;	r0 = staticinvoke <java.security.Policy: java.security.Policy getPolicy()>();	r2 = virtualinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.security.Principal[] getCallerPrincipals()>();	$r4 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.Object getEntity()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	r7 = virtualinvoke $r6.<java.security.ProtectionDomain: java.security.CodeSource getCodeSource()>();	$r21 = new java.security.ProtectionDomain;	specialinvoke $r21.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection,java.lang.ClassLoader,java.security.Principal[])>(r7, null, null, r2);	$r22 = new javax.security.jacc.EJBMethodPermission;	$r13 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>();	$r11 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>();	$r12 = $r11[0];	specialinvoke $r22.<javax.security.jacc.EJBMethodPermission: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>($r13, $r12, null, null);	$r24 = (java.security.Permission) $r22;	$z0 = virtualinvoke r0.<java.security.Policy: boolean implies(java.security.ProtectionDomain,java.security.Permission)>($r21, $r24);	if $z0 != 0 goto return;	return
;block_num 2