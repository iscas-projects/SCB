(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1553 0)
(declare-sort var1368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/-1045482863 (var1553 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1553 var1553)
(declare-const null-String String)
(declare-const var1605 var1553) ; Statement: r1 := @this: org.hibernate.dialect.SAPDBDialect 
(assert (not (= var1605 null-var1553)))
(declare-const var164 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var164 null-String)))
(define-const var1407 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1407)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1407!1 String)
(assert (= var1407!1 ""))
(assert true)
(define-const var2711 String (append/672562846 var1407!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1407!2 String)
(assert (= var1407!2 (str.++ var1407!1 "select ")))
(assert true)
(define-const var1429 String (getSelectSequenceNextValString/-1045482863 var1605 var164)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.SAPDBDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var1185 String (append/672562846 var2711 var1429)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2711!1 String)
(assert (= var2711!1 (str.++ var2711 var1429)))
(assert true)
(define-const var2369 String (append/672562846 var1185 " from dual")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual") 
(declare-const var1185!1 String)
(assert (= var1185!1 (str.++ var1185 " from dual")))
(assert true)
(define-const var2461 String (toString/-2075883882 var2369)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/-1045482863=([org.hibernate.dialect.SAPDBDialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1553=org.hibernate.dialect.SAPDBDialect, var1605=r1, var164=r2, var1368=null_type, var1407=$r0, var2711=$r4, var1429=$r3, var1185=$r5, var2369=$r6, var2461=$r7}
; {org.hibernate.dialect.SAPDBDialect=var1553, r1=var1605, r2=var164, null_type=var1368, $r0=var1407, $r4=var2711, $r3=var1429, $r5=var1185, $r6=var2369, $r7=var2461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.SAPDBDialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.SAPDBDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1