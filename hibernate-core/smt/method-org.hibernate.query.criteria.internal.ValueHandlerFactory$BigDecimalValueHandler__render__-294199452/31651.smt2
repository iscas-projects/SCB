(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/940323715 (var2982) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2845 var2845)
(declare-const null-var2982 var2982)
(declare-const var1123 var2845) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$BigDecimalValueHandler 
(assert (not (= var1123 null-var2845)))
(declare-const var435 var2982) ; Statement: r1 := @parameter0: java.math.BigDecimal 
(assert (not (= var435 null-var2982)))
(define-const var2835 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2835)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2835!1 String)
(assert (= var2835!1 ""))
(assert true)
(define-const var2068 String (toString/940323715 var435)) ; Statement: $r2 = virtualinvoke r1.<java.math.BigDecimal: java.lang.String toString()>() 
(assert true)
(define-const var1024 String (append/672562846 var2835!1 var2068)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2835!2 String)
(assert (= var2835!2 (str.++ var2835!1 var2068)))
(assert true)
(define-const var477 String (append/672562846 var1024 "BD")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BD") 
(declare-const var1024!1 String)
(assert (= var1024!1 (str.++ var1024 "BD")))
(assert true)
(define-const var1205 String (toString/-2075883882 var477)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/940323715=([java.math.BigDecimal], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2845=org.hibernate.query.criteria.internal.ValueHandlerFactory$BigDecimalValueHandler, var1123=r6, var2982=java.math.BigDecimal, var435=r1, var2835=$r0, var2068=$r2, var1024=$r3, var477=$r4, var1205=$r5}
; {org.hibernate.query.criteria.internal.ValueHandlerFactory$BigDecimalValueHandler=var2845, r6=var1123, java.math.BigDecimal=var2982, r1=var435, $r0=var2835, $r2=var2068, $r3=var1024, $r4=var477, $r5=var1205}
;seq <java.lang.StringBuilder: void <init>()>;	<java.math.BigDecimal: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$BigDecimalValueHandler;	r1 := @parameter0: java.math.BigDecimal;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.math.BigDecimal: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BD");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1