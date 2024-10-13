(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1215 0)
(declare-sort var2234 0)
(declare-sort var883 0)
(declare-sort var1958 0)
(declare-sort var3606 0)
(declare-sort var3317 0)
(declare-sort var2107 0)
(declare-sort var49 0)
(declare-sort var1850 0)
(declare-sort var629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2234_getDisposition/1424832947 (var2234) var1958)
(declare-fun ordinal/-291641772 (var3606) Int)
(declare-fun cast-from-var1958-to-var3606 (var1958) var3606)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2234_getReturns/594431953 (var2234) var3317)
(declare-fun var3317_get/-1216255739 (var3317 Int) var2107)
(declare-fun cast-from-var2107-to-var49 (var2107) var49)
(declare-fun var629_getEntityPersister/-872151685 (var629) var1850)
(declare-fun cast-from-var49-to-var629 (var49) var629)
(declare-fun var1850_getEntityName/-1914780628 (var1850) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1215 var1215)
(declare-const null-var2234 var2234)
(declare-const var883-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition (Array Int Int))
(declare-const var3324 var1215) ; Statement: r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter 
(assert (not (= var3324 null-var1215)))
(declare-const var344 var2234) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan 
(assert (not (= var344 null-var2234)))
(define-const var3533 (Array Int Int) var883-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition) ; Statement: $r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition> 
(define-const var860 var1958 (var2234_getDisposition/1424832947 var344)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>() 
(assert true)
(define-const var1976 Int (ordinal/-291641772 (cast-from-var1958-to-var3606 var860))) ; Statement: $i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>() 
(define-const var1966 Int (select var3533 var1976)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; } 
(assert (and (= var1966 2) (and (not (= var1966 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2111 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2111)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2111!1 String)
(assert (= var2111!1 ""))
(assert true)
(define-const var3087 String (append/672562846 var2111!1 "entity=")) ; Statement: $r18 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity=") 
(declare-const var2111!2 String)
(assert (= var2111!2 (str.++ var2111!1 "entity=")))
(define-const var3964 var3317 (var2234_getReturns/594431953 var344)) ; Statement: $r13 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>() 
(define-const var869 var2107 (var3317_get/-1216255739 var3964 0)) ; Statement: $r14 = interfaceinvoke $r13.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1659 var49 (cast-from-var2107-to-var49 var869)) ; Statement: $r15 = (org.hibernate.loader.plan.spi.EntityReturn) $r14 
(define-const var1541 var1850 (var629_getEntityPersister/-872151685 (cast-from-var49-to-var629 var1659))) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var623 String (var1850_getEntityName/-1914780628 var1541)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var3337 String (append/672562846 var3087 var623)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3087!1 String)
(assert (= var3087!1 (str.++ var3087 var623)))
(assert true)
(define-const var1869 String (toString/-2075883882 var3337)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2234_getDisposition/1424832947=([org.hibernate.loader.plan.spi.LoadPlan], org.hibernate.loader.plan.spi.LoadPlan$Disposition), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1958-to-var3606=([org.hibernate.loader.plan.spi.LoadPlan$Disposition], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2234_getReturns/594431953=([org.hibernate.loader.plan.spi.LoadPlan], java.util.List), var3317_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2107-to-var49=([java.lang.Object], org.hibernate.loader.plan.spi.EntityReturn), var629_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), cast-from-var49-to-var629=([org.hibernate.loader.plan.spi.EntityReturn], org.hibernate.loader.plan.spi.EntityReference), var1850_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1215=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, var3324=r21, var2234=org.hibernate.loader.plan.spi.LoadPlan, var344=r0, var883=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1, var3533=$r1, var1958=org.hibernate.loader.plan.spi.LoadPlan$Disposition, var860=$r2, var3606=java.lang.Enum, var1976=$i0, var1966=$i1, var2111=$r12, var3087=$r18, var3317=java.util.List, var3964=$r13, var2107=java.lang.Object, var869=$r14, var49=org.hibernate.loader.plan.spi.EntityReturn, var1659=$r15, var1850=org.hibernate.persister.entity.EntityPersister, var629=org.hibernate.loader.plan.spi.EntityReference, var1541=$r16, var623=$r17, var3337=$r19, var1869=$r20}
; {org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter=var1215, r21=var3324, org.hibernate.loader.plan.spi.LoadPlan=var2234, r0=var344, org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1=var883, $r1=var3533, org.hibernate.loader.plan.spi.LoadPlan$Disposition=var1958, $r2=var860, java.lang.Enum=var3606, $i0=var1976, $i1=var1966, $r12=var2111, $r18=var3087, java.util.List=var3317, $r13=var3964, java.lang.Object=var2107, $r14=var869, org.hibernate.loader.plan.spi.EntityReturn=var49, $r15=var1659, org.hibernate.persister.entity.EntityPersister=var1850, org.hibernate.loader.plan.spi.EntityReference=var629, $r16=var1541, $r17=var623, $r19=var3337, $r20=var1869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan;	$r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition>;	$r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>();	$i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; };	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity=");	$r13 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>();	$r14 = interfaceinvoke $r13.<java.util.List: java.lang.Object get(int)>(0);	$r15 = (org.hibernate.loader.plan.spi.EntityReturn) $r14;	$r16 = interfaceinvoke $r15.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r17 = interfaceinvoke $r16.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 2