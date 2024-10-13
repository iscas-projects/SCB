(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2977 0)
(declare-sort var1069 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/249013010 (var2003) Bool)
(declare-fun cast-from-var2977-to-var2003 (var2977) var2003)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun generateFilterConditionAlias/350777164 (var2977 String) String)
(declare-fun getSQLWhereString/1187133943 (var2003 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2977 var2977)
(declare-const null-String String)
(declare-const var213 var2977) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var213 null-var2977)))
(declare-const var3287 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3287 null-String)))
(assert true)
(define-const var1371 Bool (hasWhere/249013010 (cast-from-var2977-to-var2003 var213))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r7 = "" 
(assert (not (= (ite var1371 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var502 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var502)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var502!1 String)
(assert (= var502!1 ""))
(assert true)
(define-const var1251 String (append/672562846 var502!1 " and ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var502!2 String)
(assert (= var502!2 (str.++ var502!1 " and ")))
(assert true)
(define-const var2039 String (generateFilterConditionAlias/350777164 var213 var3287)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String generateFilterConditionAlias(java.lang.String)>(r2) 
(assert true)
(define-const var2778 String (getSQLWhereString/1187133943 (cast-from-var2977-to-var2003 var213) var2039)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String getSQLWhereString(java.lang.String)>($r3) 
(assert true)
(define-const var3758 String (append/672562846 var1251 var2778)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1251!1 String)
(assert (= var1251!1 (str.++ var1251 var2778)))
(assert true)
(define-const var3293 String (toString/-2075883882 var3758)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/249013010=([org.hibernate.persister.entity.AbstractEntityPersister], boolean), cast-from-var2977-to-var2003=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), generateFilterConditionAlias/350777164=([org.hibernate.persister.entity.JoinedSubclassEntityPersister, java.lang.String], java.lang.String), getSQLWhereString/1187133943=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2977=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var213=r0, var3287=r2, var1069=null_type, var2003=org.hibernate.persister.entity.AbstractEntityPersister, var1371=$z0, var502=$r1, var1251=$r5, var2039=$r3, var2778=$r4, var3758=$r6, var3293=$r7}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var2977, r0=var213, r2=var3287, null_type=var1069, org.hibernate.persister.entity.AbstractEntityPersister=var2003, $z0=var1371, $r1=var502, $r5=var1251, $r3=var2039, $r4=var2778, $r6=var3758, $r7=var3293}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: boolean hasWhere()>();	if $z0 == 0 goto $r7 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r3 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String generateFilterConditionAlias(java.lang.String)>(r2);	$r4 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String getSQLWhereString(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r7];	return $r7
;block_num 3