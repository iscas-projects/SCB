(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isNamed/-2131889558 (var1497) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun position/1754510778 (var1497) Int)
(declare-fun toString/483301002 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1497 var1497)
(declare-const var255 var1497) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo 
(assert (not (= var255 null-var1497)))
(assert true)
(define-const var2054 Bool (isNamed/-2131889558 var255)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: boolean isNamed()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2054 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3839 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3839)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3839!1 String)
(assert (= var3839!1 ""))
(assert true)
(define-const var2653 String (append/672562846 var3839!1 "?")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var3839!2 String)
(assert (= var3839!2 (str.++ var3839!1 "?")))
(define-const var2869 Int (position/1754510778 var255)) ; Statement: $r2 = r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: java.lang.Integer position> 
(assert true)
(define-const var551 String (toString/483301002 var2869)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3197 String (append/672562846 var2653 var551)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2653!1 String)
(assert (= var2653!1 (str.++ var2653 var551)))
(assert true)
(define-const var266 String (toString/-2075883882 var3197)) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isNamed/-2131889558=([org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), position/1754510778=([org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1497=org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo, var255=r0, var2054=$z0, var3839=$r1, var2653=$r4, var2869=$r2, var551=$r3, var3197=$r5, var266=$r10}
; {org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo=var1497, r0=var255, $z0=var2054, $r1=var3839, $r4=var2653, $r2=var2869, $r3=var551, $r5=var3197, $r10=var266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: boolean isNamed()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: java.lang.Integer position>;	$r3 = virtualinvoke $r2.<java.lang.Integer: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3