(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort var1268 0)
(declare-sort var603 0)
(declare-sort var2213 0)
(declare-sort var2252 0)
(declare-sort var3082 0)
(declare-sort var2529 0)
(declare-sort var3810 0)
(declare-sort var1680 0)
(declare-sort var3775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2252!class ClassObject)
(declare-const var2529!class ClassObject)
(declare-fun resolveMember/-119186168 (var1753 var1268 var603) var2213)
(declare-fun getType/-820495274 (var2213) var3082)
(declare-fun getErasedType/-1999076163 (var3082) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3810-init () var3810)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1680) String)
(declare-fun cast-from-ClassObject-to-var1680 (ClassObject) var1680)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3810 String) void)
(declare-fun cast-from-var3810-to-var3775 (var3810) var3775)
(declare-const null-var1753 var1753)
(declare-const null-var1268 var1268)
(declare-const null-var603 var603)
(declare-const var837 var1753) ; Statement: r0 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl 
(assert (not (= var837 null-var1753)))
(declare-const var1092 var1268) ; Statement: r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var1092 null-var1268)))
(declare-const var3985 var603) ; Statement: r2 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var3985 null-var603)))
(assert true)
(define-const var2970 var2213 (resolveMember/-119186168 var837 var1092 var3985)) ; Statement: r3 = specialinvoke r0.<org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: com.fasterxml.classmate.members.ResolvedMember resolveMember(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.boot.spi.MetadataBuildingContext)>(r1, r2) 
(define-const var1963 ClassObject var2252!class) ; Statement: $r6 = class "Ljava/util/Map;" 
(assert true)
(define-const var2628 var3082 (getType/-820495274 var2970)) ; Statement: $r4 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>() 
(assert true)
(define-const var1576 ClassObject (getErasedType/-1999076163 var2628)) ; Statement: $r5 = virtualinvoke $r4.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>() 
(assert true)
(define-const var154 Bool (isAssignableFrom/-1028998700 var1963 var1576)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5) 
 ; Statement: if $z0 == 0 goto $r9 = class "Ljava/util/Collection;" 
(assert (= (ite var154 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2073 ClassObject var2529!class) ; Statement: $r9 = class "Ljava/util/Collection;" 
(assert true)
(define-const var2219 var3082 (getType/-820495274 var2970)) ; Statement: $r7 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>() 
(assert true)
(define-const var3427 ClassObject (getErasedType/-1999076163 var2219)) ; Statement: $r8 = virtualinvoke $r7.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>() 
(assert true)
(define-const var1128 Bool (isAssignableFrom/-1028998700 var2073 var3427)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r8) 
 ; Statement: if $z1 == 0 goto $r28 = new org.hibernate.HibernateException 
(assert (= (ite var1128 1 0) 0)) ; Cond: $z1 == 0 
(define-const var425 var3810 var3810-init) ; Statement: $r28 = new org.hibernate.HibernateException 
(define-const var3428 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3428)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3428!1 String)
(assert (= var3428!1 ""))
(assert true)
(define-const var634 String (append/672562846 var3428!1 "Attribute was neither a Collection nor a Map : ")) ; Statement: $r14 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute was neither a Collection nor a Map : ") 
(declare-const var3428!2 String)
(assert (= var3428!2 (str.++ var3428!1 "Attribute was neither a Collection nor a Map : ")))
(assert true)
(define-const var1750 var3082 (getType/-820495274 var2970)) ; Statement: $r12 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>() 
(assert true)
(define-const var3628 ClassObject (getErasedType/-1999076163 var1750)) ; Statement: $r13 = virtualinvoke $r12.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>() 
(assert true)
(define-const var291 String (append/-1031950772 var634 (cast-from-ClassObject-to-var1680 var3628))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var634!1 String)
(assert (str.prefixof var634 var634!1))
(assert true)
(define-const var3998 String (toString/-2075883882 var291)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var425 var3998)) ; Statement: specialinvoke $r28.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16) 

(declare-const var425!1 var3810)
(declare-const var3998!1 String)
(define-const var3257 var3775 (cast-from-var3810-to-var3775 var425!1)) ; Statement: $r29 = (java.lang.Throwable) $r28 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveMember/-119186168=([org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl, org.hibernate.annotations.common.reflection.XProperty, org.hibernate.boot.spi.MetadataBuildingContext], com.fasterxml.classmate.members.ResolvedMember), getType/-820495274=([com.fasterxml.classmate.members.ResolvedMember], com.fasterxml.classmate.ResolvedType), getErasedType/-1999076163=([com.fasterxml.classmate.ResolvedType], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3810-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1680=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3810-to-var3775=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1753=org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl, var837=r0, var1268=org.hibernate.annotations.common.reflection.XProperty, var1092=r1, var603=org.hibernate.boot.spi.MetadataBuildingContext, var3985=r2, var2213=com.fasterxml.classmate.members.ResolvedMember, var2970=r3, var2252=java.util.Map, var1963=$r6, var3082=com.fasterxml.classmate.ResolvedType, var2628=$r4, var1576=$r5, var154=$z0, var2529=java.util.Collection, var2073=$r9, var2219=$r7, var3427=$r8, var1128=$z1, var3810=org.hibernate.HibernateException, var425=$r28, var3428=$r27, var634=$r14, var1750=$r12, var3628=$r13, var1680=java.lang.Object, var291=$r15, var3998=$r16, var3775=java.lang.Throwable, var3257=$r29}
; {org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl=var1753, r0=var837, org.hibernate.annotations.common.reflection.XProperty=var1268, r1=var1092, org.hibernate.boot.spi.MetadataBuildingContext=var603, r2=var3985, com.fasterxml.classmate.members.ResolvedMember=var2213, r3=var2970, java.util.Map=var2252, $r6=var1963, com.fasterxml.classmate.ResolvedType=var3082, $r4=var2628, $r5=var1576, $z0=var154, java.util.Collection=var2529, $r9=var2073, $r7=var2219, $r8=var3427, $z1=var1128, org.hibernate.HibernateException=var3810, $r28=var425, $r27=var3428, $r14=var634, $r12=var1750, $r13=var3628, java.lang.Object=var1680, $r15=var291, $r16=var3998, java.lang.Throwable=var3775, $r29=var3257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl;	r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty;	r2 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext;	r3 = specialinvoke r0.<org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: com.fasterxml.classmate.members.ResolvedMember resolveMember(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.boot.spi.MetadataBuildingContext)>(r1, r2);	$r6 = class "Ljava/util/Map;";	$r4 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>();	$r5 = virtualinvoke $r4.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>();	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5);	if $z0 == 0 goto $r9 = class "Ljava/util/Collection;";	$r9 = class "Ljava/util/Collection;";	$r7 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>();	$r8 = virtualinvoke $r7.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>();	$z1 = virtualinvoke $r9.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r8);	if $z1 == 0 goto $r28 = new org.hibernate.HibernateException;	$r28 = new org.hibernate.HibernateException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute was neither a Collection nor a Map : ");	$r12 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>();	$r13 = virtualinvoke $r12.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16);	$r29 = (java.lang.Throwable) $r28;	throw $r29
;block_num 3