(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort var2558 0)
(declare-sort var1000 0)
(declare-sort var2852 0)
(declare-sort var2115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun visitedAssociationKeys/1556216042 (var2248) var1000)
(declare-fun var1000_add/-1142548109 (var1000 var2852) Bool)
(declare-fun cast-from-var2558-to-var2852 (var2558) var2852)
(declare-fun strategy/1556216042 (var2248) var2115)
(declare-fun var2115_associationKeyRegistered/-1775319849 (var2115 var2558) void)
(declare-const null-var2248 var2248)
(declare-const null-var2558 var2558)
(declare-const var3039 var2248) ; Statement: r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker 
(assert (not (= var3039 null-var2248)))
(declare-const var226 var2558) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationKey 
(assert (not (= var226 null-var2558)))
(define-const var2585 var1000 (visitedAssociationKeys/1556216042 var3039)) ; Statement: $r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: java.util.Set visitedAssociationKeys> 
(define-const var3471 Bool (var1000_add/-1142548109 var2585 (cast-from-var2558-to-var2852 var226))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy> 
(assert (not (= (ite var3471 1 0) 0))) ; Cond: $z0 != 0 
(define-const var523 var2115 (strategy/1556216042 var3039)) ; Statement: $r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy> 
;(assert (var2115_associationKeyRegistered/-1775319849 var523 var226)) ; Statement: interfaceinvoke $r3.<org.hibernate.persister.walking.spi.AssociationVisitationStrategy: void associationKeyRegistered(org.hibernate.persister.walking.spi.AssociationKey)>(r1) 

(declare-const var523!1 var2115)
(declare-const var226!1 var2558)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {visitedAssociationKeys/1556216042=([org.hibernate.persister.walking.spi.MetamodelGraphWalker], java.util.Set), var1000_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-var2558-to-var2852=([org.hibernate.persister.walking.spi.AssociationKey], java.lang.Object), strategy/1556216042=([org.hibernate.persister.walking.spi.MetamodelGraphWalker], org.hibernate.persister.walking.spi.AssociationVisitationStrategy), var2115_associationKeyRegistered/-1775319849=([org.hibernate.persister.walking.spi.AssociationVisitationStrategy, org.hibernate.persister.walking.spi.AssociationKey], void)}
; {var2248=org.hibernate.persister.walking.spi.MetamodelGraphWalker, var3039=r0, var2558=org.hibernate.persister.walking.spi.AssociationKey, var226=r1, var1000=java.util.Set, var2585=$r2, var2852=java.lang.Object, var3471=$z0, var2115=org.hibernate.persister.walking.spi.AssociationVisitationStrategy, var523=$r3}
; {org.hibernate.persister.walking.spi.MetamodelGraphWalker=var2248, r0=var3039, org.hibernate.persister.walking.spi.AssociationKey=var2558, r1=var226, java.util.Set=var1000, $r2=var2585, java.lang.Object=var2852, $z0=var3471, org.hibernate.persister.walking.spi.AssociationVisitationStrategy=var2115, $r3=var523}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker;	r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationKey;	$r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: java.util.Set visitedAssociationKeys>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy>;	$r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy>;	interfaceinvoke $r3.<org.hibernate.persister.walking.spi.AssociationVisitationStrategy: void associationKeyRegistered(org.hibernate.persister.walking.spi.AssociationKey)>(r1);	return
;block_num 2