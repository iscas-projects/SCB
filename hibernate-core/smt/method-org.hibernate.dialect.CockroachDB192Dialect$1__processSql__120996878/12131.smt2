(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var348 0)
(declare-sort var3394 0)
(declare-sort var2924 0)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2233_hasFirstRow/-2097898482 (var2924) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var348 var348)
(declare-const null-String String)
(declare-const null-var2924 var2924)
(declare-const var2411 var348) ; Statement: r6 := @this: org.hibernate.dialect.CockroachDB192Dialect$1 
(assert (not (= var2411 null-var348)))
(declare-const var3216 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3216 null-String)))
(declare-const var2815 var2924) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2815 null-var2924)))
(define-const var2228 Bool (var2233_hasFirstRow/-2097898482 var2815)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1436 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1436)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1436!1 String)
(assert (= var1436!1 ""))
(assert true)
(define-const var3578 String (append/672562846 var1436!1 var3216)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1436!2 String)
(assert (= var1436!2 (str.++ var1436!1 var3216)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (= (ite var2228 1 0) 0)) ; Cond: z0 == 0 
(define-const var2251 String " limit ?") ; Statement: $r7 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var1338 String (append/672562846 var3578 var2251)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3578!1 String)
(assert (= var3578!1 (str.++ var3578 var2251)))
(assert true)
(define-const var1769 String (toString/-2075883882 var1338)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2233_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var348=org.hibernate.dialect.CockroachDB192Dialect$1, var2411=r6, var3216=r2, var3394=null_type, var2924=org.hibernate.engine.spi.RowSelection, var2815=r0, var2233=org.hibernate.dialect.pagination.LimitHelper, var2228=z0, var1436=$r1, var3578=$r3, var2251=$r7, var1338=$r4, var1769=$r5}
; {org.hibernate.dialect.CockroachDB192Dialect$1=var348, r6=var2411, r2=var3216, null_type=var3394, org.hibernate.engine.spi.RowSelection=var2924, r0=var2815, org.hibernate.dialect.pagination.LimitHelper=var2233, z0=var2228, $r1=var1436, $r3=var3578, $r7=var2251, $r4=var1338, $r5=var1769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.CockroachDB192Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3