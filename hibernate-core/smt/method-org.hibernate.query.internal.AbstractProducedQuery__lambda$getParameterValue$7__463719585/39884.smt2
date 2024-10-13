(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2938 0)
(declare-sort var1348 0)
(declare-sort var1508 0)
(declare-sort var1788 0)
(declare-sort var546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2938_getPosition/-1546248669 (var2938) Int)
(declare-fun append/-1031950772 (String var1508) String)
(declare-fun cast-from-Int-to-var1508 (Int) var1508)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1788-init () var1788)
(declare-fun cast-from-var1348-to-var546 (var1348) var546)
(declare-fun <init>/-1425936906 (var1788 String var546) void)
(declare-const null-var2938 var2938)
(declare-const null-var1348 var1348)
(declare-const var449 var2938) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var449 null-var2938)))
(declare-const var3855 var1348) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var3855 null-var1348)))
(define-const var103 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var103)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var103!1 String)
(assert (= var103!1 ""))
(assert true)
(define-const var3928 String (append/672562846 var103!1 "Could not resolve parameter by position - ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by position - ") 
(declare-const var103!2 String)
(assert (= var103!2 (str.++ var103!1 "Could not resolve parameter by position - ")))
(define-const var3508 Int (var2938_getPosition/-1546248669 var449)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>() 
(assert true)
(define-const var3503 String (append/-1031950772 var3928 (cast-from-Int-to-var1508 var3508))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3928!1 String)
(assert (str.prefixof var3928 var3928!1))
(assert true)
(define-const var3510 String (toString/-2075883882 var3503)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (= var3855 null-var1348))) ; Cond: r6 != null 
(define-const var3336 var1788 var1788-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1012 var546 (cast-from-var1348-to-var546 var3855)) ; Statement: $r12 = (java.lang.Throwable) r6 
(assert true)
;(assert (<init>/-1425936906 var3336 var3510 var1012)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12) 

(declare-const var3336!1 var1788)
(declare-const var3510!1 String)
(declare-const var1012!1 var546)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2938_getPosition/-1546248669=([org.hibernate.query.QueryParameter], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var1508=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1788-init=([], java.lang.IllegalArgumentException), cast-from-var1348-to-var546=([org.hibernate.QueryParameterException], java.lang.Throwable), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var2938=org.hibernate.query.QueryParameter, var449=r1, var1348=org.hibernate.QueryParameterException, var3855=r6, var103=$r9, var3928=$r3, var3508=$r2, var1508=java.lang.Object, var3503=$r4, var3510=r5, var1788=java.lang.IllegalArgumentException, var3336=$r11, var546=java.lang.Throwable, var1012=$r12}
; {org.hibernate.query.QueryParameter=var2938, r1=var449, org.hibernate.QueryParameterException=var1348, r6=var3855, $r9=var103, $r3=var3928, $r2=var3508, java.lang.Object=var1508, $r4=var3503, r5=var3510, java.lang.IllegalArgumentException=var1788, $r11=var3336, java.lang.Throwable=var546, $r12=var1012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve parameter by position - ");	$r2 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.IllegalArgumentException;	$r12 = (java.lang.Throwable) r6;	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12);	return $r11
;block_num 2