(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1791 0)
(declare-sort var2226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/999900336 (var2226) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1791 var1791)
(declare-const null-var2226 var2226)
(declare-const var2421 var1791) ; Statement: r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$BigIntegerValueHandler 
(assert (not (= var2421 null-var1791)))
(declare-const var1969 var2226) ; Statement: r1 := @parameter0: java.math.BigInteger 
(assert (not (= var1969 null-var2226)))
(define-const var3344 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3344!1 String)
(assert (= var3344!1 ""))
(assert true)
(define-const var1173 String (toString/999900336 var1969)) ; Statement: $r2 = virtualinvoke r1.<java.math.BigInteger: java.lang.String toString()>() 
(assert true)
(define-const var1835 String (append/672562846 var3344!1 var1173)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3344!2 String)
(assert (= var3344!2 (str.++ var3344!1 var1173)))
(assert true)
(define-const var1612 String (append/672562846 var1835 "BI")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BI") 
(declare-const var1835!1 String)
(assert (= var1835!1 (str.++ var1835 "BI")))
(assert true)
(define-const var1828 String (toString/-2075883882 var1612)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/999900336=([java.math.BigInteger], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1791=org.hibernate.query.criteria.internal.ValueHandlerFactory$BigIntegerValueHandler, var2421=r6, var2226=java.math.BigInteger, var1969=r1, var3344=$r0, var1173=$r2, var1835=$r3, var1612=$r4, var1828=$r5}
; {org.hibernate.query.criteria.internal.ValueHandlerFactory$BigIntegerValueHandler=var1791, r6=var2421, java.math.BigInteger=var2226, r1=var1969, $r0=var3344, $r2=var1173, $r3=var1835, $r4=var1612, $r5=var1828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.math.BigInteger: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.query.criteria.internal.ValueHandlerFactory$BigIntegerValueHandler;	r1 := @parameter0: java.math.BigInteger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.math.BigInteger: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BI");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1