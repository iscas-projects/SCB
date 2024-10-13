(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3959 0)
(declare-sort var458 0)
(declare-sort var3307 0)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3959_getPosition/-1546248669 (var3959) Int)
(declare-fun append/-1031950772 (String var3307) String)
(declare-fun cast-from-Int-to-var3307 (Int) var3307)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2077-init () var2077)
(declare-fun <init>/875830710 (var2077 String) void)
(declare-const null-var3959 var3959)
(declare-const null-var458 var458)
(declare-const var1573 var3959) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var1573 null-var3959)))
(declare-const var439 var458) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var439 null-var458)))
(define-const var427 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var427)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var427!1 String)
(assert (= var427!1 ""))
(assert true)
(define-const var793 String (append/672562846 var427!1 "Could not resolve parameter by position - ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by position - ") 
(declare-const var427!2 String)
(assert (= var427!2 (str.++ var427!1 "Could not resolve parameter by position - ")))
(define-const var3970 Int (var3959_getPosition/-1546248669 var1573)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>() 
(assert true)
(define-const var3676 String (append/-1031950772 var793 (cast-from-Int-to-var3307 var3970))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var793!1 String)
(assert (str.prefixof var793 var793!1))
(assert true)
(define-const var1858 String (toString/-2075883882 var3676)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (not (= var439 null-var458)))) ; Negate: Cond: r6 != null  
(define-const var3306 var2077 var2077-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3306 var1858)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5) 

(declare-const var3306!1 var2077)
(declare-const var1858!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3959_getPosition/-1546248669=([org.hibernate.query.QueryParameter], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var3307=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2077-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3959=org.hibernate.query.QueryParameter, var1573=r1, var458=org.hibernate.QueryParameterException, var439=r6, var427=$r9, var793=$r3, var3970=$r2, var3307=java.lang.Object, var3676=$r4, var1858=r5, var2077=java.lang.IllegalArgumentException, var3306=$r10}
; {org.hibernate.query.QueryParameter=var3959, r1=var1573, org.hibernate.QueryParameterException=var458, r6=var439, $r9=var427, $r3=var793, $r2=var3970, java.lang.Object=var3307, $r4=var3676, r5=var1858, java.lang.IllegalArgumentException=var2077, $r10=var3306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by position - ");	$r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5);	return $r10
;block_num 2