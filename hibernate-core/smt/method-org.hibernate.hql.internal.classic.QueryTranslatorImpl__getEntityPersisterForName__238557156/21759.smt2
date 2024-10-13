(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var739 0)
(declare-sort var2624 0)
(declare-sort var274 0)
(declare-sort var2326 0)
(declare-sort var1095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/186337157 (var739 String) String)
(declare-fun getEntityPersister/-70114676 (var739 String) var274)
(declare-fun var2326-init () var2326)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2326 String) void)
(declare-fun cast-from-var2326-to-var1095 (var2326) var1095)
(declare-const null-var739 var739)
(declare-const null-String String)
(declare-const null-var274 var274)
(declare-const var3435 var739) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3435 null-var739)))
(declare-const var3098 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3098 null-String)))
(assert true)
(define-const var850 String (getType/186337157 var3435 var3098)) ; Statement: r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getType(java.lang.String)>(r1) 
(assert true)
(define-const var2175 var274 (getEntityPersister/-70114676 var3435 var850)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.Queryable getEntityPersister(java.lang.String)>(r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2175 null-var274)))) ; Negate: Cond: r3 != null  
(define-const var3350 var2326 var2326-init) ; Statement: $r10 = new org.hibernate.QueryException 
(define-const var1891 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var3871 String (append/672562846 var1891!1 "persistent class not found: ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not found: ") 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 "persistent class not found: ")))
(assert true)
(define-const var1069 String (append/672562846 var3871 var850)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3871!1 String)
(assert (= var3871!1 (str.++ var3871 var850)))
(assert true)
(define-const var1216 String (toString/-2075883882 var1069)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3350 var1216)) ; Statement: specialinvoke $r10.<org.hibernate.QueryException: void <init>(java.lang.String)>($r8) 

(declare-const var3350!1 var2326)
(declare-const var1216!1 String)
(define-const var2553 var1095 (cast-from-var2326-to-var1095 var3350!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/186337157=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String), getEntityPersister/-70114676=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.entity.Queryable), var2326-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2326-to-var1095=([org.hibernate.QueryException], java.lang.Throwable)}
; {var739=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3435=r0, var3098=r1, var2624=null_type, var850=r2, var274=org.hibernate.persister.entity.Queryable, var2175=r3, var2326=org.hibernate.QueryException, var3350=$r10, var1891=$r9, var3871=$r6, var1069=$r7, var1216=$r8, var1095=java.lang.Throwable, var2553=$r11}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var739, r0=var3435, r1=var3098, null_type=var2624, r2=var850, org.hibernate.persister.entity.Queryable=var274, r3=var2175, org.hibernate.QueryException=var2326, $r10=var3350, $r9=var1891, $r6=var3871, $r7=var1069, $r8=var1216, java.lang.Throwable=var1095, $r11=var2553}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r1 := @parameter0: java.lang.String;	r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getType(java.lang.String)>(r1);	r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.entity.Queryable getEntityPersister(java.lang.String)>(r2);	if r3 != null goto return r3;	$r10 = new org.hibernate.QueryException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not found: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.QueryException: void <init>(java.lang.String)>($r8);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2