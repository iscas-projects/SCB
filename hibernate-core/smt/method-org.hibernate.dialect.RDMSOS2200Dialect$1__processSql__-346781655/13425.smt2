(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2519 0)
(declare-sort var1741 0)
(declare-sort var432 0)
(declare-sort var1608 0)
(declare-sort var4 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1608_hasFirstRow/-2097898482 (var432) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var4 var432) Int)
(declare-fun cast-from-var2519-to-var4 (var2519) var4)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2519 var2519)
(declare-const null-String String)
(declare-const null-var432 var432)
(declare-const var363 var2519) ; Statement: r4 := @this: org.hibernate.dialect.RDMSOS2200Dialect$1 
(assert (not (= var363 null-var2519)))
(declare-const var2655 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2655 null-String)))
(declare-const var2638 var432) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2638 null-var432)))
(define-const var2081 Bool (var1608_hasFirstRow/-2097898482 var2638)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2081 1 0) 0)) ; Cond: z0 == 0 
(define-const var1738 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1738)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1738!1 String)
(assert (= var1738!1 ""))
(assert true)
(define-const var1185 String (append/672562846 var1738!1 var2655)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1738!2 String)
(assert (= var1738!2 (str.++ var1738!1 var2655)))
(assert true)
(define-const var682 String (append/672562846 var1185 " fetch first ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var1185!1 String)
(assert (= var1185!1 (str.++ var1185 " fetch first ")))
(assert true)
(define-const var2516 Int (getMaxOrLimit/1324675775 (cast-from-var2519-to-var4 var363) var2638)) ; Statement: $i0 = virtualinvoke r4.<org.hibernate.dialect.RDMSOS2200Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var839 String (append/-1001720160 var682 var2516)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var682!1 String)
(assert (str.prefixof var682 var682!1))
(assert true)
(define-const var2618 String (append/672562846 var839 " rows only ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ") 
(declare-const var839!1 String)
(assert (= var839!1 (str.++ var839 " rows only ")))
(assert true)
(define-const var3533 String (toString/-2075883882 var2618)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1608_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var2519-to-var4=([org.hibernate.dialect.RDMSOS2200Dialect$1], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2519=org.hibernate.dialect.RDMSOS2200Dialect$1, var363=r4, var2655=r2, var1741=null_type, var432=org.hibernate.engine.spi.RowSelection, var2638=r0, var1608=org.hibernate.dialect.pagination.LimitHelper, var2081=z0, var1738=$r1, var1185=$r3, var682=$r5, var4=org.hibernate.dialect.pagination.AbstractLimitHandler, var2516=$i0, var839=$r6, var2618=$r7, var3533=$r8}
; {org.hibernate.dialect.RDMSOS2200Dialect$1=var2519, r4=var363, r2=var2655, null_type=var1741, org.hibernate.engine.spi.RowSelection=var432, r0=var2638, org.hibernate.dialect.pagination.LimitHelper=var1608, z0=var2081, $r1=var1738, $r3=var1185, $r5=var682, org.hibernate.dialect.pagination.AbstractLimitHandler=var4, $i0=var2516, $r6=var839, $r7=var2618, $r8=var3533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.RDMSOS2200Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i0 = virtualinvoke r4.<org.hibernate.dialect.RDMSOS2200Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2