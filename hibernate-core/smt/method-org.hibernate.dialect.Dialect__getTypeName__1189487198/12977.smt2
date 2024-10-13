(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1983 0)
(declare-sort var2458 0)
(declare-sort var2140 0)
(declare-sort var3085 0)
(declare-sort var2853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeNames/-970077672 (var1983) var2458)
(declare-fun get/932734625 (var2458 Int) String)
(declare-fun var3085-init () var3085)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3085 String) void)
(declare-fun cast-from-var3085-to-var2853 (var3085) var2853)
(declare-const null-var1983 var1983)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1583 var1983) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1583 null-var1983)))
(declare-const var26 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var26 null-Int)))
(define-const var1192 var2458 (typeNames/-970077672 var1583)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames> 
(assert true)
(define-const var2848 String (get/932734625 var1192 var26)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var2848 null-String)))) ; Negate: Cond: r2 != null  
(define-const var3384 var3085 var3085-init) ; Statement: $r9 = new org.hibernate.HibernateException 
(define-const var1537 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1537)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1537!1 String)
(assert (= var1537!1 ""))
(assert true)
(define-const var1296 String (append/672562846 var1537!1 "No default type mapping for (java.sql.Types) ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No default type mapping for (java.sql.Types) ") 
(declare-const var1537!2 String)
(assert (= var1537!2 (str.++ var1537!1 "No default type mapping for (java.sql.Types) ")))
(assert true)
(define-const var448 String (append/-1001720160 var1296 var26)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1296!1 String)
(assert (str.prefixof var1296 var1296!1))
(assert true)
(define-const var2947 String (toString/-2075883882 var448)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3384 var2947)) ; Statement: specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var3384!1 var3085)
(declare-const var2947!1 String)
(define-const var1688 var2853 (cast-from-var3085-to-var2853 var3384!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {typeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/932734625=([org.hibernate.dialect.TypeNames, int], java.lang.String), var3085-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3085-to-var2853=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1983=org.hibernate.dialect.Dialect, var1583=r0, var26=i0, var2458=org.hibernate.dialect.TypeNames, var1192=$r1, var2848=r2, var2140=null_type, var3085=org.hibernate.HibernateException, var3384=$r9, var1537=$r8, var1296=$r5, var448=$r6, var2947=$r7, var2853=java.lang.Throwable, var1688=$r10}
; {org.hibernate.dialect.Dialect=var1983, r0=var1583, i0=var26, org.hibernate.dialect.TypeNames=var2458, $r1=var1192, r2=var2848, null_type=var2140, org.hibernate.HibernateException=var3085, $r9=var3384, $r8=var1537, $r5=var1296, $r6=var448, $r7=var2947, java.lang.Throwable=var2853, $r10=var1688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0);	if r2 != null goto return r2;	$r9 = new org.hibernate.HibernateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No default type mapping for (java.sql.Types) ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2