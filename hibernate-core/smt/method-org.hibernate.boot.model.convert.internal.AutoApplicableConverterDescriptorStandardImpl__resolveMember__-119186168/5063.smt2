(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var2118 0)
(declare-sort var1494 0)
(declare-sort var2267 0)
(declare-sort var3315 0)
(declare-sort var2252 0)
(declare-sort var2515 0)
(declare-sort var2307 0)
(declare-sort var3313 0)
(declare-sort var3894 0)
(declare-sort var375 0)
(declare-sort var2127 0)
(declare-sort var1403 0)
(declare-sort var945 0)
(declare-sort var279 0)
(declare-sort var865 0)
(declare-sort var2796 0)
(declare-sort var3810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1494_getBootstrapContext/734182883 (var1494) var2267)
(declare-fun var2267_getClassmateContext/1218597893 (var2267) var3315)
(declare-fun var2267_getReflectionManager/292253152 (var2267) var2252)
(declare-fun getTypeResolver/-1883333126 (var3315) var2515)
(declare-fun var2118_getDeclaringClass/1357071039 (var2118) var2307)
(declare-fun var2252_toClass/1981099912 (var2252 var2307) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun resolve/-2090340329 (var2515 ClassObject (Array Int ClassObject)) var3313)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun getMemberResolver/-555541702 (var3315) var3894)
(declare-fun resolve/280286601 (var3894 var3313 var2127 var1403) var375)
(declare-fun var2152_toMember/928884979 (var2118) var945)
(declare-fun var279-init () var279)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var865) String)
(declare-fun cast-from-var945-to-var865 (var945) var865)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var279 String) void)
(declare-fun cast-from-var279-to-var2796 (var279) var2796)
(declare-const null-var2152 var2152)
(declare-const null-var2118 var2118)
(declare-const null-var1494 var1494)
(declare-const null-NullType var3810)
(declare-const null-var2127 var2127)
(declare-const null-var1403 var1403)
(declare-const var3283 var2152) ; Statement: r30 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl 
(assert (not (= var3283 null-var2152)))
(declare-const var2305 var2118) ; Statement: r5 := @parameter0: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var2305 null-var2118)))
(declare-const var649 var1494) ; Statement: r0 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var649 null-var1494)))
(define-const var3342 var2267 (var1494_getBootstrapContext/734182883 var649)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>() 
(define-const var2686 var3315 (var2267_getClassmateContext/1218597893 var3342)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.internal.ClassmateContext getClassmateContext()>() 
(define-const var3506 var2267 (var1494_getBootstrapContext/734182883 var649)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>() 
(define-const var449 var2252 (var2267_getReflectionManager/292253152 var3506)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.annotations.common.reflection.ReflectionManager getReflectionManager()>() 
(assert true)
(define-const var3116 var2515 (getTypeResolver/-1883333126 var2686)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.TypeResolver getTypeResolver()>() 
(define-const var1340 var2307 (var2118_getDeclaringClass/1357071039 var2305)) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.annotations.common.reflection.XProperty: org.hibernate.annotations.common.reflection.XClass getDeclaringClass()>() 
(define-const var1453 ClassObject (var2252_toClass/1981099912 var449 var1340)) ; Statement: $r8 = interfaceinvoke r4.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.Class toClass(org.hibernate.annotations.common.reflection.XClass)>($r6) 
(define-const var69 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r7 = newarray (java.lang.reflect.Type)[0] 
(assert true)
(define-const var3397 var3313 (resolve/-2090340329 var3116 (cast-from-ClassObject-to-ClassObject var1453) var69)) ; Statement: r10 = virtualinvoke $r9.<com.fasterxml.classmate.TypeResolver: com.fasterxml.classmate.ResolvedType resolve(java.lang.reflect.Type,java.lang.reflect.Type[])>($r8, $r7) 
(assert true)
(define-const var3503 var3894 (getMemberResolver/-555541702 var2686)) ; Statement: $r11 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.MemberResolver getMemberResolver()>() 
(assert true)
(define-const var353 var375 (resolve/280286601 var3503 var3397 null-var2127 null-var1403)) ; Statement: r12 = virtualinvoke $r11.<com.fasterxml.classmate.MemberResolver: com.fasterxml.classmate.ResolvedTypeWithMembers resolve(com.fasterxml.classmate.ResolvedType,com.fasterxml.classmate.AnnotationConfiguration,com.fasterxml.classmate.AnnotationOverrides)>(r10, null, null) 
(define-const var2327 var945 (var2152_toMember/928884979 var2305)) ; Statement: r13 = staticinvoke <org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: java.lang.reflect.Member toMember(org.hibernate.annotations.common.reflection.XProperty)>(r5) 
(define-const var2678 Bool true) ; Statement: $z0 = r13 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $z1 = r13 instanceof java.lang.reflect.Field 
(assert (= (ite var2678 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3240 Bool true) ; Statement: $z1 = r13 instanceof java.lang.reflect.Field 
 ; Statement: if $z1 == 0 goto $r36 = new org.hibernate.HibernateException 
(assert (= (ite var3240 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3015 var279 var279-init) ; Statement: $r36 = new org.hibernate.HibernateException 
(define-const var2008 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2008)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2008!1 String)
(assert (= var2008!1 ""))
(assert true)
(define-const var1759 String (append/672562846 var2008!1 "Unexpected java.lang.reflect.Member type from org.hibernate.annotations.common.reflection.java.JavaXMember : ")) ; Statement: $r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected java.lang.reflect.Member type from org.hibernate.annotations.common.reflection.java.JavaXMember : ") 
(declare-const var2008!2 String)
(assert (= var2008!2 (str.++ var2008!1 "Unexpected java.lang.reflect.Member type from org.hibernate.annotations.common.reflection.java.JavaXMember : ")))
(assert true)
(define-const var2245 String (append/-1031950772 var1759 (cast-from-var945-to-var865 var2327))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r13) 
(declare-const var1759!1 String)
(assert (str.prefixof var1759 var1759!1))
(assert true)
(define-const var3671 String (toString/-2075883882 var2245)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3015 var3671)) ; Statement: specialinvoke $r36.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18) 

(declare-const var3015!1 var279)
(declare-const var3671!1 String)
(define-const var2146 var2796 (cast-from-var279-to-var2796 var3015!1)) ; Statement: $r41 = (java.lang.Throwable) $r36 
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {var1494_getBootstrapContext/734182883=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.BootstrapContext), var2267_getClassmateContext/1218597893=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.internal.ClassmateContext), var2267_getReflectionManager/292253152=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.annotations.common.reflection.ReflectionManager), getTypeResolver/-1883333126=([org.hibernate.boot.internal.ClassmateContext], com.fasterxml.classmate.TypeResolver), var2118_getDeclaringClass/1357071039=([org.hibernate.annotations.common.reflection.XProperty], org.hibernate.annotations.common.reflection.XClass), var2252_toClass/1981099912=([org.hibernate.annotations.common.reflection.ReflectionManager, org.hibernate.annotations.common.reflection.XClass], java.lang.Class), arr-ClassObject-init=([], java.lang.reflect.Type[]), resolve/-2090340329=([com.fasterxml.classmate.TypeResolver, java.lang.reflect.Type, java.lang.reflect.Type[]], com.fasterxml.classmate.ResolvedType), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), getMemberResolver/-555541702=([org.hibernate.boot.internal.ClassmateContext], com.fasterxml.classmate.MemberResolver), resolve/280286601=([com.fasterxml.classmate.MemberResolver, com.fasterxml.classmate.ResolvedType, com.fasterxml.classmate.AnnotationConfiguration, com.fasterxml.classmate.AnnotationOverrides], com.fasterxml.classmate.ResolvedTypeWithMembers), var2152_toMember/928884979=([org.hibernate.annotations.common.reflection.XProperty], java.lang.reflect.Member), var279-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var945-to-var865=([java.lang.reflect.Member], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var279-to-var2796=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2152=org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl, var3283=r30, var2118=org.hibernate.annotations.common.reflection.XProperty, var2305=r5, var1494=org.hibernate.boot.spi.MetadataBuildingContext, var649=r0, var2267=org.hibernate.boot.spi.BootstrapContext, var3342=$r1, var3315=org.hibernate.boot.internal.ClassmateContext, var2686=r2, var3506=$r3, var2252=org.hibernate.annotations.common.reflection.ReflectionManager, var449=r4, var2515=com.fasterxml.classmate.TypeResolver, var3116=$r9, var2307=org.hibernate.annotations.common.reflection.XClass, var1340=$r6, var1453=$r8, var69=$r7, var3313=com.fasterxml.classmate.ResolvedType, var3397=r10, var3894=com.fasterxml.classmate.MemberResolver, var3503=$r11, var375=com.fasterxml.classmate.ResolvedTypeWithMembers, var2127=com.fasterxml.classmate.AnnotationConfiguration, var1403=com.fasterxml.classmate.AnnotationOverrides, var353=r12, var945=java.lang.reflect.Member, var2327=r13, var2678=$z0, var3240=$z1, var279=org.hibernate.HibernateException, var3015=$r36, var2008=$r35, var1759=$r16, var865=java.lang.Object, var2245=$r17, var3671=$r18, var2796=java.lang.Throwable, var2146=$r41, var3810=null_type}
; {org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl=var2152, r30=var3283, org.hibernate.annotations.common.reflection.XProperty=var2118, r5=var2305, org.hibernate.boot.spi.MetadataBuildingContext=var1494, r0=var649, org.hibernate.boot.spi.BootstrapContext=var2267, $r1=var3342, org.hibernate.boot.internal.ClassmateContext=var3315, r2=var2686, $r3=var3506, org.hibernate.annotations.common.reflection.ReflectionManager=var2252, r4=var449, com.fasterxml.classmate.TypeResolver=var2515, $r9=var3116, org.hibernate.annotations.common.reflection.XClass=var2307, $r6=var1340, $r8=var1453, $r7=var69, com.fasterxml.classmate.ResolvedType=var3313, r10=var3397, com.fasterxml.classmate.MemberResolver=var3894, $r11=var3503, com.fasterxml.classmate.ResolvedTypeWithMembers=var375, com.fasterxml.classmate.AnnotationConfiguration=var2127, com.fasterxml.classmate.AnnotationOverrides=var1403, r12=var353, java.lang.reflect.Member=var945, r13=var2327, $z0=var2678, $z1=var3240, org.hibernate.HibernateException=var279, $r36=var3015, $r35=var2008, $r16=var1759, java.lang.Object=var865, $r17=var2245, $r18=var3671, java.lang.Throwable=var2796, $r41=var2146, null_type=var3810}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl;	r5 := @parameter0: org.hibernate.annotations.common.reflection.XProperty;	r0 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext;	$r1 = interfaceinvoke r0.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>();	r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.internal.ClassmateContext getClassmateContext()>();	$r3 = interfaceinvoke r0.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>();	r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.annotations.common.reflection.ReflectionManager getReflectionManager()>();	$r9 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.TypeResolver getTypeResolver()>();	$r6 = interfaceinvoke r5.<org.hibernate.annotations.common.reflection.XProperty: org.hibernate.annotations.common.reflection.XClass getDeclaringClass()>();	$r8 = interfaceinvoke r4.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.Class toClass(org.hibernate.annotations.common.reflection.XClass)>($r6);	$r7 = newarray (java.lang.reflect.Type)[0];	r10 = virtualinvoke $r9.<com.fasterxml.classmate.TypeResolver: com.fasterxml.classmate.ResolvedType resolve(java.lang.reflect.Type,java.lang.reflect.Type[])>($r8, $r7);	$r11 = virtualinvoke r2.<org.hibernate.boot.internal.ClassmateContext: com.fasterxml.classmate.MemberResolver getMemberResolver()>();	r12 = virtualinvoke $r11.<com.fasterxml.classmate.MemberResolver: com.fasterxml.classmate.ResolvedTypeWithMembers resolve(com.fasterxml.classmate.ResolvedType,com.fasterxml.classmate.AnnotationConfiguration,com.fasterxml.classmate.AnnotationOverrides)>(r10, null, null);	r13 = staticinvoke <org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: java.lang.reflect.Member toMember(org.hibernate.annotations.common.reflection.XProperty)>(r5);	$z0 = r13 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $z1 = r13 instanceof java.lang.reflect.Field;	$z1 = r13 instanceof java.lang.reflect.Field;	if $z1 == 0 goto $r36 = new org.hibernate.HibernateException;	$r36 = new org.hibernate.HibernateException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected java.lang.reflect.Member type from org.hibernate.annotations.common.reflection.java.JavaXMember : ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r13);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18);	$r41 = (java.lang.Throwable) $r36;	throw $r41
;block_num 3