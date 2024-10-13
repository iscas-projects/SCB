(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3788 0)
(declare-sort var2362 0)
(declare-sort var2805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2805 String) void)
(declare-fun cast-from-var3788-to-var2805 (var3788) var2805)
(declare-fun name/-683717942 (var3788) String)
(declare-const null-var3788 var3788)
(declare-const null-String String)
(declare-const var1474 var3788) ; Statement: r0 := @this: org.hibernate.UnknownProfileException 
(assert (not (= var1474 null-var3788)))
(declare-const var1940 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1940 null-String)))
(define-const var883 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(assert true)
(define-const var1853 String (append/672562846 var883!1 "Unknown fetch profile [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown fetch profile [") 
(declare-const var883!2 String)
(assert (= var883!2 (str.++ var883!1 "Unknown fetch profile [")))
(assert true)
(define-const var1398 String (append/672562846 var1853 var1940)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1853!1 String)
(assert (= var1853!1 (str.++ var1853 var1940)))
(assert true)
(define-const var937 String (append/672562846 var1398 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1398!1 String)
(assert (= var1398!1 (str.++ var1398 "]")))
(assert true)
(define-const var761 String (toString/-2075883882 var937)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var3788-to-var2805 var1474) var761)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6) 

(declare-const var1474!1 var3788)
(declare-const var761!1 String)
(declare-const var1474!2 var3788)
(assert (not (= var1474!2 null-var3788)))
(assert (= (name/-683717942 var1474!2) var1940)) ; Statement: r0.<org.hibernate.UnknownProfileException: java.lang.String name> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3788-to-var2805=([org.hibernate.UnknownProfileException], org.hibernate.HibernateException), name/-683717942=([org.hibernate.UnknownProfileException], java.lang.String)}
; {var3788=org.hibernate.UnknownProfileException, var1474=r0, var1940=r2, var2362=null_type, var883=$r1, var1853=$r3, var1398=$r4, var937=$r5, var761=$r6, var2805=org.hibernate.HibernateException}
; {org.hibernate.UnknownProfileException=var3788, r0=var1474, r2=var1940, null_type=var2362, $r1=var883, $r3=var1853, $r4=var1398, $r5=var937, $r6=var761, org.hibernate.HibernateException=var2805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.UnknownProfileException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown fetch profile [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6);	r0.<org.hibernate.UnknownProfileException: java.lang.String name> = r2;	return
;block_num 1