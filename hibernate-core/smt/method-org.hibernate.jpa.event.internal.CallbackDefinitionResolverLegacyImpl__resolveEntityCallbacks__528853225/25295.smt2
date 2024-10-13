(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var827 0)
(declare-sort var2617 0)
(declare-sort var488 0)
(declare-sort var1206 0)
(declare-sort var2461 0)
(declare-sort var3294 0)
(declare-sort var1666 0)
(declare-sort var993 0)
(declare-sort var2720 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var488-init () var488)
(declare-fun <init>/-325640736 (var488) void)
(declare-fun var827_getDeclaredMethods/-296942037 (var827) var2461)
(declare-fun var2461_iterator/-912451715 (var2461) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3294)
(declare-fun cast-from-var3294-to-var1666 (var3294) var1666)
(declare-fun getCallbackAnnotation/942129951 (var2617) ClassObject)
(declare-fun var1666_isAnnotationPresent/-395497752 (var1666 ClassObject) Bool)
(declare-fun var1117_toMethod/-129196560 (var1117 var1666) var993)
(declare-fun getName/1227988463 (var993) String)
(declare-fun var2461_contains/-441121415 (var2461 var3294) Bool)
(declare-fun cast-from-var488-to-var2461 (var488) var2461)
(declare-fun cast-from-String-to-var3294 (String) var3294)
(declare-fun var2720-init () var2720)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var827_getName/2109553381 (var827) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1483537917 (var2720 String) void)
(declare-fun cast-from-var2720-to-var3820 (var2720) var3820)
(declare-const null-var1117 var1117)
(declare-const null-var827 var827)
(declare-const null-var2617 var2617)
(declare-const null-var1206 var1206)
(declare-const var1532 var1117) ; Statement: r7 := @parameter0: org.hibernate.annotations.common.reflection.ReflectionManager 
(assert (not (= var1532 null-var1117)))
(declare-const var3879 var827) ; Statement: r3 := @parameter1: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var3879 null-var827)))
(declare-const var1840 var2617) ; Statement: r10 := @parameter2: org.hibernate.jpa.event.spi.CallbackType 
(assert (not (= var1840 null-var2617)))
(define-const var2400 var488 var488-init) ; Statement: $r93 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2400)) ; Statement: specialinvoke $r93.<java.util.ArrayList: void <init>()>() 

(declare-const var2400!1 var488)
(define-const var2043 var488 var488-init) ; Statement: $r94 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2043)) ; Statement: specialinvoke $r94.<java.util.ArrayList: void <init>()>() 

(declare-const var2043!1 var488)
(define-const var3276 var488 var488-init) ; Statement: $r95 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3276)) ; Statement: specialinvoke $r95.<java.util.ArrayList: void <init>()>() 

(declare-const var3276!1 var488)
(define-const var2764 var827 var3879) ; Statement: r76 = r3 
(define-const var1994 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var2921 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(assert true) ; Non Conditional
(define-const var1538 var1206 null-var1206) ; Statement: r77 = null 
(define-const var1718 var2461 (var827_getDeclaredMethods/-296942037 var2764)) ; Statement: $r4 = interfaceinvoke r76.<org.hibernate.annotations.common.reflection.XClass: java.util.List getDeclaredMethods()>() 
(define-const var1883 Iterator (var2461_iterator/-912451715 var1718)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3105 Bool (Iterator_hasNext/-1669924200 var1883)) ; Statement: $z11 = interfaceinvoke $r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z11 == 0 goto (branch) 
(assert (not (= (ite var3105 1 0) 0))) ; Negate: Cond: $z11 == 0  
(define-const var1887 var3294 (Iterator_next/-1124697587 var1883)) ; Statement: $r48 = interfaceinvoke $r5.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1883!1 Iterator)
(define-const var197 var1666 (cast-from-var3294-to-var1666 var1887)) ; Statement: r78 = (org.hibernate.annotations.common.reflection.XMethod) $r48 
(assert true)
(define-const var3457 ClassObject (getCallbackAnnotation/942129951 var1840)) ; Statement: $r49 = virtualinvoke r10.<org.hibernate.jpa.event.spi.CallbackType: java.lang.Class getCallbackAnnotation()>() 
(define-const var3682 Bool (var1666_isAnnotationPresent/-395497752 var197 var3457)) ; Statement: $z6 = interfaceinvoke r78.<org.hibernate.annotations.common.reflection.XMethod: boolean isAnnotationPresent(java.lang.Class)>($r49) 
 ; Statement: if $z6 == 0 goto (branch) 
