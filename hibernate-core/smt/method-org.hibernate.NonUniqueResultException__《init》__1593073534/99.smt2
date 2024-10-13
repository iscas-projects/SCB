(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort var3083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3083 String) void)
(declare-fun cast-from-var3682-to-var3083 (var3682) var3083)
(declare-const null-var3682 var3682)
(declare-const null-Int Int)
(declare-const var2438 var3682) ; Statement: r0 := @this: org.hibernate.NonUniqueResultException 
(assert (not (= var2438 null-var3682)))
(declare-const var3163 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3163 null-Int)))
(define-const var863 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var863)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var863!1 String)
(assert (= var863!1 ""))
(assert true)
(define-const var3442 String (append/672562846 var863!1 "query did not return a unique result: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("query did not return a unique result: ") 
(declare-const var863!2 String)
(assert (= var863!2 (str.++ var863!1 "query did not return a unique result: ")))
(assert true)
(define-const var3647 String (append/-1001720160 var3442 var3163)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3442!1 String)
(assert (str.prefixof var3442 var3442!1))
(assert true)
(define-const var1128 String (toString/-2075883882 var3647)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var3682-to-var3083 var2438) var1128)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r4) 

(declare-const var2438!1 var3682)
(declare-const var1128!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3682-to-var3083=([org.hibernate.NonUniqueResultException], org.hibernate.HibernateException)}
; {var3682=org.hibernate.NonUniqueResultException, var2438=r0, var3163=i0, var863=$r1, var3442=$r2, var3647=$r3, var1128=$r4, var3083=org.hibernate.HibernateException}
; {org.hibernate.NonUniqueResultException=var3682, r0=var2438, i0=var3163, $r1=var863, $r2=var3442, $r3=var3647, $r4=var1128, org.hibernate.HibernateException=var3083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.NonUniqueResultException;	i0 := @parameter0: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("query did not return a unique result: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r4);	return
;block_num 1