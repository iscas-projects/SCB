(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1682 0)
(declare-sort var598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTableName/-1196680680 (var1682) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1682 var1682)
(declare-const null-String String)
(declare-const var3768 var1682) ; Statement: r1 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister 
(assert (not (= var3768 null-var1682)))
(declare-const var2849 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2849 null-String)))
(define-const var1722 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1722)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1722!1 String)
(assert (= var1722!1 ""))
(assert true)
(define-const var1723 String (getTableName/-1196680680 var3768)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getTableName()>() 
(assert true)
(define-const var628 String (append/672562846 var1722!1 var1723)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1722!2 String)
(assert (= var1722!2 (str.++ var1722!1 var1723)))
(assert true)
(define-const var2641 String (append/-1166366385 var628 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var628!1 String)
(assert (str.prefixof var628 var628!1))
(assert true)
(define-const var359 String (append/672562846 var2641 var2849)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2641!1 String)
(assert (= var2641!1 (str.++ var2641 var2849)))
(assert true)
(define-const var1320 String (toString/-2075883882 var359)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTableName/-1196680680=([org.hibernate.persister.entity.UnionSubclassEntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1682=org.hibernate.persister.entity.UnionSubclassEntityPersister, var3768=r1, var2849=r4, var598=null_type, var1722=$r0, var1723=$r2, var628=$r3, var2641=$r5, var359=$r6, var1320=$r7}
; {org.hibernate.persister.entity.UnionSubclassEntityPersister=var1682, r1=var3768, r4=var2849, null_type=var598, $r0=var1722, $r2=var1723, $r3=var628, $r5=var2641, $r6=var359, $r7=var1320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getTableName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1