(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3325 0)
(declare-sort var999 0)
(declare-sort var2552 0)
(declare-sort var344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3325 var3325)
(declare-const null-var999 var999)
(declare-const null-var2552 var2552)
(declare-const null-var344 var344)
(declare-const var2221 var3325) ; Statement: r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister 
(assert (not (= var2221 null-var3325)))
(declare-const var906 var999) ; Statement: r8 := @parameter1: org.hibernate.collection.spi.PersistentCollection 
(assert (not (= var906 null-var999)))
(declare-const var720 var2552) ; Statement: r5 := @parameter2: java.io.Serializable 
(assert (not (= var720 null-var2552)))
(declare-const var3426 var344) ; Statement: r9 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3426 null-var344)))
(define-const var3275 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3275)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3275!1 String)
(assert (= var3275!1 ""))
(assert true)
;(assert (append/-1166366385 var3275!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3275!2 String)
(assert (str.prefixof var3275!1 var3275!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert (not (not (= var2221 null-var3325)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var3275!2 "<unreferenced>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>") 
(declare-const var3275!3 String)
(assert (= var3275!3 (str.++ var3275!2 "<unreferenced>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3275!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3275!4 String)
(assert (str.prefixof var3275!3 var3275!4))
(assert true)
(define-const var219 String (toString/-2075883882 var3275!4)) ; Statement: $r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3325=org.hibernate.persister.collection.CollectionPersister, var2221=r1, var999=org.hibernate.collection.spi.PersistentCollection, var906=r8, var2552=java.io.Serializable, var720=r5, var344=org.hibernate.engine.spi.SharedSessionContractImplementor, var3426=r9, var3275=$r0, var219=$r17}
; {org.hibernate.persister.collection.CollectionPersister=var3325, r1=var2221, org.hibernate.collection.spi.PersistentCollection=var999, r8=var906, java.io.Serializable=var2552, r5=var720, org.hibernate.engine.spi.SharedSessionContractImplementor=var344, r9=var3426, $r0=var3275, $r17=var219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.collection.CollectionPersister;	r8 := @parameter1: org.hibernate.collection.spi.PersistentCollection;	r5 := @parameter2: java.io.Serializable;	r9 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<unreferenced>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3