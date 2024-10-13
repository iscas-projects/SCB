(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort var2531 0)
(declare-sort var57 0)
(declare-sort var2793 0)
(declare-sort var279 0)
(declare-sort var1180 0)
(declare-sort var753 0)
(declare-sort var1746 0)
(declare-sort var1905 0)
(declare-sort var102 0)
(declare-sort var3104 0)
(declare-sort var837 0)
(declare-sort var997 0)
(declare-sort var2250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2793_getPolicy/-1254955957 () var2793)
(declare-fun getCallerPrincipals/1962241012 (var3746) (Array Int var279))
(declare-fun var2531_getEntity/1566964452 (var2531) var1180)
(declare-fun getClass/1258963082 (var1180) ClassObject)
(declare-fun getProtectionDomain/49749181 (ClassObject) var753)
(declare-fun getCodeSource/-110877260 (var753) var1746)
(declare-fun var753-init () var753)
(declare-fun <init>/1389342184 (var753 var1746 var1905 var102 (Array Int var279)) void)
(declare-fun var837-init () var837)
(declare-fun var2531_getEntityName/-1421005241 (var2531) String)
(declare-fun getImpliedActions/-1314486117 (var57) (Array Int String))
(declare-fun <init>/-1730251453 (var837 String String String (Array Int String)) void)
(declare-fun cast-from-var837-to-var997 (var837) var997)
(declare-fun implies/1898885460 (var2793 var753 var997) Bool)
(declare-fun var2250-init () var2250)
(declare-fun arr-var1180-init () (Array Int var1180))
(declare-fun cast-from-String-to-var1180 (String) var1180)
(declare-fun join/40519957 (var3746 (Array Int var279)) String)
(declare-fun String_format/1339386452 (String (Array Int var1180)) String)
(declare-fun <init>/-1911872951 (var2250 String) void)
(declare-const null-var3746 var3746)
(declare-const null-var2531 var2531)
(declare-const null-var57 var57)
(declare-const null-NullType var3104)
(declare-const null-var1905 var1905)
(declare-const null-var102 var102)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__var1180__ (Array Int var1180))
(declare-const var2791 var3746) ; Statement: r1 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl 
(assert (not (= var2791 null-var3746)))
(declare-const var1604 var2531) ; Statement: r3 := @parameter0: org.hibernate.secure.spi.PermissionCheckEntityInformation 
(assert (not (= var1604 null-var2531)))
(declare-const var447 var57) ; Statement: r10 := @parameter1: org.hibernate.secure.spi.PermissibleAction 
(assert (not (= var447 null-var57)))
(define-const var2472 var2793 var2793_getPolicy/-1254955957) ; Statement: r0 = staticinvoke <java.security.Policy: java.security.Policy getPolicy()>() 
(assert true)
(define-const var3124 (Array Int var279) (getCallerPrincipals/1962241012 var2791)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.security.Principal[] getCallerPrincipals()>() 
(define-const var1837 var1180 (var2531_getEntity/1566964452 var1604)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.Object getEntity()>() 
(assert true)
(define-const var1926 ClassObject (getClass/1258963082 var1837)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3607 var753 (getProtectionDomain/49749181 var1926)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
(assert true)
(define-const var2535 var1746 (getCodeSource/-110877260 var3607)) ; Statement: r7 = virtualinvoke $r6.<java.security.ProtectionDomain: java.security.CodeSource getCodeSource()>() 
(define-const var2165 var753 var753-init) ; Statement: $r21 = new java.security.ProtectionDomain 
(assert true)
;(assert (<init>/1389342184 var2165 var2535 null-var1905 null-var102 var3124)) ; Statement: specialinvoke $r21.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection,java.lang.ClassLoader,java.security.Principal[])>(r7, null, null, r2) 

(declare-const var2165!1 var753)
(declare-const var2535!1 var1746)
(declare-const var3231 var3104)
(declare-const var3231!1 var3104)
(declare-const var3124!1 (Array Int var279))
(define-const var3088 var837 var837-init) ; Statement: $r22 = new javax.security.jacc.EJBMethodPermission 
(define-const var709 String (var2531_getEntityName/-1421005241 var1604)) ; Statement: $r13 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>() 
(assert true)
(define-const var2227 (Array Int String) (getImpliedActions/-1314486117 var447)) ; Statement: $r11 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>() 
(define-const var1713 String (select var2227 0)) ; Statement: $r12 = $r11[0] 
(assert true)
;(assert (<init>/-1730251453 var3088 var709 var1713 null-String null-__Array__Int__String__)) ; Statement: specialinvoke $r22.<javax.security.jacc.EJBMethodPermission: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>($r13, $r12, null, null) 

(declare-const var3088!1 var837)
(declare-const var709!1 String)
(declare-const var1713!1 String)
(declare-const var3231!2 var3104)
(declare-const var3231!3 var3104)
(define-const var3751 var997 (cast-from-var837-to-var997 var3088!1)) ; Statement: $r24 = (java.security.Permission) $r22 
(assert true)
(define-const var1890 Bool (implies/1898885460 var2472 var2165!1 var3751)) ; Statement: $z0 = virtualinvoke r0.<java.security.Policy: boolean implies(java.security.ProtectionDomain,java.security.Permission)>($r21, $r24) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1890 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1886 var2250 var2250-init) ; Statement: $r23 = new java.lang.SecurityException 
(define-const var1749 (Array Int var1180) arr-var1180-init) ; Statement: $r15 = newarray (java.lang.Object)[3] 
(define-const var3345 String (var2531_getEntityName/-1421005241 var1604)) ; Statement: $r16 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>() 
(declare-const var1749!1 (Array Int var1180))
(assert (not (= var1749!1 null-__Array__Int__var1180__)))
(assert (= (select var1749!1 0) (cast-from-String-to-var1180 var3345))) ; Statement: $r15[0] = $r16 
(assert true)
(define-const var787 (Array Int String) (getImpliedActions/-1314486117 var447)) ; Statement: $r17 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>() 
(define-const var1871 String (select var787 0)) ; Statement: $r18 = $r17[0] 
(declare-const var1749!2 (Array Int var1180))
(assert (not (= var1749!2 null-__Array__Int__var1180__)))
(assert (= (select var1749!2 1) (cast-from-String-to-var1180 var1871))) ; Statement: $r15[1] = $r18 
(assert true)
(define-const var3267 String (join/40519957 var2791 var3124!1)) ; Statement: $r19 = specialinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.lang.String join(java.security.Principal[])>(r2) 
(declare-const var1749!3 (Array Int var1180))
(assert (not (= var1749!3 null-__Array__Int__var1180__)))
(assert (= (select var1749!3 2) (cast-from-String-to-var1180 var3267))) ; Statement: $r15[2] = $r19 
(define-const var2859 String (String_format/1339386452 "JACC denied permission to [%s.%s] for [%s]" var1749!3)) ; Statement: $r20 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("JACC denied permission to [%s.%s] for [%s]", $r15) 
(assert true)
;(assert (<init>/-1911872951 var1886 var2859)) ; Statement: specialinvoke $r23.<java.lang.SecurityException: void <init>(java.lang.String)>($r20) 

(declare-const var1886!1 var2250)
(declare-const var2859!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var2793_getPolicy/-1254955957=([], java.security.Policy), getCallerPrincipals/1962241012=([org.hibernate.secure.internal.StandardJaccServiceImpl], java.security.Principal[]), var2531_getEntity/1566964452=([org.hibernate.secure.spi.PermissionCheckEntityInformation], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain), getCodeSource/-110877260=([java.security.ProtectionDomain], java.security.CodeSource), var753-init=([], java.security.ProtectionDomain), <init>/1389342184=([java.security.ProtectionDomain, java.security.CodeSource, java.security.PermissionCollection, java.lang.ClassLoader, java.security.Principal[]], void), var837-init=([], javax.security.jacc.EJBMethodPermission), var2531_getEntityName/-1421005241=([org.hibernate.secure.spi.PermissionCheckEntityInformation], java.lang.String), getImpliedActions/-1314486117=([org.hibernate.secure.spi.PermissibleAction], java.lang.String[]), <init>/-1730251453=([javax.security.jacc.EJBMethodPermission, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], void), cast-from-var837-to-var997=([javax.security.jacc.EJBMethodPermission], java.security.Permission), implies/1898885460=([java.security.Policy, java.security.ProtectionDomain, java.security.Permission], boolean), var2250-init=([], java.lang.SecurityException), arr-var1180-init=([], java.lang.Object[]), cast-from-String-to-var1180=([java.lang.String], java.lang.Object), join/40519957=([org.hibernate.secure.internal.StandardJaccServiceImpl, java.security.Principal[]], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1911872951=([java.lang.SecurityException, java.lang.String], void)}
; {var3746=org.hibernate.secure.internal.StandardJaccServiceImpl, var2791=r1, var2531=org.hibernate.secure.spi.PermissionCheckEntityInformation, var1604=r3, var57=org.hibernate.secure.spi.PermissibleAction, var447=r10, var2793=java.security.Policy, var2472=r0, var279=java.security.Principal, var3124=r2, var1180=java.lang.Object, var1837=$r4, var1926=$r5, var753=java.security.ProtectionDomain, var3607=$r6, var1746=java.security.CodeSource, var2535=r7, var2165=$r21, var1905=java.security.PermissionCollection, var102=java.lang.ClassLoader, var3231=null, var3104=null_type, var837=javax.security.jacc.EJBMethodPermission, var3088=$r22, var709=$r13, var2227=$r11, var1713=$r12, var997=java.security.Permission, var3751=$r24, var1890=$z0, var2250=java.lang.SecurityException, var1886=$r23, var1749=$r15, var3345=$r16, var787=$r17, var1871=$r18, var3267=$r19, var2859=$r20}
; {org.hibernate.secure.internal.StandardJaccServiceImpl=var3746, r1=var2791, org.hibernate.secure.spi.PermissionCheckEntityInformation=var2531, r3=var1604, org.hibernate.secure.spi.PermissibleAction=var57, r10=var447, java.security.Policy=var2793, r0=var2472, java.security.Principal=var279, r2=var3124, java.lang.Object=var1180, $r4=var1837, $r5=var1926, java.security.ProtectionDomain=var753, $r6=var3607, java.security.CodeSource=var1746, r7=var2535, $r21=var2165, java.security.PermissionCollection=var1905, java.lang.ClassLoader=var102, null=var3231, null_type=var3104, javax.security.jacc.EJBMethodPermission=var837, $r22=var3088, $r13=var709, $r11=var2227, $r12=var1713, java.security.Permission=var997, $r24=var3751, $z0=var1890, java.lang.SecurityException=var2250, $r23=var1886, $r15=var1749, $r16=var3345, $r17=var787, $r18=var1871, $r19=var3267, $r20=var2859}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl;	r3 := @parameter0: org.hibernate.secure.spi.PermissionCheckEntityInformation;	r10 := @parameter1: org.hibernate.secure.spi.PermissibleAction;	r0 = staticinvoke <java.security.Policy: java.security.Policy getPolicy()>();	r2 = virtualinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.security.Principal[] getCallerPrincipals()>();	$r4 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.Object getEntity()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	r7 = virtualinvoke $r6.<java.security.ProtectionDomain: java.security.CodeSource getCodeSource()>();	$r21 = new java.security.ProtectionDomain;	specialinvoke $r21.<java.security.ProtectionDomain: void <init>(java.security.CodeSource,java.security.PermissionCollection,java.lang.ClassLoader,java.security.Principal[])>(r7, null, null, r2);	$r22 = new javax.security.jacc.EJBMethodPermission;	$r13 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>();	$r11 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>();	$r12 = $r11[0];	specialinvoke $r22.<javax.security.jacc.EJBMethodPermission: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>($r13, $r12, null, null);	$r24 = (java.security.Permission) $r22;	$z0 = virtualinvoke r0.<java.security.Policy: boolean implies(java.security.ProtectionDomain,java.security.Permission)>($r21, $r24);	if $z0 != 0 goto return;	$r23 = new java.lang.SecurityException;	$r15 = newarray (java.lang.Object)[3];	$r16 = interfaceinvoke r3.<org.hibernate.secure.spi.PermissionCheckEntityInformation: java.lang.String getEntityName()>();	$r15[0] = $r16;	$r17 = virtualinvoke r10.<org.hibernate.secure.spi.PermissibleAction: java.lang.String[] getImpliedActions()>();	$r18 = $r17[0];	$r15[1] = $r18;	$r19 = specialinvoke r1.<org.hibernate.secure.internal.StandardJaccServiceImpl: java.lang.String join(java.security.Principal[])>(r2);	$r15[2] = $r19;	$r20 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("JACC denied permission to [%s.%s] for [%s]", $r15);	specialinvoke $r23.<java.lang.SecurityException: void <init>(java.lang.String)>($r20);	throw $r23
;block_num 2