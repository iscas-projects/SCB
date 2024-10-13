(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1601 0)
(declare-sort var1135 0)
(declare-sort var3976 0)
(declare-sort var585 0)
(declare-sort var3352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beanClass/1787315416 (var1601) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1135) Bool)
(declare-fun var585-init () var585)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1135) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1104954410 (var585 String) void)
(declare-fun cast-from-var585-to-var3352 (var585) var3352)
(declare-const null-var1601 var1601)
(declare-const null-var1135 var1135)
(declare-const null-var3976 var3976)
(declare-const var1139 var1601) ; Statement: r0 := @this: org.hibernate.internal.util.beans.BeanInfoHelper 
(assert (not (= var1139 null-var1601)))
(declare-const var3935 var1135) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3935 null-var1135)))
(declare-const var1660 var3976) ; Statement: r3 := @parameter1: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate 
(assert (not (= var1660 null-var3976)))
(define-const var2007 ClassObject (beanClass/1787315416 var1139)) ; Statement: $r2 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(assert true)
(define-const var754 Bool (isInstance/451912363 var2007 var3935)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(assert (not (not (= (ite var754 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var38 var585 var585-init) ; Statement: $r17 = new org.hibernate.internal.util.beans.BeanIntrospectionException 
(define-const var3703 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3703)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3703!1 String)
(assert (= var3703!1 ""))
(assert true)
(define-const var3040 String (append/672562846 var3703!1 "Bean [")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bean [") 
(declare-const var3703!2 String)
(assert (= var3703!2 (str.++ var3703!1 "Bean [")))
(assert true)
(define-const var2097 String (append/-1031950772 var3040 var3935)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3040!1 String)
(assert (str.prefixof var3040 var3040!1))
(assert true)
(define-const var3221 String (append/672562846 var2097 "] was not of declared bean type [")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was not of declared bean type [") 
(declare-const var2097!1 String)
(assert (= var2097!1 (str.++ var2097 "] was not of declared bean type [")))
(define-const var2185 ClassObject (beanClass/1787315416 var1139)) ; Statement: $r10 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass> 
(assert true)
(define-const var799 String (getName/-1958580599 var2185)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2015 String (append/672562846 var3221 var799)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3221!1 String)
(assert (= var3221!1 (str.++ var3221 var799)))
(assert true)
(define-const var1820 String (append/672562846 var2015 "]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 "]")))
(assert true)
(define-const var1955 String (toString/-2075883882 var1820)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1104954410 var38 var1955)) ; Statement: specialinvoke $r17.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String)>($r15) 

(declare-const var38!1 var585)
(declare-const var1955!1 String)
(define-const var2144 var3352 (cast-from-var585-to-var3352 var38!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {beanClass/1787315416=([org.hibernate.internal.util.beans.BeanInfoHelper], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var585-init=([], org.hibernate.internal.util.beans.BeanIntrospectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1104954410=([org.hibernate.internal.util.beans.BeanIntrospectionException, java.lang.String], void), cast-from-var585-to-var3352=([org.hibernate.internal.util.beans.BeanIntrospectionException], java.lang.Throwable)}
; {var1601=org.hibernate.internal.util.beans.BeanInfoHelper, var1139=r0, var1135=java.lang.Object, var3935=r1, var3976=org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate, var1660=r3, var2007=$r2, var754=$z0, var585=org.hibernate.internal.util.beans.BeanIntrospectionException, var38=$r17, var3703=$r16, var3040=$r8, var2097=$r9, var3221=$r12, var2185=$r10, var799=$r11, var2015=$r13, var1820=$r14, var1955=$r15, var3352=java.lang.Throwable, var2144=$r18}
; {org.hibernate.internal.util.beans.BeanInfoHelper=var1601, r0=var1139, java.lang.Object=var1135, r1=var3935, org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate=var3976, r3=var1660, $r2=var2007, $z0=var754, org.hibernate.internal.util.beans.BeanIntrospectionException=var585, $r17=var38, $r16=var3703, $r8=var3040, $r9=var2097, $r12=var3221, $r10=var2185, $r11=var799, $r13=var2015, $r14=var1820, $r15=var1955, java.lang.Throwable=var3352, $r18=var2144}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.util.beans.BeanInfoHelper;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: org.hibernate.internal.util.beans.BeanInfoHelper$BeanInfoDelegate;	$r2 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto $r5 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$r17 = new org.hibernate.internal.util.beans.BeanIntrospectionException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bean [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was not of declared bean type [");	$r10 = r0.<org.hibernate.internal.util.beans.BeanInfoHelper: java.lang.Class beanClass>;	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.internal.util.beans.BeanIntrospectionException: void <init>(java.lang.String)>($r15);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2