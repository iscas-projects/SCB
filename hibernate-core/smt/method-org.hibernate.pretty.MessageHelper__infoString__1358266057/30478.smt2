(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var137 0)
(declare-sort var1927 0)
(declare-sort var3769 0)
(declare-sort var2569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var137 var137)
(declare-const null-var1927 var1927)
(declare-const null-var3769 var3769)
(declare-const null-var2569 var2569)
(declare-const var1324 var137) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1324 null-var137)))
(declare-const var1755 var1927) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1755 null-var1927)))
(declare-const var3640 var3769) ; Statement: r4 := @parameter2: org.hibernate.type.Type 
(assert (not (= var3640 null-var3769)))
(declare-const var3221 var2569) ; Statement: r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3221 null-var2569)))
(define-const var470 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var470)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var470!1 String)
(assert (= var470!1 ""))
(assert true)
;(assert (append/-1166366385 var470!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var470!2 String)
(assert (str.prefixof var470!1 var470!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (not (= var1324 null-var137)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var470!2 "<null EntityPersister>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>") 
(declare-const var470!3 String)
(assert (= var470!3 (str.++ var470!2 "<null EntityPersister>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var470!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var470!4 String)
(assert (str.prefixof var470!3 var470!4))
 ; Statement: if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert (not (not (= var1755 null-var1927)))) ; Negate: Cond: r3 != null  
(assert true)
;(assert (append/672562846 var470!4 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var470!5 String)
(assert (= var470!5 (str.++ var470!4 "<null>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var470!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var470!6 String)
(assert (str.prefixof var470!5 var470!6))
(assert true)
(define-const var808 String (toString/-2075883882 var470!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var137=org.hibernate.persister.entity.EntityPersister, var1324=r1, var1927=java.lang.Object, var1755=r3, var3769=org.hibernate.type.Type, var3640=r4, var2569=org.hibernate.engine.spi.SessionFactoryImplementor, var3221=r5, var470=$r0, var808=$r7}
; {org.hibernate.persister.entity.EntityPersister=var137, r1=var1324, java.lang.Object=var1927, r3=var1755, org.hibernate.type.Type=var3769, r4=var3640, org.hibernate.engine.spi.SessionFactoryImplementor=var2569, r5=var3221, $r0=var470, $r7=var808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.type.Type;	r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5