(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2720 0)
(declare-sort var509 0)
(declare-sort var3161 0)
(declare-sort var3069 0)
(declare-sort var2496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3069_hasFirstRow/-2097898482 (var3161) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var2496 var3161) Int)
(declare-fun cast-from-var2720-to-var2496 (var2720) var2496)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2720 var2720)
(declare-const null-String String)
(declare-const null-var3161 var3161)
(declare-const var1467 var2720) ; Statement: r4 := @this: org.hibernate.dialect.DB2390Dialect$1 
(assert (not (= var1467 null-var2720)))
(declare-const var10 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var10 null-String)))
(declare-const var3810 var3161) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3810 null-var3161)))
(define-const var1034 Bool (var3069_hasFirstRow/-2097898482 var3810)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1034 1 0) 0)) ; Cond: $z0 == 0 
(define-const var382 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var382)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var382!1 String)
(assert (= var382!1 ""))
(assert true)
(define-const var680 String (append/672562846 var382!1 var10)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var382!2 String)
(assert (= var382!2 (str.++ var382!1 var10)))
(assert true)
(define-const var737 String (append/672562846 var680 " fetch first ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 " fetch first ")))
(assert true)
(define-const var978 Int (getMaxOrLimit/1324675775 (cast-from-var2720-to-var2496 var1467) var3810)) ; Statement: $i0 = virtualinvoke r4.<org.hibernate.dialect.DB2390Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0) 
(assert true)
(define-const var1824 String (append/-1001720160 var737 var978)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var737!1 String)
(assert (str.prefixof var737 var737!1))
(assert true)
(define-const var31 String (append/672562846 var1824 " rows only")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var1824!1 String)
(assert (= var1824!1 (str.++ var1824 " rows only")))
(assert true)
(define-const var3543 String (toString/-2075883882 var31)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3069_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var2720-to-var2496=([org.hibernate.dialect.DB2390Dialect$1], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2720=org.hibernate.dialect.DB2390Dialect$1, var1467=r4, var10=r2, var509=null_type, var3161=org.hibernate.engine.spi.RowSelection, var3810=r0, var3069=org.hibernate.dialect.pagination.LimitHelper, var1034=$z0, var382=$r1, var680=$r3, var737=$r5, var2496=org.hibernate.dialect.pagination.AbstractLimitHandler, var978=$i0, var1824=$r6, var31=$r7, var3543=$r8}
; {org.hibernate.dialect.DB2390Dialect$1=var2720, r4=var1467, r2=var10, null_type=var509, org.hibernate.engine.spi.RowSelection=var3161, r0=var3810, org.hibernate.dialect.pagination.LimitHelper=var3069, $z0=var1034, $r1=var382, $r3=var680, $r5=var737, org.hibernate.dialect.pagination.AbstractLimitHandler=var2496, $i0=var978, $r6=var1824, $r7=var31, $r8=var3543}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.DB2390Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	$z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i0 = virtualinvoke r4.<org.hibernate.dialect.DB2390Dialect$1: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2