(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3413 0)
(declare-sort var511 0)
(declare-sort var476 0)
(declare-sort var3205 0)
(declare-sort var1279 0)
(declare-sort var3495 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultReadObject/610298106 (var511) void)
(declare-fun readObject/466248564 (var511) var476)
(declare-fun cast-from-var476-to-String (var476) String)
(declare-fun declaringType/1966305054 (var3413) var3205)
(declare-fun var3205_getJavaType/-585820742 (var3205) ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var1279)
(declare-fun ClassObject_forName/696536127 (String Bool var1279) ClassObject)
(declare-fun var91-init () var91)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var91 String) void)
(declare-const null-var3413 var3413)
(declare-const null-var511 var511)
(declare-const null-var3495 var3495)
(declare-const var1654 var3413) ; Statement: r7 := @this: org.hibernate.metamodel.model.domain.internal.AbstractAttribute 
(assert (not (= var1654 null-var3413)))
(declare-const var2589 var511) ; Statement: r0 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var2589 null-var511)))
(assert true)
;(assert (defaultReadObject/610298106 var2589)) ; Statement: virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>() 

(declare-const var2589!1 var511)
(assert true)
(define-const var505 var476 (readObject/466248564 var2589!1)) ; Statement: $r1 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var151 String (cast-from-var476-to-String var505)) ; Statement: r2 = (java.lang.String) $r1 
(assert true)
(define-const var2236 var476 (readObject/466248564 var2589!1)) ; Statement: $r3 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var487 String (cast-from-var476-to-String var2236)) ; Statement: r4 = (java.lang.String) $r3 
(assert true)
(define-const var3157 var476 (readObject/466248564 var2589!1)) ; Statement: $r5 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var2238 String (cast-from-var476-to-String var3157)) ; Statement: r6 = (java.lang.String) $r5 
(define-const var1891 var3205 (declaringType/1966305054 var1654)) ; Statement: $r8 = r7.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor declaringType> 
(define-const var2877 ClassObject (var3205_getJavaType/-585820742 var1891)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var395 var1279 (getClassLoader/-563698447 var2877)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var1592 ClassObject (ClassObject_forName/696536127 var151 (ite (= 1 0) true false) var395)) ; Statement: r11 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>(r2, 0, $r10) 
(define-const var3673 String "method") ; Statement: $r12 = "method" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1794 var3495) ; Statement: $r14 := @caughtexception 
(assert (not (= var1794 null-var3495)))
(define-const var2624 var91 var91-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(define-const var3144 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3144)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3144!1 String)
(assert (= var3144!1 ""))
(assert true)
(define-const var936 String (append/672562846 var3144!1 "Unable to locate member [")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate member [") 
(declare-const var3144!2 String)
(assert (= var3144!2 (str.++ var3144!1 "Unable to locate member [")))
(assert true)
(define-const var2799 String (append/672562846 var936 var151)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var936!1 String)
(assert (= var936!1 (str.++ var936 var151)))
(assert true)
(define-const var1488 String (append/672562846 var2799 "#")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2799!1 String)
(assert (= var2799!1 (str.++ var2799 "#")))
(assert true)
(define-const var651 String (append/672562846 var1488 var487)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1488!1 String)
(assert (= var1488!1 (str.++ var1488 var487)))
(assert true)
(define-const var839 String (append/672562846 var651 "]")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var651!1 String)
(assert (= var651!1 (str.++ var651 "]")))
(assert true)
(define-const var2158 String (toString/-2075883882 var839)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2624 var2158)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22) 

(declare-const var2624!1 var91)
(declare-const var2158!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultReadObject/610298106=([java.io.ObjectInputStream], void), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var476-to-String=([java.lang.Object], java.lang.String), declaringType/1966305054=([org.hibernate.metamodel.model.domain.internal.AbstractAttribute], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), var3205_getJavaType/-585820742=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], java.lang.Class), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), ClassObject_forName/696536127=([java.lang.String, boolean, java.lang.ClassLoader], java.lang.Class), var91-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3413=org.hibernate.metamodel.model.domain.internal.AbstractAttribute, var1654=r7, var511=java.io.ObjectInputStream, var2589=r0, var476=java.lang.Object, var505=$r1, var151=r2, var2236=$r3, var487=r4, var3157=$r5, var2238=r6, var3205=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var1891=$r8, var2877=$r9, var1279=java.lang.ClassLoader, var395=$r10, var1592=r11, var3673=$r12, var3495=java.lang.Exception, var1794=$r14, var91=java.lang.IllegalStateException, var2624=$r15, var3144=$r16, var936=$r17, var2799=$r18, var1488=$r19, var651=$r20, var839=$r21, var2158=$r22}
; {org.hibernate.metamodel.model.domain.internal.AbstractAttribute=var3413, r7=var1654, java.io.ObjectInputStream=var511, r0=var2589, java.lang.Object=var476, $r1=var505, r2=var151, $r3=var2236, r4=var487, $r5=var3157, r6=var2238, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var3205, $r8=var1891, $r9=var2877, java.lang.ClassLoader=var1279, $r10=var395, r11=var1592, $r12=var3673, java.lang.Exception=var3495, $r14=var1794, java.lang.IllegalStateException=var91, $r15=var2624, $r16=var3144, $r17=var936, $r18=var2799, $r19=var1488, $r20=var651, $r21=var839, $r22=var2158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.metamodel.model.domain.internal.AbstractAttribute;	r0 := @parameter0: java.io.ObjectInputStream;	virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>();	$r1 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>();	r2 = (java.lang.String) $r1;	$r3 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>();	r4 = (java.lang.String) $r3;	$r5 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>();	r6 = (java.lang.String) $r5;	$r8 = r7.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor declaringType>;	$r9 = interfaceinvoke $r8.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.Class getJavaType()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r11 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>(r2, 0, $r10);	$r12 = "method";	$r14 := @caughtexception;	$r15 = new java.lang.IllegalStateException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate member [");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22);	throw $r15
;block_num 2