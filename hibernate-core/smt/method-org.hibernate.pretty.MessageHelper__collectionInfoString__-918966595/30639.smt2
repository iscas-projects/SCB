(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2409 0)
(declare-sort var659 0)
(declare-sort var966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2409 var2409)
(declare-const null-__Array__Int__var659__ (Array Int var659))
(declare-const null-var966 var966)
(declare-const var1620 var2409) ; Statement: r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister 
(assert (not (= var1620 null-var2409)))
(declare-const var517 (Array Int var659)) ; Statement: r3 := @parameter1: java.io.Serializable[] 
(assert (not (= var517 null-__Array__Int__var659__)))
(declare-const var1548 var966) ; Statement: r5 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1548 null-var966)))
(define-const var3166 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3166)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3166!1 String)
(assert (= var3166!1 ""))
(assert true)
;(assert (append/-1166366385 var3166!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3166!2 String)
(assert (str.prefixof var3166!1 var3166!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert (not (not (= var1620 null-var2409)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var3166!2 "<unreferenced>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>") 
(declare-const var3166!3 String)
(assert (= var3166!3 (str.++ var3166!2 "<unreferenced>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3166!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3166!4 String)
(assert (str.prefixof var3166!3 var3166!4))
(assert true)
(define-const var1954 String (toString/-2075883882 var3166!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2409=org.hibernate.persister.collection.CollectionPersister, var1620=r1, var659=java.io.Serializable, var517=r3, var966=org.hibernate.engine.spi.SessionFactoryImplementor, var1548=r5, var3166=$r0, var1954=$r4}
; {org.hibernate.persister.collection.CollectionPersister=var2409, r1=var1620, java.io.Serializable=var659, r3=var517, org.hibernate.engine.spi.SessionFactoryImplementor=var966, r5=var1548, $r0=var3166, $r4=var1954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister;	r3 := @parameter1: java.io.Serializable[];	r5 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3