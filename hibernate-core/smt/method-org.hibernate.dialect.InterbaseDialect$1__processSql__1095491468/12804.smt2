(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2108 0)
(declare-sort var1243 0)
(declare-sort var3393 0)
(declare-sort var1577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1577_hasFirstRow/-2097898482 (var3393) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2108 var2108)
(declare-const null-String String)
(declare-const null-var3393 var3393)
(declare-const var2177 var2108) ; Statement: r8 := @this: org.hibernate.dialect.InterbaseDialect$1 
(assert (not (= var2177 null-var2108)))
(declare-const var1713 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1713 null-String)))
(declare-const var2240 var3393) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2240 null-var3393)))
(define-const var629 Bool (var1577_hasFirstRow/-2097898482 var2240)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var629 1 0) 0)) ; Cond: z0 == 0 
(define-const var1793 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1793)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1793!1 String)
(assert (= var1793!1 ""))
(assert true)
(define-const var3535 String (append/672562846 var1793!1 var1713)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1793!2 String)
(assert (= var1793!2 (str.++ var1793!1 var1713)))
(assert true)
(define-const var1666 String (append/672562846 var3535 " rows ?")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ?") 
(declare-const var3535!1 String)
(assert (= var3535!1 (str.++ var3535 " rows ?")))
(assert true)
(define-const var3171 String (toString/-2075883882 var1666)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1577_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2108=org.hibernate.dialect.InterbaseDialect$1, var2177=r8, var1713=r2, var1243=null_type, var3393=org.hibernate.engine.spi.RowSelection, var2240=r0, var1577=org.hibernate.dialect.pagination.LimitHelper, var629=z0, var1793=$r1, var3535=$r3, var1666=$r4, var3171=$r9}
; {org.hibernate.dialect.InterbaseDialect$1=var2108, r8=var2177, r2=var1713, null_type=var1243, org.hibernate.engine.spi.RowSelection=var3393, r0=var2240, org.hibernate.dialect.pagination.LimitHelper=var1577, z0=var629, $r1=var1793, $r3=var3535, $r4=var1666, $r9=var3171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.InterbaseDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ?");	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3