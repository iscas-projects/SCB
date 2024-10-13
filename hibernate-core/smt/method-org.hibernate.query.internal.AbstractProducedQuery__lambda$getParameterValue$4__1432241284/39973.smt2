(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var827 0)
(declare-sort var1458 0)
(declare-sort var2696 0)
(declare-sort var2301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var827_getName/1668282280 (var827) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2696-init () var2696)
(declare-fun cast-from-var1458-to-var2301 (var1458) var2301)
(declare-fun <init>/-1425936906 (var2696 String var2301) void)
(declare-const null-var827 var827)
(declare-const null-var1458 var1458)
(declare-const var566 var827) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var566 null-var827)))
(declare-const var3791 var1458) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var3791 null-var1458)))
(define-const var2468 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2468)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2468!1 String)
(assert (= var2468!1 ""))
(assert true)
(define-const var3070 String (append/672562846 var2468!1 "Could not resolve parameter by name - ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by name - ") 
(declare-const var2468!2 String)
(assert (= var2468!2 (str.++ var2468!1 "Could not resolve parameter by name - ")))
(define-const var2884 String (var827_getName/1668282280 var566)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.String getName()>() 
(assert true)
(define-const var3726 String (append/672562846 var3070 var2884)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3070!1 String)
(assert (= var3070!1 (str.++ var3070 var2884)))
(assert true)
(define-const var3484 String (toString/-2075883882 var3726)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (= var3791 null-var1458))) ; Cond: r6 != null 
(define-const var3244 var2696 var2696-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var3585 var2301 (cast-from-var1458-to-var2301 var3791)) ; Statement: $r12 = (java.lang.Throwable) r6 
(assert true)
;(assert (<init>/-1425936906 var3244 var3484 var3585)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12) 

(declare-const var3244!1 var2696)
(declare-const var3484!1 String)
(declare-const var3585!1 var2301)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var827_getName/1668282280=([org.hibernate.query.QueryParameter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2696-init=([], java.lang.IllegalArgumentException), cast-from-var1458-to-var2301=([org.hibernate.QueryParameterException], java.lang.Throwable), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var827=org.hibernate.query.QueryParameter, var566=r1, var1458=org.hibernate.QueryParameterException, var3791=r6, var2468=$r9, var3070=$r3, var2884=$r2, var3726=$r4, var3484=r5, var2696=java.lang.IllegalArgumentException, var3244=$r11, var2301=java.lang.Throwable, var3585=$r12}
; {org.hibernate.query.QueryParameter=var827, r1=var566, org.hibernate.QueryParameterException=var1458, r6=var3791, $r9=var2468, $r3=var3070, $r2=var2884, $r4=var3726, r5=var3484, java.lang.IllegalArgumentException=var2696, $r11=var3244, java.lang.Throwable=var2301, $r12=var3585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by name - ");	$r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.IllegalArgumentException;	$r12 = (java.lang.Throwable) r6;	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12);	return $r11
;block_num 2