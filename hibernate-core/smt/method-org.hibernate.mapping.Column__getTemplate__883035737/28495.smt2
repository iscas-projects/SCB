(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var657 0)
(declare-sort var301 0)
(declare-sort var3227 0)
(declare-sort var645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasCustomRead/1514788018 (var657) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getQuotedName/146023953 (var657 var301) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var645_safeInterning/-733881672 (String) String)
(declare-const null-var657 var657)
(declare-const null-var301 var301)
(declare-const null-var3227 var3227)
(declare-const var2709 var657) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var2709 null-var657)))
(declare-const var1155 var301) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var1155 null-var301)))
(declare-const var567 var3227) ; Statement: r10 := @parameter1: org.hibernate.dialect.function.SQLFunctionRegistry 
(assert (not (= var567 null-var3227)))
(assert true)
(define-const var2857 Bool (hasCustomRead/1514788018 var2709)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean hasCustomRead()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2857 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1974 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1974)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1974!1 String)
(assert (= var1974!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var1974!1 "$PlaceHolder$.")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$PlaceHolder$.") 
(declare-const var1974!2 String)
(assert (= var1974!2 (str.++ var1974!1 "$PlaceHolder$.")))
(assert true)
(define-const var1662 String (getQuotedName/146023953 var2709 var1155)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.Column: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>(r2) 
(assert true)
(define-const var1991 String (append/672562846 var1844 var1662)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 var1662)))
(assert true)
(define-const var535 String (toString/-2075883882 var1991)) ; Statement: $r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3421 String (var645_safeInterning/-733881672 var535)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r11) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasCustomRead/1514788018=([org.hibernate.mapping.Column], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getQuotedName/146023953=([org.hibernate.mapping.Column, org.hibernate.dialect.Dialect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var645_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var657=org.hibernate.mapping.Column, var2709=r0, var301=org.hibernate.dialect.Dialect, var1155=r2, var3227=org.hibernate.dialect.function.SQLFunctionRegistry, var567=r10, var2857=$z0, var1974=$r1, var1844=$r4, var1662=$r3, var1991=$r5, var535=$r11, var645=org.hibernate.internal.util.StringHelper, var3421=$r6}
; {org.hibernate.mapping.Column=var657, r0=var2709, org.hibernate.dialect.Dialect=var301, r2=var1155, org.hibernate.dialect.function.SQLFunctionRegistry=var3227, r10=var567, $z0=var2857, $r1=var1974, $r4=var1844, $r3=var1662, $r5=var1991, $r11=var535, org.hibernate.internal.util.StringHelper=var645, $r6=var3421}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	r2 := @parameter0: org.hibernate.dialect.Dialect;	r10 := @parameter1: org.hibernate.dialect.function.SQLFunctionRegistry;	$z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean hasCustomRead()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$PlaceHolder$.");	$r3 = virtualinvoke r0.<org.hibernate.mapping.Column: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r11);	return $r6
;block_num 3