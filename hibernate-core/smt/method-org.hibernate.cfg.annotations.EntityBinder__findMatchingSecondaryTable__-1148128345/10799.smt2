(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var3202 0)
(declare-sort var1767 0)
(declare-sort var2288 0)
(declare-sort var641 0)
(declare-sort var3580 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3580!class ClassObject)
(declare-const var2253!class ClassObject)
(declare-fun getTable/-551411557 (var3202) var1767)
(declare-fun getQuotedName/-290606595 (var1767) String)
(declare-fun annotatedClass/-1293733177 (var3467) var2288)
(declare-fun var2288_getAnnotation/549133788 (var2288 ClassObject) var641)
(declare-fun cast-from-var641-to-var3580 (var641) var3580)
(declare-fun cast-from-var641-to-var2253 (var641) var2253)
(declare-const null-var3467 var3467)
(declare-const null-var3202 var3202)
(declare-const null-var3580 var3580)
(declare-const null-var2253 var2253)
(declare-const var3749 var3467) ; Statement: r3 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var3749 null-var3467)))
(declare-const var764 var3202) ; Statement: r0 := @parameter0: org.hibernate.mapping.Join 
(assert (not (= var764 null-var3202)))
(assert true)
(define-const var669 var1767 (getTable/-551411557 var764)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Join: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var1079 String (getQuotedName/-290606595 var669)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getQuotedName()>() 
(define-const var288 var2288 (annotatedClass/-1293733177 var3749)) ; Statement: $r4 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(define-const var2021 var641 (var2288_getAnnotation/549133788 var288 var3580!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTable;") 
(define-const var649 var3580 (cast-from-var641-to-var3580 var2021)) ; Statement: r6 = (javax.persistence.SecondaryTable) $r5 
 ; Statement: if r6 == null goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(assert (= var649 null-var3580)) ; Cond: r6 == null 
(define-const var3551 var2288 (annotatedClass/-1293733177 var3749)) ; Statement: $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(define-const var2161 var641 (var2288_getAnnotation/549133788 var3551 var2253!class)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTables;") 
(define-const var3456 var2253 (cast-from-var641-to-var2253 var2161)) ; Statement: $r13 = (javax.persistence.SecondaryTables) $r8 
 ; Statement: if $r13 == null goto return null 
(assert (= var3456 null-var2253)) ; Cond: $r13 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/-551411557=([org.hibernate.mapping.Join], org.hibernate.mapping.Table), getQuotedName/-290606595=([org.hibernate.mapping.Table], java.lang.String), annotatedClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.annotations.common.reflection.XClass), var2288_getAnnotation/549133788=([org.hibernate.annotations.common.reflection.XClass, java.lang.Class], java.lang.annotation.Annotation), cast-from-var641-to-var3580=([java.lang.annotation.Annotation], javax.persistence.SecondaryTable), cast-from-var641-to-var2253=([java.lang.annotation.Annotation], javax.persistence.SecondaryTables)}
; {var3467=org.hibernate.cfg.annotations.EntityBinder, var3749=r3, var3202=org.hibernate.mapping.Join, var764=r0, var1767=org.hibernate.mapping.Table, var669=$r1, var1079=r2, var2288=org.hibernate.annotations.common.reflection.XClass, var288=$r4, var641=java.lang.annotation.Annotation, var3580=javax.persistence.SecondaryTable, var2021=$r5, var649=r6, var3551=$r7, var2253=javax.persistence.SecondaryTables, var2161=$r8, var3456=$r13}
; {org.hibernate.cfg.annotations.EntityBinder=var3467, r3=var3749, org.hibernate.mapping.Join=var3202, r0=var764, org.hibernate.mapping.Table=var1767, $r1=var669, r2=var1079, org.hibernate.annotations.common.reflection.XClass=var2288, $r4=var288, java.lang.annotation.Annotation=var641, javax.persistence.SecondaryTable=var3580, $r5=var2021, r6=var649, $r7=var3551, javax.persistence.SecondaryTables=var2253, $r8=var2161, $r13=var3456}
;seq 
;cnt {}
;stmts r3 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.mapping.Join;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Join: org.hibernate.mapping.Table getTable()>();	r2 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getQuotedName()>();	$r4 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTable;");	r6 = (javax.persistence.SecondaryTable) $r5;	if r6 == null goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r8 = interfaceinvoke $r7.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTables;");	$r13 = (javax.persistence.SecondaryTables) $r8;	if $r13 == null goto return null;	return null
;block_num 3