(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2710 0)
(declare-sort var1578 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2710 var2710)
(declare-const null-var1578 var1578)
(declare-const null-var537 var537)
(declare-const var1136 var2710) ; Statement: r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister 
(assert (not (= var1136 null-var2710)))
(declare-const var1408 var1578) ; Statement: r3 := @parameter1: java.io.Serializable 
(assert (not (= var1408 null-var1578)))
(declare-const var1130 var537) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1130 null-var537)))
(define-const var2092 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2092)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2092!1 String)
(assert (= var2092!1 ""))
(assert true)
;(assert (append/-1166366385 var2092!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2092!2 String)
(assert (str.prefixof var2092!1 var2092!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert (not (not (= var1136 null-var2710)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var2092!2 "<unreferenced>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>") 
(declare-const var2092!3 String)
(assert (= var2092!3 (str.++ var2092!2 "<unreferenced>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2092!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2092!4 String)
(assert (str.prefixof var2092!3 var2092!4))
(assert true)
(define-const var1232 String (toString/-2075883882 var2092!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2710=org.hibernate.persister.collection.CollectionPersister, var1136=r1, var1578=java.io.Serializable, var1408=r3, var537=org.hibernate.engine.spi.SessionFactoryImplementor, var1130=r4, var2092=$r0, var1232=$r5}
; {org.hibernate.persister.collection.CollectionPersister=var2710, r1=var1136, java.io.Serializable=var1578, r3=var1408, org.hibernate.engine.spi.SessionFactoryImplementor=var537, r4=var1130, $r0=var2092, $r5=var1232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister;	r3 := @parameter1: java.io.Serializable;	r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3