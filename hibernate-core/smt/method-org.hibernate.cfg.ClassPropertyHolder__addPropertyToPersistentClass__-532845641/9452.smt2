(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2672 0)
(declare-sort var2866 0)
(declare-sort var1961 0)
(declare-sort var3524 0)
(declare-sort var391 0)
(declare-sort var3720 0)
(declare-sort var3610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inheritanceStatePerClass/72383657 (var2672) var3524)
(declare-fun var3524_get/1088891777 (var3524 var391) var391)
(declare-fun cast-from-var1961-to-var391 (var1961) var391)
(declare-fun cast-from-var391-to-var3720 (var391) var3720)
(declare-fun var3610-init () var3610)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var391) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3610 String) void)
(declare-const null-var2672 var2672)
(declare-const null-var2866 var2866)
(declare-const null-var1961 var1961)
(declare-const null-var3720 var3720)
(declare-const var847 var2672) ; Statement: r1 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var847 null-var2672)))
(declare-const var3093 var2866) ; Statement: r2 := @parameter0: org.hibernate.mapping.Property 
(assert (not (= var3093 null-var2866)))
(declare-const var2683 var1961) ; Statement: r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var2683 null-var1961)))
 ; Statement: if r0 == null goto $r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert (not (= var2683 null-var1961))) ; Negate: Cond: r0 == null  
(define-const var1841 var3524 (inheritanceStatePerClass/72383657 var847)) ; Statement: $r4 = r1.<org.hibernate.cfg.ClassPropertyHolder: java.util.Map inheritanceStatePerClass> 
(define-const var2030 var391 (var3524_get/1088891777 var1841 (cast-from-var1961-to-var391 var2683))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var565 var3720 (cast-from-var391-to-var3720 var2030)) ; Statement: r6 = (org.hibernate.cfg.InheritanceState) $r5 
 ; Statement: if r6 != null goto $z0 = virtualinvoke r6.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>() 
(assert (not (not (= var565 null-var3720)))) ; Negate: Cond: r6 != null  
(define-const var3671 var3610 var3610-init) ; Statement: $r9 = new org.hibernate.AssertionFailure 
(define-const var3643 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3643)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3643!1 String)
(assert (= var3643!1 ""))
(assert true)
(define-const var997 String (append/672562846 var3643!1 "Declaring class is not found in the inheritance state hierarchy: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ") 
(declare-const var3643!2 String)
(assert (= var3643!2 (str.++ var3643!1 "Declaring class is not found in the inheritance state hierarchy: ")))
(assert true)
(define-const var2391 String (append/-1031950772 var997 (cast-from-var1961-to-var391 var2683))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var997!1 String)
(assert (str.prefixof var997 var997!1))
(assert true)
(define-const var677 String (toString/-2075883882 var2391)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3671 var677)) ; Statement: specialinvoke $r9.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r13) 

(declare-const var3671!1 var3610)
(declare-const var677!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {inheritanceStatePerClass/72383657=([org.hibernate.cfg.ClassPropertyHolder], java.util.Map), var3524_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1961-to-var391=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), cast-from-var391-to-var3720=([java.lang.Object], org.hibernate.cfg.InheritanceState), var3610-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2672=org.hibernate.cfg.ClassPropertyHolder, var847=r1, var2866=org.hibernate.mapping.Property, var3093=r2, var1961=org.hibernate.annotations.common.reflection.XClass, var2683=r0, var3524=java.util.Map, var1841=$r4, var391=java.lang.Object, var2030=$r5, var3720=org.hibernate.cfg.InheritanceState, var565=r6, var3610=org.hibernate.AssertionFailure, var3671=$r9, var3643=$r10, var997=$r11, var2391=$r12, var677=$r13}
; {org.hibernate.cfg.ClassPropertyHolder=var2672, r1=var847, org.hibernate.mapping.Property=var2866, r2=var3093, org.hibernate.annotations.common.reflection.XClass=var1961, r0=var2683, java.util.Map=var3524, $r4=var1841, java.lang.Object=var391, $r5=var2030, org.hibernate.cfg.InheritanceState=var3720, r6=var565, org.hibernate.AssertionFailure=var3610, $r9=var3671, $r10=var3643, $r11=var997, $r12=var2391, $r13=var677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.ClassPropertyHolder;	r2 := @parameter0: org.hibernate.mapping.Property;	r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass;	if r0 == null goto $r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass>;	$r4 = r1.<org.hibernate.cfg.ClassPropertyHolder: java.util.Map inheritanceStatePerClass>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r6 = (org.hibernate.cfg.InheritanceState) $r5;	if r6 != null goto $z0 = virtualinvoke r6.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>();	$r9 = new org.hibernate.AssertionFailure;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 3