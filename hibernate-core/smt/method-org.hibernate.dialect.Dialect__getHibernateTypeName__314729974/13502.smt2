(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var2566 0)
(declare-sort var509 0)
(declare-sort var3927 0)
(declare-sort var692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hibernateTypeNames/-970077672 (var677) var2566)
(declare-fun get/932734625 (var2566 Int) String)
(declare-fun var3927-init () var3927)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3927 String) void)
(declare-fun cast-from-var3927-to-var692 (var3927) var692)
(declare-const null-var677 var677)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2747 var677) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2747 null-var677)))
(declare-const var2082 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2082 null-Int)))
(define-const var410 var2566 (hibernateTypeNames/-970077672 var2747)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames> 
(assert true)
(define-const var3651 String (get/932734625 var410 var2082)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var3651 null-String)))) ; Negate: Cond: r2 != null  
(define-const var860 var3927 var3927-init) ; Statement: $r9 = new org.hibernate.HibernateException 
(define-const var3020 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3020)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3020!1 String)
(assert (= var3020!1 ""))
(assert true)
(define-const var411 String (append/672562846 var3020!1 "No Hibernate type mapping for java.sql.Types code: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Hibernate type mapping for java.sql.Types code: ") 
(declare-const var3020!2 String)
(assert (= var3020!2 (str.++ var3020!1 "No Hibernate type mapping for java.sql.Types code: ")))
(assert true)
(define-const var3148 String (append/-1001720160 var411 var2082)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var411!1 String)
(assert (str.prefixof var411 var411!1))
(assert true)
(define-const var3284 String (toString/-2075883882 var3148)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var860 var3284)) ; Statement: specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var860!1 var3927)
(declare-const var3284!1 String)
(define-const var3083 var692 (cast-from-var3927-to-var692 var860!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {hibernateTypeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/932734625=([org.hibernate.dialect.TypeNames, int], java.lang.String), var3927-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3927-to-var692=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var677=org.hibernate.dialect.Dialect, var2747=r0, var2082=i0, var2566=org.hibernate.dialect.TypeNames, var410=$r1, var3651=r2, var509=null_type, var3927=org.hibernate.HibernateException, var860=$r9, var3020=$r8, var411=$r5, var3148=$r6, var3284=$r7, var692=java.lang.Throwable, var3083=$r10}
; {org.hibernate.dialect.Dialect=var677, r0=var2747, i0=var2082, org.hibernate.dialect.TypeNames=var2566, $r1=var410, r2=var3651, null_type=var509, org.hibernate.HibernateException=var3927, $r9=var860, $r8=var3020, $r5=var411, $r6=var3148, $r7=var3284, java.lang.Throwable=var692, $r10=var3083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0);	if r2 != null goto return r2;	$r9 = new org.hibernate.HibernateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Hibernate type mapping for java.sql.Types code: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2