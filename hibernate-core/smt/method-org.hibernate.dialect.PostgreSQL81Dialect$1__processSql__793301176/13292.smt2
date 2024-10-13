(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2033 0)
(declare-sort var3943 0)
(declare-sort var2994 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1528_hasFirstRow/-2097898482 (var2994) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2033 var2033)
(declare-const null-String String)
(declare-const null-var2994 var2994)
(declare-const var1175 var2033) ; Statement: r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect$1 
(assert (not (= var1175 null-var2033)))
(declare-const var927 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var927 null-String)))
(declare-const var3586 var2994) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3586 null-var2994)))
(define-const var3642 Bool (var1528_hasFirstRow/-2097898482 var3586)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1529 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1529)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1529!1 String)
(assert (= var1529!1 ""))
(assert true)
(define-const var2510 String (append/672562846 var1529!1 var927)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1529!2 String)
(assert (= var1529!2 (str.++ var1529!1 var927)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (= (ite var3642 1 0) 0)) ; Cond: z0 == 0 
(define-const var311 String " limit ?") ; Statement: $r7 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var716 String (append/672562846 var2510 var311)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2510!1 String)
(assert (= var2510!1 (str.++ var2510 var311)))
(assert true)
(define-const var1136 String (toString/-2075883882 var716)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1528_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2033=org.hibernate.dialect.PostgreSQL81Dialect$1, var1175=r6, var927=r2, var3943=null_type, var2994=org.hibernate.engine.spi.RowSelection, var3586=r0, var1528=org.hibernate.dialect.pagination.LimitHelper, var3642=z0, var1529=$r1, var2510=$r3, var311=$r7, var716=$r4, var1136=$r5}
; {org.hibernate.dialect.PostgreSQL81Dialect$1=var2033, r6=var1175, r2=var927, null_type=var3943, org.hibernate.engine.spi.RowSelection=var2994, r0=var3586, org.hibernate.dialect.pagination.LimitHelper=var1528, z0=var3642, $r1=var1529, $r3=var2510, $r7=var311, $r4=var716, $r5=var1136}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3