(assert (not (= (ite var3682 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var3181 var993 (var1117_toMethod/-129196560 var1532 var197)) ; Statement: r79 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.reflect.Method toMethod(org.hibernate.annotations.common.reflection.XMethod)>(r78) 
(assert true)
(define-const var2731 String (getName/1227988463 var3181)) ; Statement: r80 = virtualinvoke r79.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1694 Bool (var2461_contains/-441121415 (cast-from-var488-to-var2461 var2043!1) (cast-from-String-to-var3294 var2731))) ; Statement: $z7 = interfaceinvoke $r94.<java.util.List: boolean contains(java.lang.Object)>(r80) 
 ; Statement: if $z7 != 0 goto (branch) 
(assert (not (not (= (ite var1694 1 0) 0)))) ; Negate: Cond: $z7 != 0  
 ; Statement: if r77 != null goto $r100 = new javax.persistence.PersistenceException 
(assert (not (= var1538 null-var1206))) ; Cond: r77 != null 
(define-const var957 var2720 var2720-init) ; Statement: $r100 = new javax.persistence.PersistenceException 
(define-const var138 String String-init) ; Statement: $r99 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var138)) ; Statement: specialinvoke $r99.<java.lang.StringBuilder: void <init>()>() 
(declare-const var138!1 String)
(assert (= var138!1 ""))
(assert true)
(define-const var19 String (append/672562846 var138!1 "You can only annotate one callback method with ")) ; Statement: $r54 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You can only annotate one callback method with ") 
(declare-const var138!2 String)
(assert (= var138!2 (str.++ var138!1 "You can only annotate one callback method with ")))
(assert true)
(define-const var2304 ClassObject (getCallbackAnnotation/942129951 var1840)) ; Statement: $r52 = virtualinvoke r10.<org.hibernate.jpa.event.spi.CallbackType: java.lang.Class getCallbackAnnotation()>() 
(assert true)
(define-const var113 String (getName/-1958580599 var2304)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3392 String (append/672562846 var19 var113)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var19!1 String)
(assert (= var19!1 (str.++ var19 var113)))
(assert true)
(define-const var2015 String (append/672562846 var3392 " in bean class: ")) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in bean class: ") 
(declare-const var3392!1 String)
(assert (= var3392!1 (str.++ var3392 " in bean class: ")))
(define-const var1265 String (var827_getName/2109553381 var3879)) ; Statement: $r56 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>() 
(assert true)
(define-const var2005 String (append/672562846 var2015 var1265)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 var1265)))
(assert true)
(define-const var1852 String (toString/-2075883882 var2005)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1483537917 var957 var1852)) ; Statement: specialinvoke $r100.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r59) 

(declare-const var957!1 var2720)
(declare-const var1852!1 String)
(define-const var1473 var3820 (cast-from-var2720-to-var3820 var957!1)) ; Statement: $r107 = (java.lang.Throwable) $r100 
 ; Statement: throw $r107 
