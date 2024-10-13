(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var354 0)
(declare-sort var864 0)
(declare-sort var3339 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var354_getEntityName/-1914780628 (var354) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var354 var354)
(declare-const null-var864 var864)
(declare-const null-var3339 var3339)
(declare-const null-var314 var314)
(declare-const var1302 var354) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1302 null-var354)))
(declare-const var1953 var864) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1953 null-var864)))
(declare-const var1003 var3339) ; Statement: r4 := @parameter2: org.hibernate.type.Type 
(assert (not (= var1003 null-var3339)))
(declare-const var3828 var314) ; Statement: r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3828 null-var314)))
(define-const var3073 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3073)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3073!1 String)
(assert (= var3073!1 ""))
(assert true)
;(assert (append/-1166366385 var3073!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3073!2 String)
(assert (str.prefixof var3073!1 var3073!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (= var1302 null-var354))) ; Cond: r1 != null 
(define-const var150 String (var354_getEntityName/-1914780628 var1302)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
;(assert (append/672562846 var3073!2 var150)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3073!3 String)
(assert (= var3073!3 (str.++ var3073!2 var150)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3073!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var3073!4 String)
(assert (str.prefixof var3073!3 var3073!4))
 ; Statement: if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert (not (not (= var1953 null-var864)))) ; Negate: Cond: r3 != null  
(assert true)
;(assert (append/672562846 var3073!4 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var3073!5 String)
(assert (= var3073!5 (str.++ var3073!4 "<null>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3073!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3073!6 String)
(assert (str.prefixof var3073!5 var3073!6))
(assert true)
(define-const var3170 String (toString/-2075883882 var3073!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var354_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var354=org.hibernate.persister.entity.EntityPersister, var1302=r1, var864=java.lang.Object, var1953=r3, var3339=org.hibernate.type.Type, var1003=r4, var314=org.hibernate.engine.spi.SessionFactoryImplementor, var3828=r5, var3073=$r0, var150=$r2, var3170=$r7}
; {org.hibernate.persister.entity.EntityPersister=var354, r1=var1302, java.lang.Object=var864, r3=var1953, org.hibernate.type.Type=var3339, r4=var1003, org.hibernate.engine.spi.SessionFactoryImplementor=var314, r5=var3828, $r0=var3073, $r2=var150, $r7=var3170}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.type.Type;	r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5