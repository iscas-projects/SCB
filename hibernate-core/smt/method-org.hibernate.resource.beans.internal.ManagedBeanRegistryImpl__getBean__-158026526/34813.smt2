(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2611 0)
(declare-sort var3141 0)
(declare-sort var1868 0)
(declare-sort var1923 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun registrations/-783782720 (var2611) var1868)
(declare-fun var1868_get/1088891777 (var1868 var1923) var1923)
(declare-fun cast-from-String-to-var1923 (String) var1923)
(declare-fun cast-from-var1923-to-var33 (var1923) var33)
(declare-const null-var2611 var2611)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var33 var33)
(declare-const var123 var2611) ; Statement: r8 := @this: org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl 
(assert (not (= var123 null-var2611)))
(declare-const var2254 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2254 null-String)))
(declare-const var3870 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3870 null-ClassObject)))
(define-const var2329 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2329)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2329!1 String)
(assert (= var2329!1 ""))
(assert true)
(define-const var3909 String (getName/-1958580599 var3870)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2638 String (append/672562846 var2329!1 var3909)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2329!2 String)
(assert (= var2329!2 (str.++ var2329!1 var3909)))
(assert true)
(define-const var2975 String (append/-1166366385 var2638 58)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2638!1 String)
(assert (str.prefixof var2638 var2638!1))
(assert true)
(define-const var965 String (append/672562846 var2975 var2254)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2975!1 String)
(assert (= var2975!1 (str.++ var2975 var2254)))
(assert true)
(define-const var1887 String (toString/-2075883882 var965)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1807 var1868 (registrations/-783782720 var123)) ; Statement: $r9 = r8.<org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl: java.util.Map registrations> 
(define-const var3737 var1923 (var1868_get/1088891777 var1807 (cast-from-String-to-var1923 var1887))) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r7) 
(define-const var3209 var33 (cast-from-var1923-to-var33 var3737)) ; Statement: r11 = (org.hibernate.resource.beans.spi.ManagedBean) $r10 
 ; Statement: if r11 == null goto $r12 = r8.<org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl: org.hibernate.resource.beans.container.spi.BeanContainer beanContainer> 
(assert (not (= var3209 null-var33))) ; Negate: Cond: r11 == null  
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), registrations/-783782720=([org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl], java.util.Map), var1868_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1923=([java.lang.String], java.lang.Object), cast-from-var1923-to-var33=([java.lang.Object], org.hibernate.resource.beans.spi.ManagedBean)}
; {var2611=org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl, var123=r8, var2254=r4, var3141=null_type, var3870=r1, var2329=$r0, var3909=$r2, var2638=$r3, var2975=$r5, var965=$r6, var1887=r7, var1868=java.util.Map, var1807=$r9, var1923=java.lang.Object, var3737=$r10, var33=org.hibernate.resource.beans.spi.ManagedBean, var3209=r11}
; {org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl=var2611, r8=var123, r4=var2254, null_type=var3141, r1=var3870, $r0=var2329, $r2=var3909, $r3=var2638, $r5=var2975, $r6=var965, r7=var1887, java.util.Map=var1868, $r9=var1807, java.lang.Object=var1923, $r10=var3737, org.hibernate.resource.beans.spi.ManagedBean=var33, r11=var3209}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl: java.util.Map registrations>;	$r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r7);	r11 = (org.hibernate.resource.beans.spi.ManagedBean) $r10;	if r11 == null goto $r12 = r8.<org.hibernate.resource.beans.internal.ManagedBeanRegistryImpl: org.hibernate.resource.beans.container.spi.BeanContainer beanContainer>;	return r11
;block_num 2