(check-sat)
(get-model)
(get-unsat-core)
; {var488-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var827_getDeclaredMethods/-296942037=([org.hibernate.annotations.common.reflection.XClass], java.util.List), var2461_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3294-to-var1666=([java.lang.Object], org.hibernate.annotations.common.reflection.XMethod), getCallbackAnnotation/942129951=([org.hibernate.jpa.event.spi.CallbackType], java.lang.Class), var1666_isAnnotationPresent/-395497752=([org.hibernate.annotations.common.reflection.XMethod, java.lang.Class], boolean), var1117_toMethod/-129196560=([org.hibernate.annotations.common.reflection.ReflectionManager, org.hibernate.annotations.common.reflection.XMethod], java.lang.reflect.Method), getName/1227988463=([java.lang.reflect.Method], java.lang.String), var2461_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var488-to-var2461=([java.util.ArrayList], java.util.List), cast-from-String-to-var3294=([java.lang.String], java.lang.Object), var2720-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), var827_getName/2109553381=([org.hibernate.annotations.common.reflection.XClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1483537917=([javax.persistence.PersistenceException, java.lang.String], void), cast-from-var2720-to-var3820=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var1117=org.hibernate.annotations.common.reflection.ReflectionManager, var1532=r7, var827=org.hibernate.annotations.common.reflection.XClass, var3879=r3, var2617=org.hibernate.jpa.event.spi.CallbackType, var1840=r10, var488=java.util.ArrayList, var2400=$r93, var2043=$r94, var3276=$r95, var2764=r76, var1994=z9, var2921=z10, var1206=org.hibernate.jpa.event.internal.EntityCallback$Definition, var1538=r77, var2461=java.util.List, var1718=$r4, var1883=$r5, var3105=$z11, var3294=java.lang.Object, var1887=$r48, var1666=org.hibernate.annotations.common.reflection.XMethod, var197=r78, var3457=$r49, var3682=$z6, var993=java.lang.reflect.Method, var3181=r79, var2731=r80, var1694=$z7, var2720=javax.persistence.PersistenceException, var957=$r100, var138=$r99, var19=$r54, var2304=$r52, var113=$r53, var3392=$r55, var2015=$r57, var1265=$r56, var2005=$r58, var1852=$r59, var3820=java.lang.Throwable, var1473=$r107}
; {org.hibernate.annotations.common.reflection.ReflectionManager=var1117, r7=var1532, org.hibernate.annotations.common.reflection.XClass=var827, r3=var3879, org.hibernate.jpa.event.spi.CallbackType=var2617, r10=var1840, java.util.ArrayList=var488, $r93=var2400, $r94=var2043, $r95=var3276, r76=var2764, z9=var1994, z10=var2921, org.hibernate.jpa.event.internal.EntityCallback$Definition=var1206, r77=var1538, java.util.List=var2461, $r4=var1718, $r5=var1883, $z11=var3105, java.lang.Object=var3294, $r48=var1887, org.hibernate.annotations.common.reflection.XMethod=var1666, r78=var197, $r49=var3457, $z6=var3682, java.lang.reflect.Method=var993, r79=var3181, r80=var2731, $z7=var1694, javax.persistence.PersistenceException=var2720, $r100=var957, $r99=var138, $r54=var19, $r52=var2304, $r53=var113, $r55=var3392, $r57=var2015, $r56=var1265, $r58=var2005, $r59=var1852, java.lang.Throwable=var3820, $r107=var1473}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.hibernate.annotations.common.reflection.ReflectionManager;	r3 := @parameter1: org.hibernate.annotations.common.reflection.XClass;	r10 := @parameter2: org.hibernate.jpa.event.spi.CallbackType;	$r93 = new java.util.ArrayList;	specialinvoke $r93.<java.util.ArrayList: void <init>()>();	$r94 = new java.util.ArrayList;	specialinvoke $r94.<java.util.ArrayList: void <init>()>();	$r95 = new java.util.ArrayList;	specialinvoke $r95.<java.util.ArrayList: void <init>()>();	r76 = r3;	z9 = 0;	z10 = 0;	r77 = null;	$r4 = interfaceinvoke r76.<org.hibernate.annotations.common.reflection.XClass: java.util.List getDeclaredMethods()>();	$r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z11 = interfaceinvoke $r5.<java.util.Iterator: boolean hasNext()>();	if $z11 == 0 goto (branch);	$r48 = interfaceinvoke $r5.<java.util.Iterator: java.lang.Object next()>();	r78 = (org.hibernate.annotations.common.reflection.XMethod) $r48;	$r49 = virtualinvoke r10.<org.hibernate.jpa.event.spi.CallbackType: java.lang.Class getCallbackAnnotation()>();	$z6 = interfaceinvoke r78.<org.hibernate.annotations.common.reflection.XMethod: boolean isAnnotationPresent(java.lang.Class)>($r49);	if $z6 == 0 goto (branch);	r79 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.ReflectionManager: java.lang.reflect.Method toMethod(org.hibernate.annotations.common.reflection.XMethod)>(r78);	r80 = virtualinvoke r79.<java.lang.reflect.Method: java.lang.String getName()>();	$z7 = interfaceinvoke $r94.<java.util.List: boolean contains(java.lang.Object)>(r80);	if $z7 != 0 goto (branch);	if r77 != null goto $r100 = new javax.persistence.PersistenceException;	$r100 = new javax.persistence.PersistenceException;	$r99 = new java.lang.StringBuilder;	specialinvoke $r99.<java.lang.StringBuilder: void <init>()>();	$r54 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You can only annotate one callback method with ");	$r52 = virtualinvoke r10.<org.hibernate.jpa.event.spi.CallbackType: java.lang.Class getCallbackAnnotation()>();	$r53 = virtualinvoke $r52.<java.lang.Class: java.lang.String getName()>();	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in bean class: ");	$r56 = interfaceinvoke r3.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>();	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r100.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r59);	$r107 = (java.lang.Throwable) $r100;	throw $r107
;block_num 7