(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3242 0)
(declare-sort var1152 0)
(declare-sort var1993 0)
(declare-sort var226 0)
(declare-sort var3713 0)
(declare-sort var1811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1811!class ClassObject)
(declare-fun getTable/-551411557 (var1152) var1993)
(declare-fun getQuotedName/-290606595 (var1993) String)
(declare-fun annotatedClass/-1293733177 (var3242) var226)
(declare-fun var226_getAnnotation/549133788 (var226 ClassObject) var3713)
(declare-fun cast-from-var3713-to-var1811 (var3713) var1811)
(declare-fun var1811_name/-1991391814 (var1811) String)
(declare-const null-var3242 var3242)
(declare-const null-var1152 var1152)
(declare-const null-var1811 var1811)
(declare-const var2559 var3242) ; Statement: r3 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var2559 null-var3242)))
(declare-const var2179 var1152) ; Statement: r0 := @parameter0: org.hibernate.mapping.Join 
(assert (not (= var2179 null-var1152)))
(assert true)
(define-const var1011 var1993 (getTable/-551411557 var2179)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Join: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var818 String (getQuotedName/-290606595 var1011)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getQuotedName()>() 
(define-const var980 var226 (annotatedClass/-1293733177 var2559)) ; Statement: $r4 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(define-const var2422 var3713 (var226_getAnnotation/549133788 var980 var1811!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTable;") 
(define-const var3837 var1811 (cast-from-var3713-to-var1811 var2422)) ; Statement: r6 = (javax.persistence.SecondaryTable) $r5 
 ; Statement: if r6 == null goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(assert (not (= var3837 null-var1811))) ; Negate: Cond: r6 == null  
(define-const var686 String (var1811_name/-1991391814 var3837)) ; Statement: $r12 = interfaceinvoke r6.<javax.persistence.SecondaryTable: java.lang.String name()>() 
(assert true)
(define-const var1360 Bool (= var818 var686)) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r12) 
 ; Statement: if $z1 == 0 goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(assert (not (= (ite var1360 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/-551411557=([org.hibernate.mapping.Join], org.hibernate.mapping.Table), getQuotedName/-290606595=([org.hibernate.mapping.Table], java.lang.String), annotatedClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.annotations.common.reflection.XClass), var226_getAnnotation/549133788=([org.hibernate.annotations.common.reflection.XClass, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3713-to-var1811=([java.lang.annotation.Annotation], javax.persistence.SecondaryTable), var1811_name/-1991391814=([javax.persistence.SecondaryTable], java.lang.String)}
; {var3242=org.hibernate.cfg.annotations.EntityBinder, var2559=r3, var1152=org.hibernate.mapping.Join, var2179=r0, var1993=org.hibernate.mapping.Table, var1011=$r1, var818=r2, var226=org.hibernate.annotations.common.reflection.XClass, var980=$r4, var3713=java.lang.annotation.Annotation, var1811=javax.persistence.SecondaryTable, var2422=$r5, var3837=r6, var686=$r12, var1360=$z1}
; {org.hibernate.cfg.annotations.EntityBinder=var3242, r3=var2559, org.hibernate.mapping.Join=var1152, r0=var2179, org.hibernate.mapping.Table=var1993, $r1=var1011, r2=var818, org.hibernate.annotations.common.reflection.XClass=var226, $r4=var980, java.lang.annotation.Annotation=var3713, javax.persistence.SecondaryTable=var1811, $r5=var2422, r6=var3837, $r12=var686, $z1=var1360}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.mapping.Join;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Join: org.hibernate.mapping.Table getTable()>();	r2 = virtualinvoke $r1.<org.hibernate.mapping.Table: java.lang.String getQuotedName()>();	$r4 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/SecondaryTable;");	r6 = (javax.persistence.SecondaryTable) $r5;	if r6 == null goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r12 = interfaceinvoke r6.<javax.persistence.SecondaryTable: java.lang.String name()>();	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r12);	if $z1 == 0 goto $r7 = r3.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	return r6
;block_num 3