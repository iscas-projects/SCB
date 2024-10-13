(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3647 0)
(declare-sort var2452 0)
(declare-sort var718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/249013010 (var718) Bool)
(declare-fun cast-from-var3647-to-var718 (var3647) var718)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSQLWhereString/1187133943 (var718 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3647 var3647)
(declare-const null-String String)
(declare-const var3812 var3647) ; Statement: r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister 
(assert (not (= var3812 null-var3647)))
(declare-const var47 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var47 null-String)))
(assert true)
(define-const var2342 Bool (hasWhere/249013010 (cast-from-var3647-to-var718 var3812))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r6 = "" 
(assert (not (= (ite var2342 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2101 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2101)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2101!1 String)
(assert (= var2101!1 ""))
(assert true)
(define-const var2724 String (append/672562846 var2101!1 " and ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var2101!2 String)
(assert (= var2101!2 (str.++ var2101!1 " and ")))
(assert true)
(define-const var2433 String (getSQLWhereString/1187133943 (cast-from-var3647-to-var718 var3812) var47)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2) 
(assert true)
(define-const var3728 String (append/672562846 var2724 var2433)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2724!1 String)
(assert (= var2724!1 (str.++ var2724 var2433)))
(assert true)
(define-const var3761 String (toString/-2075883882 var3728)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/249013010=([org.hibernate.persister.entity.AbstractEntityPersister], boolean), cast-from-var3647-to-var718=([org.hibernate.persister.entity.UnionSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSQLWhereString/1187133943=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3647=org.hibernate.persister.entity.UnionSubclassEntityPersister, var3812=r0, var47=r2, var2452=null_type, var718=org.hibernate.persister.entity.AbstractEntityPersister, var2342=$z0, var2101=$r1, var2724=$r4, var2433=$r3, var3728=$r5, var3761=$r6}
; {org.hibernate.persister.entity.UnionSubclassEntityPersister=var3647, r0=var3812, r2=var47, null_type=var2452, org.hibernate.persister.entity.AbstractEntityPersister=var718, $z0=var2342, $r1=var2101, $r4=var2724, $r3=var2433, $r5=var3728, $r6=var3761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: boolean hasWhere()>();	if $z0 == 0 goto $r6 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r3 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getSQLWhereString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3