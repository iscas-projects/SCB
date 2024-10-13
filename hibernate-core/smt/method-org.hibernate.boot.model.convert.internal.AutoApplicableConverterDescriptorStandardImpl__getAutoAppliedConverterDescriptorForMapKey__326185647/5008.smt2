(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort var3167 0)
(declare-sort var2554 0)
(declare-sort var3671 0)
(declare-sort var1092 0)
(declare-sort var2250 0)
(declare-sort var3006 0)
(declare-sort var3492 0)
(declare-sort var1424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1092!class ClassObject)
(declare-fun resolveMember/-119186168 (var2934 var3167 var2554) var3671)
(declare-fun getType/-820495274 (var3671) var2250)
(declare-fun getErasedType/-1999076163 (var2250) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3006-init () var3006)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3492) String)
(declare-fun cast-from-ClassObject-to-var3492 (ClassObject) var3492)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3006 String) void)
(declare-fun cast-from-var3006-to-var1424 (var3006) var1424)
(declare-const null-var2934 var2934)
(declare-const null-var3167 var3167)
(declare-const null-var2554 var2554)
(declare-const var3187 var2934) ; Statement: r0 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl 
(assert (not (= var3187 null-var2934)))
(declare-const var3108 var3167) ; Statement: r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var3108 null-var3167)))
(declare-const var840 var2554) ; Statement: r2 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var840 null-var2554)))
(assert true)
(define-const var2488 var3671 (resolveMember/-119186168 var3187 var3108 var840)) ; Statement: r3 = specialinvoke r0.<org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: com.fasterxml.classmate.members.ResolvedMember resolveMember(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.boot.spi.MetadataBuildingContext)>(r1, r2) 
(define-const var1242 ClassObject var1092!class) ; Statement: $r6 = class "Ljava/util/Map;" 
(assert true)
(define-const var509 var2250 (getType/-820495274 var2488)) ; Statement: $r4 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>() 
(assert true)
(define-const var3393 ClassObject (getErasedType/-1999076163 var509)) ; Statement: $r5 = virtualinvoke $r4.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>() 
(assert true)
(define-const var1401 Bool (isAssignableFrom/-1028998700 var1242 var3393)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5) 
 ; Statement: if $z0 == 0 goto $r22 = new org.hibernate.HibernateException 
(assert (= (ite var1401 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1473 var3006 var3006-init) ; Statement: $r22 = new org.hibernate.HibernateException 
(define-const var1568 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1568)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1568!1 String)
(assert (= var1568!1 ""))
(assert true)
(define-const var865 String (append/672562846 var1568!1 "Attribute was not a Map : ")) ; Statement: $r11 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute was not a Map : ") 
(declare-const var1568!2 String)
(assert (= var1568!2 (str.++ var1568!1 "Attribute was not a Map : ")))
(assert true)
(define-const var2350 var2250 (getType/-820495274 var2488)) ; Statement: $r9 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>() 
(assert true)
(define-const var2447 ClassObject (getErasedType/-1999076163 var2350)) ; Statement: $r10 = virtualinvoke $r9.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>() 
(assert true)
(define-const var2571 String (append/-1031950772 var865 (cast-from-ClassObject-to-var3492 var2447))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var865!1 String)
(assert (str.prefixof var865 var865!1))
(assert true)
(define-const var1352 String (toString/-2075883882 var2571)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1473 var1352)) ; Statement: specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r13) 

(declare-const var1473!1 var3006)
(declare-const var1352!1 String)
(define-const var663 var1424 (cast-from-var3006-to-var1424 var1473!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveMember/-119186168=([org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl, org.hibernate.annotations.common.reflection.XProperty, org.hibernate.boot.spi.MetadataBuildingContext], com.fasterxml.classmate.members.ResolvedMember), getType/-820495274=([com.fasterxml.classmate.members.ResolvedMember], com.fasterxml.classmate.ResolvedType), getErasedType/-1999076163=([com.fasterxml.classmate.ResolvedType], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3006-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3492=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3006-to-var1424=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2934=org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl, var3187=r0, var3167=org.hibernate.annotations.common.reflection.XProperty, var3108=r1, var2554=org.hibernate.boot.spi.MetadataBuildingContext, var840=r2, var3671=com.fasterxml.classmate.members.ResolvedMember, var2488=r3, var1092=java.util.Map, var1242=$r6, var2250=com.fasterxml.classmate.ResolvedType, var509=$r4, var3393=$r5, var1401=$z0, var3006=org.hibernate.HibernateException, var1473=$r22, var1568=$r21, var865=$r11, var2350=$r9, var2447=$r10, var3492=java.lang.Object, var2571=$r12, var1352=$r13, var1424=java.lang.Throwable, var663=$r23}
; {org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl=var2934, r0=var3187, org.hibernate.annotations.common.reflection.XProperty=var3167, r1=var3108, org.hibernate.boot.spi.MetadataBuildingContext=var2554, r2=var840, com.fasterxml.classmate.members.ResolvedMember=var3671, r3=var2488, java.util.Map=var1092, $r6=var1242, com.fasterxml.classmate.ResolvedType=var2250, $r4=var509, $r5=var3393, $z0=var1401, org.hibernate.HibernateException=var3006, $r22=var1473, $r21=var1568, $r11=var865, $r9=var2350, $r10=var2447, java.lang.Object=var3492, $r12=var2571, $r13=var1352, java.lang.Throwable=var1424, $r23=var663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl;	r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty;	r2 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext;	r3 = specialinvoke r0.<org.hibernate.boot.model.convert.internal.AutoApplicableConverterDescriptorStandardImpl: com.fasterxml.classmate.members.ResolvedMember resolveMember(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.boot.spi.MetadataBuildingContext)>(r1, r2);	$r6 = class "Ljava/util/Map;";	$r4 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>();	$r5 = virtualinvoke $r4.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>();	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r5);	if $z0 == 0 goto $r22 = new org.hibernate.HibernateException;	$r22 = new org.hibernate.HibernateException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute was not a Map : ");	$r9 = virtualinvoke r3.<com.fasterxml.classmate.members.ResolvedMember: com.fasterxml.classmate.ResolvedType getType()>();	$r10 = virtualinvoke $r9.<com.fasterxml.classmate.ResolvedType: java.lang.Class getErasedType()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r13);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2