(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3913 0)
(declare-sort var713 0)
(declare-sort var3092 0)
(declare-sort var1493 0)
(declare-sort var2238 0)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperConstructor/1288429241 (var3913 ClassObject (Array Int ClassObject)) var1493)
(declare-fun var485-init () var485)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var485 String var2238) void)
(declare-fun cast-from-var485-to-var2238 (var485) var2238)
(declare-const null-var3913 var3913)
(declare-const null-ClassObject ClassObject)
(declare-const null-var713 var713)
(declare-const null-var3092 var3092)
(declare-const var3913-ENTITY_TUP_CTOR_SIG (Array Int ClassObject))
(declare-const var3913-$assertionsDisabled Bool)
(declare-const null-var2238 var2238)
(declare-const var3100 var3913) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var3100 null-var3913)))
(declare-const var329 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var329 null-ClassObject)))
(declare-const var1863 var713) ; Statement: r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var1863 null-var713)))
(declare-const var3347 var3092) ; Statement: r6 := @parameter2: org.hibernate.mapping.PersistentClass 
(assert (not (= var3347 null-var3092)))
(define-const var1807 (Array Int ClassObject) var3913-ENTITY_TUP_CTOR_SIG) ; Statement: $r2 = <org.hibernate.tuple.entity.EntityTuplizerFactory: java.lang.Class[] ENTITY_TUP_CTOR_SIG> 
(assert true)
(define-const var3322 var1493 (getProperConstructor/1288429241 var3100 var329 var1807)) ; Statement: r3 = specialinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.lang.reflect.Constructor getProperConstructor(java.lang.Class,java.lang.Class[])>(r1, $r2) 
(define-const var1094 Bool var3913-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r4 = newarray (java.lang.Object)[2] 
(assert (not (not (= (ite var1094 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var1036 var2238) ; Statement: $r16 := @caughtexception 
(assert (not (= var1036 null-var2238)))
(define-const var1688 var485 var485-init) ; Statement: $r27 = new org.hibernate.HibernateException 
(define-const var1782 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1782)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1782!1 String)
(assert (= var1782!1 ""))
(assert true)
(define-const var3922 String (append/672562846 var1782!1 "Unable to instantiate default tuplizer [")) ; Statement: $r20 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate default tuplizer [") 
(declare-const var1782!2 String)
(assert (= var1782!2 (str.++ var1782!1 "Unable to instantiate default tuplizer [")))
(assert true)
(define-const var2940 String (getName/-1958580599 var329)) ; Statement: $r19 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1575 String (append/672562846 var3922 var2940)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3922!1 String)
(assert (= var3922!1 (str.++ var3922 var2940)))
(assert true)
(define-const var3816 String (append/672562846 var1575 "]")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1575!1 String)
(assert (= var1575!1 (str.++ var1575 "]")))
(assert true)
(define-const var1133 String (toString/-2075883882 var3816)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var1688 var1133 var1036)) ; Statement: specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r16) 

(declare-const var1688!1 var485)
(declare-const var1133!1 String)
(declare-const var1036!1 var2238)
(define-const var564 var2238 (cast-from-var485-to-var2238 var1688!1)) ; Statement: $r28 = (java.lang.Throwable) $r27 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperConstructor/1288429241=([org.hibernate.tuple.entity.EntityTuplizerFactory, java.lang.Class, java.lang.Class[]], java.lang.reflect.Constructor), var485-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var485-to-var2238=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3913=org.hibernate.tuple.entity.EntityTuplizerFactory, var3100=r0, var329=r1, var713=org.hibernate.tuple.entity.EntityMetamodel, var1863=r5, var3092=org.hibernate.mapping.PersistentClass, var3347=r6, var1807=$r2, var1493=java.lang.reflect.Constructor, var3322=r3, var1094=$z0, var2238=java.lang.Throwable, var1036=$r16, var485=org.hibernate.HibernateException, var1688=$r27, var1782=$r26, var3922=$r20, var2940=$r19, var1575=$r21, var3816=$r22, var1133=$r23, var564=$r28}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var3913, r0=var3100, r1=var329, org.hibernate.tuple.entity.EntityMetamodel=var713, r5=var1863, org.hibernate.mapping.PersistentClass=var3092, r6=var3347, $r2=var1807, java.lang.reflect.Constructor=var1493, r3=var3322, $z0=var1094, java.lang.Throwable=var2238, $r16=var1036, org.hibernate.HibernateException=var485, $r27=var1688, $r26=var1782, $r20=var3922, $r19=var2940, $r21=var1575, $r22=var3816, $r23=var1133, $r28=var564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r1 := @parameter0: java.lang.Class;	r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel;	r6 := @parameter2: org.hibernate.mapping.PersistentClass;	$r2 = <org.hibernate.tuple.entity.EntityTuplizerFactory: java.lang.Class[] ENTITY_TUP_CTOR_SIG>;	r3 = specialinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.lang.reflect.Constructor getProperConstructor(java.lang.Class,java.lang.Class[])>(r1, $r2);	$z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $r4 = newarray (java.lang.Object)[2];	$r16 := @caughtexception;	$r27 = new org.hibernate.HibernateException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate default tuplizer [");	$r19 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r16);	$r28 = (java.lang.Throwable) $r27;	throw $r28
;block_num 2