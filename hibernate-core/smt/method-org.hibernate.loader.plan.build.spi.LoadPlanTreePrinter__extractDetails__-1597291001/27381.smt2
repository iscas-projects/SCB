(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort var3462 0)
(declare-sort var1309 0)
(declare-sort var2488 0)
(declare-sort var1907 0)
(declare-sort var3144 0)
(declare-sort var2062 0)
(declare-sort var866 0)
(declare-sort var3766 0)
(declare-sort var3200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3462_getDisposition/1424832947 (var3462) var2488)
(declare-fun ordinal/-291641772 (var1907) Int)
(declare-fun cast-from-var2488-to-var1907 (var2488) var1907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3462_getReturns/594431953 (var3462) var3144)
(declare-fun var3144_get/-1216255739 (var3144 Int) var2062)
(declare-fun cast-from-var2062-to-var866 (var2062) var866)
(declare-fun var3200_getCollectionPersister/-1256660357 (var3200) var3766)
(declare-fun cast-from-var866-to-var3200 (var866) var3200)
(declare-fun var3766_getRole/758162468 (var3766) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var717 var717)
(declare-const null-var3462 var3462)
(declare-const var1309-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition (Array Int Int))
(declare-const var3879 var717) ; Statement: r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter 
(assert (not (= var3879 null-var717)))
(declare-const var1398 var3462) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan 
(assert (not (= var1398 null-var3462)))
(define-const var1462 (Array Int Int) var1309-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition) ; Statement: $r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition> 
(define-const var74 var2488 (var3462_getDisposition/1424832947 var1398)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>() 
(assert true)
(define-const var927 Int (ordinal/-291641772 (cast-from-var2488-to-var1907 var74))) ; Statement: $i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>() 
(define-const var2179 Int (select var1462 var927)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; } 
(assert (and (= var2179 3) (and (not (= var2179 2)) (and (not (= var2179 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2975 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2975)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2975!1 String)
(assert (= var2975!1 ""))
(assert true)
(define-const var2079 String (append/672562846 var2975!1 "collection=")) ; Statement: $r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection=") 
(declare-const var2975!2 String)
(assert (= var2975!2 (str.++ var2975!1 "collection=")))
(define-const var2654 var3144 (var3462_getReturns/594431953 var1398)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>() 
(define-const var665 var2062 (var3144_get/-1216255739 var2654 0)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3968 var866 (cast-from-var2062-to-var866 var665)) ; Statement: $r6 = (org.hibernate.loader.plan.spi.CollectionReturn) $r5 
(define-const var45 var3766 (var3200_getCollectionPersister/-1256660357 (cast-from-var866-to-var3200 var3968))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.CollectionReturn: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var3684 String (var3766_getRole/758162468 var45)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
(define-const var796 String (append/672562846 var2079 var3684)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2079!1 String)
(assert (= var2079!1 (str.++ var2079 var3684)))
(assert true)
(define-const var2433 String (toString/-2075883882 var796)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3462_getDisposition/1424832947=([org.hibernate.loader.plan.spi.LoadPlan], org.hibernate.loader.plan.spi.LoadPlan$Disposition), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2488-to-var1907=([org.hibernate.loader.plan.spi.LoadPlan$Disposition], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3462_getReturns/594431953=([org.hibernate.loader.plan.spi.LoadPlan], java.util.List), var3144_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2062-to-var866=([java.lang.Object], org.hibernate.loader.plan.spi.CollectionReturn), var3200_getCollectionPersister/-1256660357=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.persister.collection.CollectionPersister), cast-from-var866-to-var3200=([org.hibernate.loader.plan.spi.CollectionReturn], org.hibernate.loader.plan.spi.CollectionReference), var3766_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var717=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, var3879=r21, var3462=org.hibernate.loader.plan.spi.LoadPlan, var1398=r0, var1309=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1, var1462=$r1, var2488=org.hibernate.loader.plan.spi.LoadPlan$Disposition, var74=$r2, var1907=java.lang.Enum, var927=$i0, var2179=$i1, var2975=$r3, var2079=$r9, var3144=java.util.List, var2654=$r4, var2062=java.lang.Object, var665=$r5, var866=org.hibernate.loader.plan.spi.CollectionReturn, var3968=$r6, var3766=org.hibernate.persister.collection.CollectionPersister, var3200=org.hibernate.loader.plan.spi.CollectionReference, var45=$r7, var3684=$r8, var796=$r10, var2433=$r11}
; {org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter=var717, r21=var3879, org.hibernate.loader.plan.spi.LoadPlan=var3462, r0=var1398, org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1=var1309, $r1=var1462, org.hibernate.loader.plan.spi.LoadPlan$Disposition=var2488, $r2=var74, java.lang.Enum=var1907, $i0=var927, $i1=var2179, $r3=var2975, $r9=var2079, java.util.List=var3144, $r4=var2654, java.lang.Object=var2062, $r5=var665, org.hibernate.loader.plan.spi.CollectionReturn=var866, $r6=var3968, org.hibernate.persister.collection.CollectionPersister=var3766, org.hibernate.loader.plan.spi.CollectionReference=var3200, $r7=var45, $r8=var3684, $r10=var796, $r11=var2433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan;	$r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition>;	$r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>();	$i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; };	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection=");	$r4 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>();	$r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>(0);	$r6 = (org.hibernate.loader.plan.spi.CollectionReturn) $r5;	$r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.CollectionReturn: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r8 = interfaceinvoke $r7.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2