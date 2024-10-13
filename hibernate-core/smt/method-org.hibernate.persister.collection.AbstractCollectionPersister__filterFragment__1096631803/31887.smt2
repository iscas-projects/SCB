(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var658 0)
(declare-sort var940 0)
(declare-sort var1327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/2002269106 (var658) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSQLWhereString/-1030315369 (var658 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var658 var658)
(declare-const null-String String)
(declare-const null-var1327 var1327)
(declare-const var44 var658) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var44 null-var658)))
(declare-const var2453 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2453 null-String)))
(declare-const var3953 var1327) ; Statement: r6 := @parameter1: java.util.Set 
(assert (not (= var3953 null-var1327)))
(assert true)
(define-const var3990 Bool (hasWhere/2002269106 var44)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r7 = "" 
(assert (not (= (ite var3990 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var569 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var569)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var569!1 String)
(assert (= var569!1 ""))
(assert true)
(define-const var3313 String (append/672562846 var569!1 " and ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var569!2 String)
(assert (= var569!2 (str.++ var569!1 " and ")))
(assert true)
(define-const var466 String (getSQLWhereString/-1030315369 var44 var2453)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2) 
(assert true)
(define-const var3810 String (append/672562846 var3313 var466)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3313!1 String)
(assert (= var3313!1 (str.++ var3313 var466)))
(assert true)
(define-const var3795 String (toString/-2075883882 var3810)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/2002269106=([org.hibernate.persister.collection.AbstractCollectionPersister], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSQLWhereString/-1030315369=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var658=org.hibernate.persister.collection.AbstractCollectionPersister, var44=r0, var2453=r2, var940=null_type, var1327=java.util.Set, var3953=r6, var3990=$z0, var569=$r1, var3313=$r4, var466=$r3, var3810=$r5, var3795=$r7}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var658, r0=var44, r2=var2453, null_type=var940, java.util.Set=var1327, r6=var3953, $z0=var3990, $r1=var569, $r4=var3313, $r3=var466, $r5=var3810, $r7=var3795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Set;	$z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>();	if $z0 == 0 goto $r7 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r7];	return $r7
;block_num 3