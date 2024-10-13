(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3172 0)
(declare-sort var1247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/2002269106 (var3172) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSQLWhereString/-1030315369 (var3172 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3172 var3172)
(declare-const null-String String)
(declare-const var694 var3172) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var694 null-var3172)))
(declare-const var2805 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2805 null-String)))
(assert true)
(define-const var2568 Bool (hasWhere/2002269106 var694)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r6 = "" 
(assert (not (= (ite var2568 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1731 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1731)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1731!1 String)
(assert (= var1731!1 ""))
(assert true)
(define-const var774 String (append/672562846 var1731!1 " and ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var1731!2 String)
(assert (= var1731!2 (str.++ var1731!1 " and ")))
(assert true)
(define-const var192 String (getSQLWhereString/-1030315369 var694 var2805)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2) 
(assert true)
(define-const var396 String (append/672562846 var774 var192)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var774!1 String)
(assert (= var774!1 (str.++ var774 var192)))
(assert true)
(define-const var3991 String (toString/-2075883882 var396)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/2002269106=([org.hibernate.persister.collection.AbstractCollectionPersister], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSQLWhereString/-1030315369=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3172=org.hibernate.persister.collection.AbstractCollectionPersister, var694=r0, var2805=r2, var1247=null_type, var2568=$z0, var1731=$r1, var774=$r4, var192=$r3, var396=$r5, var3991=$r6}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3172, r0=var694, r2=var2805, null_type=var1247, $z0=var2568, $r1=var1731, $r4=var774, $r3=var192, $r5=var396, $r6=var3991}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>();	if $z0 == 0 goto $r6 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3