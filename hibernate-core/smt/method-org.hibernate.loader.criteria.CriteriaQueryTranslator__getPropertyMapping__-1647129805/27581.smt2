(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2409 0)
(declare-sort var2362 0)
(declare-sort var3880 0)
(declare-sort var3562 0)
(declare-sort var796 0)
(declare-sort var825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameCriteriaInfoMap/333213257 (var2409) var3880)
(declare-fun var3880_get/1088891777 (var3880 var3562) var3562)
(declare-fun cast-from-String-to-var3562 (String) var3562)
(declare-fun cast-from-var3562-to-var796 (var3562) var796)
(declare-fun var796_getPropertyMapping/-608053931 (var796) var825)
(declare-const null-var2409 var2409)
(declare-const null-String String)
(declare-const null-var796 var796)
(declare-const var1416 var2409) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var1416 null-var2409)))
(declare-const var3423 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3423 null-String)))
(define-const var2730 var3880 (nameCriteriaInfoMap/333213257 var1416)) ; Statement: $r2 = r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.util.Map nameCriteriaInfoMap> 
(define-const var2817 var3562 (var3880_get/1088891777 var2730 (cast-from-String-to-var3562 var3423))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1413 var796 (cast-from-var3562-to-var796 var2817)) ; Statement: r4 = (org.hibernate.loader.criteria.CriteriaInfoProvider) $r3 
 ; Statement: if r4 != null goto $r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(assert (not (= var1413 null-var796))) ; Cond: r4 != null 
(define-const var978 var825 (var796_getPropertyMapping/-608053931 var1413)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nameCriteriaInfoMap/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], java.util.Map), var3880_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3562=([java.lang.String], java.lang.Object), cast-from-var3562-to-var796=([java.lang.Object], org.hibernate.loader.criteria.CriteriaInfoProvider), var796_getPropertyMapping/-608053931=([org.hibernate.loader.criteria.CriteriaInfoProvider], org.hibernate.persister.entity.PropertyMapping)}
; {var2409=org.hibernate.loader.criteria.CriteriaQueryTranslator, var1416=r0, var3423=r1, var2362=null_type, var3880=java.util.Map, var2730=$r2, var3562=java.lang.Object, var2817=$r3, var796=org.hibernate.loader.criteria.CriteriaInfoProvider, var1413=r4, var825=org.hibernate.persister.entity.PropertyMapping, var978=$r5}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var2409, r0=var1416, r1=var3423, null_type=var2362, java.util.Map=var3880, $r2=var2730, java.lang.Object=var3562, $r3=var2817, org.hibernate.loader.criteria.CriteriaInfoProvider=var796, r4=var1413, org.hibernate.persister.entity.PropertyMapping=var825, $r5=var978}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.util.Map nameCriteriaInfoMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.loader.criteria.CriteriaInfoProvider) $r3;	if r4 != null goto $r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	$r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	return $r5
;block_num 2