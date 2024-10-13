(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3593 0)
(declare-sort var626 0)
(declare-sort var3835 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var2833 var3835) Int)
(declare-fun cast-from-var3593-to-var2833 (var3593) var2833)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3593 var3593)
(declare-const null-String String)
(declare-const null-var3835 var3835)
(declare-const var8 var3593) ; Statement: r3 := @this: org.hibernate.dialect.RDMSOS2200Dialect$2 
(assert (not (= var8 null-var3593)))
(declare-const var809 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var809 null-String)))
(declare-const var29 var3835) ; Statement: r4 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var29 null-var3835)))
(define-const var3279 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3279)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3279!1 String)
(assert (= var3279!1 ""))
(assert true)
(define-const var3101 String (append/672562846 var3279!1 var809)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3279!2 String)
(assert (= var3279!2 (str.++ var3279!1 var809)))
(assert true)
(define-const var3132 String (append/672562846 var3101 " fetch first ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 " fetch first ")))
(assert true)
(define-const var526 Int (getMaxOrLimit/1324675775 (cast-from-var3593-to-var2833 var8) var29)) ; Statement: $i0 = virtualinvoke r3.<org.hibernate.dialect.RDMSOS2200Dialect$2: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r4) 
(assert true)
(define-const var3807 String (append/-1001720160 var3132 var526)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3132!1 String)
(assert (str.prefixof var3132 var3132!1))
(assert true)
(define-const var1970 String (append/672562846 var3807 " rows only ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ") 
(declare-const var3807!1 String)
(assert (= var3807!1 (str.++ var3807 " rows only ")))
(assert true)
(define-const var1303 String (toString/-2075883882 var1970)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var3593-to-var2833=([org.hibernate.dialect.RDMSOS2200Dialect$2], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3593=org.hibernate.dialect.RDMSOS2200Dialect$2, var8=r3, var809=r1, var626=null_type, var3835=org.hibernate.engine.spi.RowSelection, var29=r4, var3279=$r0, var3101=$r2, var3132=$r5, var2833=org.hibernate.dialect.pagination.AbstractLimitHandler, var526=$i0, var3807=$r6, var1970=$r7, var1303=$r8}
; {org.hibernate.dialect.RDMSOS2200Dialect$2=var3593, r3=var8, r1=var809, null_type=var626, org.hibernate.engine.spi.RowSelection=var3835, r4=var29, $r0=var3279, $r2=var3101, $r5=var3132, org.hibernate.dialect.pagination.AbstractLimitHandler=var2833, $i0=var526, $r6=var3807, $r7=var1970, $r8=var1303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.RDMSOS2200Dialect$2;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i0 = virtualinvoke r3.<org.hibernate.dialect.RDMSOS2200Dialect$2: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1