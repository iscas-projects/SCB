(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1080 0)
(declare-sort var598 0)
(declare-sort var1694 0)
(declare-sort var1002 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var598_getDisposition/1424832947 (var598) var1002)
(declare-fun ordinal/-291641772 (var1633) Int)
(declare-fun cast-from-var1002-to-var1633 (var1002) var1633)
(declare-const null-var1080 var1080)
(declare-const null-var598 var598)
(declare-const var1694-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition (Array Int Int))
(declare-const var490 var1080) ; Statement: r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter 
(assert (not (= var490 null-var1080)))
(declare-const var328 var598) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan 
(assert (not (= var328 null-var598)))
(define-const var2886 (Array Int Int) var1694-$SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition) ; Statement: $r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition> 
(define-const var2733 var1002 (var598_getDisposition/1424832947 var328)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>() 
(assert true)
(define-const var283 Int (ordinal/-291641772 (cast-from-var1002-to-var1633 var2733))) ; Statement: $i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>() 
(define-const var131 Int (select var2886 var283)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; } 
(assert (and (not (= var131 3)) (and (not (= var131 2)) (and (not (= var131 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
 ; Statement: return "???" 
(check-sat)
(get-model)
(get-unsat-core)
; {var598_getDisposition/1424832947=([org.hibernate.loader.plan.spi.LoadPlan], org.hibernate.loader.plan.spi.LoadPlan$Disposition), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1002-to-var1633=([org.hibernate.loader.plan.spi.LoadPlan$Disposition], java.lang.Enum)}
; {var1080=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, var490=r21, var598=org.hibernate.loader.plan.spi.LoadPlan, var328=r0, var1694=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1, var2886=$r1, var1002=org.hibernate.loader.plan.spi.LoadPlan$Disposition, var2733=$r2, var1633=java.lang.Enum, var283=$i0, var131=$i1}
; {org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter=var1080, r21=var490, org.hibernate.loader.plan.spi.LoadPlan=var598, r0=var328, org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1=var1694, $r1=var2886, org.hibernate.loader.plan.spi.LoadPlan$Disposition=var1002, $r2=var2733, java.lang.Enum=var1633, $i0=var283, $i1=var131}
;seq 
;cnt {}
;stmts r21 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan;	$r1 = <org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter$1: int[] $SwitchMap$org$hibernate$loader$plan$spi$LoadPlan$Disposition>;	$r2 = interfaceinvoke r0.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.LoadPlan$Disposition getDisposition()>();	$i0 = virtualinvoke $r2.<org.hibernate.loader.plan.spi.LoadPlan$Disposition: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "mixed";     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     default: goto return "???"; };	return "???"
;block_num 2