(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var1665 0)
(declare-sort var1978 0)
(declare-sort var2365 0)
(declare-sort var444 0)
(declare-sort var3310 0)
(declare-sort var565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun filters/-1828393569 (var845) var1978)
(declare-fun var1978_get/1088891777 (var1978 var2365) var2365)
(declare-fun cast-from-String-to-var2365 (String) var2365)
(declare-fun cast-from-var2365-to-var444 (var2365) var444)
(declare-fun var3310-init () var3310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3310 String) void)
(declare-fun cast-from-var3310-to-var565 (var3310) var565)
(declare-const null-var845 var845)
(declare-const null-String String)
(declare-const null-var444 var444)
(declare-const var3189 var845) ; Statement: r0 := @this: org.hibernate.internal.SessionFactoryImpl 
(assert (not (= var3189 null-var845)))
(declare-const var3487 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3487 null-String)))
(define-const var61 var1978 (filters/-1828393569 var3189)) ; Statement: $r2 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map filters> 
(define-const var3347 var2365 (var1978_get/1088891777 var61 (cast-from-String-to-var2365 var3487))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2516 var444 (cast-from-var2365-to-var444 var3347)) ; Statement: r4 = (org.hibernate.engine.spi.FilterDefinition) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2516 null-var444)))) ; Negate: Cond: r4 != null  
(define-const var763 var3310 var3310-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var3601 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3601)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3601!1 String)
(assert (= var3601!1 ""))
(assert true)
(define-const var2851 String (append/672562846 var3601!1 "No such filter configured [")) ; Statement: $r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such filter configured [") 
(declare-const var3601!2 String)
(assert (= var3601!2 (str.++ var3601!1 "No such filter configured [")))
(assert true)
(define-const var1579 String (append/672562846 var2851 var3487)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2851!1 String)
(assert (= var2851!1 (str.++ var2851 var3487)))
(assert true)
(define-const var3374 String (append/672562846 var1579 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 "]")))
(assert true)
(define-const var3513 String (toString/-2075883882 var3374)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var763 var3513)) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var763!1 var3310)
(declare-const var3513!1 String)
(define-const var3817 var565 (cast-from-var3310-to-var565 var763!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {filters/-1828393569=([org.hibernate.internal.SessionFactoryImpl], java.util.Map), var1978_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2365=([java.lang.String], java.lang.Object), cast-from-var2365-to-var444=([java.lang.Object], org.hibernate.engine.spi.FilterDefinition), var3310-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3310-to-var565=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var845=org.hibernate.internal.SessionFactoryImpl, var3189=r0, var3487=r1, var1665=null_type, var1978=java.util.Map, var61=$r2, var2365=java.lang.Object, var3347=$r3, var444=org.hibernate.engine.spi.FilterDefinition, var2516=r4, var3310=org.hibernate.HibernateException, var763=$r12, var3601=$r11, var2851=$r7, var1579=$r8, var3374=$r9, var3513=$r10, var565=java.lang.Throwable, var3817=$r13}
; {org.hibernate.internal.SessionFactoryImpl=var845, r0=var3189, r1=var3487, null_type=var1665, java.util.Map=var1978, $r2=var61, java.lang.Object=var2365, $r3=var3347, org.hibernate.engine.spi.FilterDefinition=var444, r4=var2516, org.hibernate.HibernateException=var3310, $r12=var763, $r11=var3601, $r7=var2851, $r8=var1579, $r9=var3374, $r10=var3513, java.lang.Throwable=var565, $r13=var3817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.SessionFactoryImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map filters>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.engine.spi.FilterDefinition) $r3;	if r4 != null goto return r4;	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No such filter configured [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2