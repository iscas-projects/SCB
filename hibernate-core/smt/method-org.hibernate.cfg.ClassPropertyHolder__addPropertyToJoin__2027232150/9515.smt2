(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3879 0)
(declare-sort var1194 0)
(declare-sort var1018 0)
(declare-sort var1849 0)
(declare-sort var477 0)
(declare-sort var1900 0)
(declare-sort var661 0)
(declare-sort var2815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inheritanceStatePerClass/72383657 (var3879) var477)
(declare-fun var477_get/1088891777 (var477 var1900) var1900)
(declare-fun cast-from-var1018-to-var1900 (var1018) var1900)
(declare-fun cast-from-var1900-to-var661 (var1900) var661)
(declare-fun var2815-init () var2815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1900) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2815 String) void)
(declare-const null-var3879 var3879)
(declare-const null-var1194 var1194)
(declare-const null-var1018 var1018)
(declare-const null-var1849 var1849)
(declare-const null-var661 var661)
(declare-const var3073 var3879) ; Statement: r3 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var3073 null-var3879)))
(declare-const var1887 var1194) ; Statement: r2 := @parameter0: org.hibernate.mapping.Property 
(assert (not (= var1887 null-var1194)))
(declare-const var187 var1018) ; Statement: r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var187 null-var1018)))
(declare-const var872 var1849) ; Statement: r1 := @parameter2: org.hibernate.mapping.Join 
(assert (not (= var872 null-var1849)))
 ; Statement: if r0 == null goto virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2) 
(assert (not (= var187 null-var1018))) ; Negate: Cond: r0 == null  
(define-const var2136 var477 (inheritanceStatePerClass/72383657 var3073)) ; Statement: $r4 = r3.<org.hibernate.cfg.ClassPropertyHolder: java.util.Map inheritanceStatePerClass> 
(define-const var3911 var1900 (var477_get/1088891777 var2136 (cast-from-var1018-to-var1900 var187))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var1147 var661 (cast-from-var1900-to-var661 var3911)) ; Statement: r6 = (org.hibernate.cfg.InheritanceState) $r5 
 ; Statement: if r6 != null goto $z0 = virtualinvoke r6.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>() 
(assert (not (not (= var1147 null-var661)))) ; Negate: Cond: r6 != null  
(define-const var717 var2815 var2815-init) ; Statement: $r7 = new org.hibernate.AssertionFailure 
(define-const var1659 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var1219 String (append/672562846 var1659!1 "Declaring class is not found in the inheritance state hierarchy: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ") 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 "Declaring class is not found in the inheritance state hierarchy: ")))
(assert true)
(define-const var1270 String (append/-1031950772 var1219 (cast-from-var1018-to-var1900 var187))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1219!1 String)
(assert (str.prefixof var1219 var1219!1))
(assert true)
(define-const var3734 String (toString/-2075883882 var1270)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var717 var3734)) ; Statement: specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r11) 

(declare-const var717!1 var2815)
(declare-const var3734!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {inheritanceStatePerClass/72383657=([org.hibernate.cfg.ClassPropertyHolder], java.util.Map), var477_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1018-to-var1900=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), cast-from-var1900-to-var661=([java.lang.Object], org.hibernate.cfg.InheritanceState), var2815-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var3879=org.hibernate.cfg.ClassPropertyHolder, var3073=r3, var1194=org.hibernate.mapping.Property, var1887=r2, var1018=org.hibernate.annotations.common.reflection.XClass, var187=r0, var1849=org.hibernate.mapping.Join, var872=r1, var477=java.util.Map, var2136=$r4, var1900=java.lang.Object, var3911=$r5, var661=org.hibernate.cfg.InheritanceState, var1147=r6, var2815=org.hibernate.AssertionFailure, var717=$r7, var1659=$r8, var1219=$r9, var1270=$r10, var3734=$r11}
; {org.hibernate.cfg.ClassPropertyHolder=var3879, r3=var3073, org.hibernate.mapping.Property=var1194, r2=var1887, org.hibernate.annotations.common.reflection.XClass=var1018, r0=var187, org.hibernate.mapping.Join=var1849, r1=var872, java.util.Map=var477, $r4=var2136, java.lang.Object=var1900, $r5=var3911, org.hibernate.cfg.InheritanceState=var661, r6=var1147, org.hibernate.AssertionFailure=var2815, $r7=var717, $r8=var1659, $r9=var1219, $r10=var1270, $r11=var3734}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.cfg.ClassPropertyHolder;	r2 := @parameter0: org.hibernate.mapping.Property;	r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass;	r1 := @parameter2: org.hibernate.mapping.Join;	if r0 == null goto virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2);	$r4 = r3.<org.hibernate.cfg.ClassPropertyHolder: java.util.Map inheritanceStatePerClass>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r6 = (org.hibernate.cfg.InheritanceState) $r5;	if r6 != null goto $z0 = virtualinvoke r6.<org.hibernate.cfg.InheritanceState: boolean isEmbeddableSuperclass()>();	$r7 = new org.hibernate.AssertionFailure;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Declaring class is not found in the inheritance state hierarchy: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 3