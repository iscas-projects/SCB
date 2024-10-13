(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2577 0)
(declare-sort var2897 0)
(declare-sort var1437 0)
(declare-sort var3574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3574_hasFirstRow/-2097898482 (var1437) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2577 var2577)
(declare-const null-String String)
(declare-const null-var1437 var1437)
(declare-const var1007 var2577) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect$1 
(assert (not (= var1007 null-var2577)))
(declare-const var1137 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1137 null-String)))
(declare-const var3994 var1437) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3994 null-var1437)))
(define-const var310 Bool (var3574_hasFirstRow/-2097898482 var3994)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1572 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1572)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1572!1 String)
(assert (= var1572!1 ""))
(assert true)
(define-const var3356 String (append/672562846 var1572!1 var1137)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1572!2 String)
(assert (= var1572!2 (str.++ var1572!1 var1137)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (= (ite var310 1 0) 0)) ; Cond: z0 == 0 
(define-const var2202 String " limit ?") ; Statement: $r7 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var945 String (append/672562846 var3356 var2202)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3356!1 String)
(assert (= var3356!1 (str.++ var3356 var2202)))
(assert true)
(define-const var406 String (toString/-2075883882 var945)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3574_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2577=org.hibernate.dialect.MySQLDialect$1, var1007=r6, var1137=r2, var2897=null_type, var1437=org.hibernate.engine.spi.RowSelection, var3994=r0, var3574=org.hibernate.dialect.pagination.LimitHelper, var310=z0, var1572=$r1, var3356=$r3, var2202=$r7, var945=$r4, var406=$r5}
; {org.hibernate.dialect.MySQLDialect$1=var2577, r6=var1007, r2=var1137, null_type=var2897, org.hibernate.engine.spi.RowSelection=var1437, r0=var3994, org.hibernate.dialect.pagination.LimitHelper=var3574, z0=var310, $r1=var1572, $r3=var3356, $r7=var2202, $r4=var945, $r5=var406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3