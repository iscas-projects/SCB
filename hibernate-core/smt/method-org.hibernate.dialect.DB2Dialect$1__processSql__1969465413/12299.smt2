(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3903 0)
(declare-sort var133 0)
(declare-sort var3250 0)
(declare-sort var1476 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1476_hasFirstRow/-2097898482 (var3250) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var1472 var3250) Int)
(declare-fun cast-from-var3903-to-var1472 (var3903) var1472)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3903 var3903)
(declare-const null-String String)
(declare-const null-var3250 var3250)
(declare-const var3264 var3903) ; Statement: r4 := @this: org.hibernate.dialect.DB2Dialect$1 
(assert (not (= var3264 null-var3903)))
(declare-const var984 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var984 null-String)))
(declare-const var675 var3250) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var675 null-var3250)))
(define-const var2644 Bool (var1476_hasFirstRow/-2097898482 var675)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2644 1 0) 0)) ; Cond: $z0 == 0 
(define-const var432 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var432)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var432!1 String)
(assert (= var432!1 ""))
(assert true)
(define-const var2151 String (append/672562846 var432!1 var984)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var432!2 String)
(assert (= var432!2 (str.++ var432!1 var984)))
(assert true)
(define-const var772 String (append/672562846 var2151 " fetch first ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var2151!1 String)
(assert (= var2151!1 (str.++ var2151 " fetch first ")))
(assert true)
(define-const var2802 Int (getMaxOrLimit/1324675775 (cast-from-var3903-to-var1472 var3264) var675)) ; Statement: $i0 = virtualinvoke r4.<org.hibernate.dialect.DB2Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var2280 String (append/-1001720160 var772 var2802)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var772!1 String)
(assert (str.prefixof var772 var772!1))
(assert true)
(define-const var669 String (append/672562846 var2280 " rows only")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var2280!1 String)
(assert (= var2280!1 (str.++ var2280 " rows only")))
(assert true)
(define-const var3498 String (toString/-2075883882 var669)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1476_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var3903-to-var1472=([org.hibernate.dialect.DB2Dialect$1], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3903=org.hibernate.dialect.DB2Dialect$1, var3264=r4, var984=r2, var133=null_type, var3250=org.hibernate.engine.spi.RowSelection, var675=r0, var1476=org.hibernate.dialect.pagination.LimitHelper, var2644=$z0, var432=$r1, var2151=$r3, var772=$r5, var1472=org.hibernate.dialect.pagination.AbstractLimitHandler, var2802=$i0, var2280=$r6, var669=$r7, var3498=$r8}
; {org.hibernate.dialect.DB2Dialect$1=var3903, r4=var3264, r2=var984, null_type=var133, org.hibernate.engine.spi.RowSelection=var3250, r0=var675, org.hibernate.dialect.pagination.LimitHelper=var1476, $z0=var2644, $r1=var432, $r3=var2151, $r5=var772, org.hibernate.dialect.pagination.AbstractLimitHandler=var1472, $i0=var2802, $r6=var2280, $r7=var669, $r8=var3498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.DB2Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	$z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i0 = virtualinvoke r4.<org.hibernate.dialect.DB2Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2