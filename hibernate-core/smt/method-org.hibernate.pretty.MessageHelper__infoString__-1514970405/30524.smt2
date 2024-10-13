(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3075 0)
(declare-sort var2031 0)
(declare-sort var2839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3075 var3075)
(declare-const null-__Array__Int__var2031__ (Array Int var2031))
(declare-const null-var2839 var2839)
(declare-const var545 var3075) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var545 null-var3075)))
(declare-const var3608 (Array Int var2031)) ; Statement: r3 := @parameter1: java.io.Serializable[] 
(assert (not (= var3608 null-__Array__Int__var2031__)))
(declare-const var1662 var2839) ; Statement: r5 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1662 null-var2839)))
(define-const var941 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var941)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var941!1 String)
(assert (= var941!1 ""))
(assert true)
;(assert (append/-1166366385 var941!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var941!2 String)
(assert (str.prefixof var941!1 var941!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (not (= var545 null-var3075)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var941!2 "<null EntityPersister>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>") 
(declare-const var941!3 String)
(assert (= var941!3 (str.++ var941!2 "<null EntityPersister>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var941!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var941!4 String)
(assert (str.prefixof var941!3 var941!4))
(assert true)
(define-const var355 String (toString/-2075883882 var941!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3075=org.hibernate.persister.entity.EntityPersister, var545=r1, var2031=java.io.Serializable, var3608=r3, var2839=org.hibernate.engine.spi.SessionFactoryImplementor, var1662=r5, var941=$r0, var355=$r4}
; {org.hibernate.persister.entity.EntityPersister=var3075, r1=var545, java.io.Serializable=var2031, r3=var3608, org.hibernate.engine.spi.SessionFactoryImplementor=var2839, r5=var1662, $r0=var941, $r4=var355}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.io.Serializable[];	r5 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3