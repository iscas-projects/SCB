(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3136 0)
(declare-sort var2510 0)
(declare-sort var58 0)
(declare-sort var153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMaxOrLimit/1324675775 (var153 var58) Int)
(declare-fun cast-from-var3136-to-var153 (var3136) var153)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3136 var3136)
(declare-const null-String String)
(declare-const null-var58 var58)
(declare-const var1352 var3136) ; Statement: r3 := @this: org.hibernate.dialect.DB2390Dialect$2 
(assert (not (= var1352 null-var3136)))
(declare-const var3969 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3969 null-String)))
(declare-const var487 var58) ; Statement: r4 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var487 null-var58)))
(define-const var3110 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3110)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3110!1 String)
(assert (= var3110!1 ""))
(assert true)
(define-const var2005 String (append/672562846 var3110!1 var3969)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3110!2 String)
(assert (= var3110!2 (str.++ var3110!1 var3969)))
(assert true)
(define-const var3499 String (append/672562846 var2005 " fetch first ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var2005!1 String)
(assert (= var2005!1 (str.++ var2005 " fetch first ")))
(assert true)
(define-const var2508 Int (getMaxOrLimit/1324675775 (cast-from-var3136-to-var153 var1352) var487)) ; Statement: $i0 = virtualinvoke r3.<org.hibernate.dialect.DB2390Dialect$2: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r4) 
(assert true)
(define-const var369 String (append/-1001720160 var3499 var2508)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3499!1 String)
(assert (str.prefixof var3499 var3499!1))
(assert true)
(define-const var3608 String (append/672562846 var369 " rows only")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var369!1 String)
(assert (= var369!1 (str.++ var369 " rows only")))
(assert true)
(define-const var738 String (toString/-2075883882 var3608)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var3136-to-var153=([org.hibernate.dialect.DB2390Dialect$2], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3136=org.hibernate.dialect.DB2390Dialect$2, var1352=r3, var3969=r1, var2510=null_type, var58=org.hibernate.engine.spi.RowSelection, var487=r4, var3110=$r0, var2005=$r2, var3499=$r5, var153=org.hibernate.dialect.pagination.AbstractLimitHandler, var2508=$i0, var369=$r6, var3608=$r7, var738=$r8}
; {org.hibernate.dialect.DB2390Dialect$2=var3136, r3=var1352, r1=var3969, null_type=var2510, org.hibernate.engine.spi.RowSelection=var58, r4=var487, $r0=var3110, $r2=var2005, $r5=var3499, org.hibernate.dialect.pagination.AbstractLimitHandler=var153, $i0=var2508, $r6=var369, $r7=var3608, $r8=var738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.DB2390Dialect$2;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i0 = virtualinvoke r3.<org.hibernate.dialect.DB2390Dialect$2: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1