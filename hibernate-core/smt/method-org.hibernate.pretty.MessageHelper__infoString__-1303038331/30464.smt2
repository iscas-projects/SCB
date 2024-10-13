(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3080 0)
(declare-sort var3528 0)
(declare-sort var2830 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3080_getEntityName/-1914780628 (var3080) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3080_getIdentifierType/1645724036 (var3080) var2218)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3080 var3080)
(declare-const null-var3528 var3528)
(declare-const null-var2830 var2830)
(declare-const var2697 var3080) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2697 null-var3080)))
(declare-const var235 var3528) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var235 null-var3528)))
(declare-const var3314 var2830) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3314 null-var2830)))
(define-const var2448 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2448)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2448!1 String)
(assert (= var2448!1 ""))
(assert true)
;(assert (append/-1166366385 var2448!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2448!2 String)
(assert (str.prefixof var2448!1 var2448!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (= var2697 null-var3080))) ; Cond: r1 != null 
(define-const var2918 String (var3080_getEntityName/-1914780628 var2697)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
;(assert (append/672562846 var2448!2 var2918)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2448!3 String)
(assert (= var2448!3 (str.++ var2448!2 var2918)))
(define-const var2433 var2218 (var3080_getIdentifierType/1645724036 var2697)) ; Statement: r6 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2448!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2448!4 String)
(assert (str.prefixof var2448!3 var2448!4))
 ; Statement: if r3 != null goto (branch) 
(assert (not (not (= var235 null-var3528)))) ; Negate: Cond: r3 != null  
(assert true)
;(assert (append/672562846 var2448!4 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var2448!5 String)
(assert (= var2448!5 (str.++ var2448!4 "<null>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2448!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2448!6 String)
(assert (str.prefixof var2448!5 var2448!6))
(assert true)
(define-const var1801 String (toString/-2075883882 var2448!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3080_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3080_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3080=org.hibernate.persister.entity.EntityPersister, var2697=r1, var3528=java.lang.Object, var235=r3, var2830=org.hibernate.engine.spi.SessionFactoryImplementor, var3314=r4, var2448=$r0, var2918=$r2, var2218=org.hibernate.type.Type, var2433=r6, var1801=$r7}
; {org.hibernate.persister.entity.EntityPersister=var3080, r1=var2697, java.lang.Object=var3528, r3=var235, org.hibernate.engine.spi.SessionFactoryImplementor=var2830, r4=var3314, $r0=var2448, $r2=var2918, org.hibernate.type.Type=var2218, r6=var2433, $r7=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r6 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto (branch);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5