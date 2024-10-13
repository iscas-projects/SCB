(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var3730 0)
(declare-sort var3961 0)
(declare-sort var478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3730_getAnnotation/-1145757680 (var3730) var478)
(declare-fun var478_annotationType/-1467926858 (var478) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1971 var1971)
(declare-const null-var3730 var3730)
(declare-const null-var3961 var3961)
(declare-const var1665 var1971) ; Statement: r11 := @parameter0: org.hibernate.mapping.Property 
(assert (not (= var1665 null-var1971)))
(declare-const var1853 var3730) ; Statement: r0 := @parameter1: javax.validation.metadata.ConstraintDescriptor 
(assert (not (= var1853 null-var3730)))
(declare-const var965 var3961) ; Statement: r5 := @parameter2: javax.validation.metadata.PropertyDescriptor 
(assert (not (= var965 null-var3961)))
(define-const var2801 String "org.hibernate.validator.constraints.Length") ; Statement: $r4 = "org.hibernate.validator.constraints.Length" 
(define-const var3711 var478 (var3730_getAnnotation/-1145757680 var1853)) ; Statement: $r1 = interfaceinvoke r0.<javax.validation.metadata.ConstraintDescriptor: java.lang.'annotation'.Annotation getAnnotation()>() 
(define-const var1914 ClassObject (var478_annotationType/-1467926858 var3711)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(assert true)
(define-const var1927 String (getName/-1958580599 var1914)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2555 Bool (= var2801 var1927)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2555 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3730_getAnnotation/-1145757680=([javax.validation.metadata.ConstraintDescriptor], java.lang.annotation.Annotation), var478_annotationType/-1467926858=([java.lang.annotation.Annotation], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1971=org.hibernate.mapping.Property, var1665=r11, var3730=javax.validation.metadata.ConstraintDescriptor, var1853=r0, var3961=javax.validation.metadata.PropertyDescriptor, var965=r5, var2801=$r4, var478=java.lang.annotation.Annotation, var3711=$r1, var1914=$r2, var1927=$r3, var2555=$z0}
; {org.hibernate.mapping.Property=var1971, r11=var1665, javax.validation.metadata.ConstraintDescriptor=var3730, r0=var1853, javax.validation.metadata.PropertyDescriptor=var3961, r5=var965, $r4=var2801, java.lang.annotation.Annotation=var478, $r1=var3711, $r2=var1914, $r3=var1927, $z0=var2555}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r11 := @parameter0: org.hibernate.mapping.Property;	r0 := @parameter1: javax.validation.metadata.ConstraintDescriptor;	r5 := @parameter2: javax.validation.metadata.PropertyDescriptor;	$r4 = "org.hibernate.validator.constraints.Length";	$r1 = interfaceinvoke r0.<javax.validation.metadata.ConstraintDescriptor: java.lang.'annotation'.Annotation getAnnotation()>();	$r2 = interfaceinvoke $r1.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto return;	return
;block_num 2