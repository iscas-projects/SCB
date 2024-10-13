(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var90 0)
(declare-sort var2999 0)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var90_getName/1668282280 (var90) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var845-init () var845)
(declare-fun <init>/875830710 (var845 String) void)
(declare-const null-var90 var90)
(declare-const null-var2999 var2999)
(declare-const var1470 var90) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var1470 null-var90)))
(declare-const var3587 var2999) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var3587 null-var2999)))
(define-const var178 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var178)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var178!1 String)
(assert (= var178!1 ""))
(assert true)
(define-const var2687 String (append/672562846 var178!1 "Could not resolve parameter by name - ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by name - ") 
(declare-const var178!2 String)
(assert (= var178!2 (str.++ var178!1 "Could not resolve parameter by name - ")))
(define-const var3462 String (var90_getName/1668282280 var1470)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.String getName()>() 
(assert true)
(define-const var3770 String (append/672562846 var2687 var3462)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2687!1 String)
(assert (= var2687!1 (str.++ var2687 var3462)))
(assert true)
(define-const var587 String (toString/-2075883882 var3770)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (not (= var3587 null-var2999)))) ; Negate: Cond: r6 != null  
(define-const var2678 var845 var845-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2678 var587)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5) 

(declare-const var2678!1 var845)
(declare-const var587!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var90_getName/1668282280=([org.hibernate.query.QueryParameter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var845-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var90=org.hibernate.query.QueryParameter, var1470=r1, var2999=org.hibernate.QueryParameterException, var3587=r6, var178=$r9, var2687=$r3, var3462=$r2, var3770=$r4, var587=r5, var845=java.lang.IllegalArgumentException, var2678=$r10}
; {org.hibernate.query.QueryParameter=var90, r1=var1470, org.hibernate.QueryParameterException=var2999, r6=var3587, $r9=var178, $r3=var2687, $r2=var3462, $r4=var3770, r5=var587, java.lang.IllegalArgumentException=var845, $r10=var2678}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by name - ");	$r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5);	return $r10
;block_num 2