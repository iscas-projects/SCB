(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var421 0)
(declare-sort var3241 0)
(declare-sort var38 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2224 var2224)
(declare-const null-var421 var421)
(declare-const null-var3241 var3241)
(declare-const null-var38 var38)
(declare-const var1512 var2224) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1512 null-var2224)))
(declare-const var3896 var421) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3896 null-var421)))
(declare-const var3421 var3241) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3421 null-var3241)))
(define-const var946 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var946)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var946!1 String)
(assert (= var946!1 ""))
(assert true)
;(assert (append/-1166366385 var946!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var946!2 String)
(assert (str.prefixof var946!1 var946!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (not (= var1512 null-var2224)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var946!2 "<null EntityPersister>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>") 
(declare-const var946!3 String)
(assert (= var946!3 (str.++ var946!2 "<null EntityPersister>")))
(define-const var2521 var38 null-var38) ; Statement: r6 = null 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var946!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var946!4 String)
(assert (str.prefixof var946!3 var946!4))
 ; Statement: if r3 != null goto (branch) 
(assert (not (not (= var3896 null-var421)))) ; Negate: Cond: r3 != null  
(assert true)
;(assert (append/672562846 var946!4 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var946!5 String)
(assert (= var946!5 (str.++ var946!4 "<null>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var946!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var946!6 String)
(assert (str.prefixof var946!5 var946!6))
(assert true)
(define-const var642 String (toString/-2075883882 var946!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2224=org.hibernate.persister.entity.EntityPersister, var1512=r1, var421=java.lang.Object, var3896=r3, var3241=org.hibernate.engine.spi.SessionFactoryImplementor, var3421=r4, var946=$r0, var38=org.hibernate.type.Type, var2521=r6, var642=$r7}
; {org.hibernate.persister.entity.EntityPersister=var2224, r1=var1512, java.lang.Object=var421, r3=var3896, org.hibernate.engine.spi.SessionFactoryImplementor=var3241, r4=var3421, $r0=var946, org.hibernate.type.Type=var38, r6=var2521, $r7=var642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>");	r6 = null;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto (branch);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5