(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2013 0)
(declare-sort var1462 0)
(declare-sort var3729 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2619_hasFirstRow/-2097898482 (var3729) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2013 var2013)
(declare-const null-String String)
(declare-const null-var3729 var3729)
(declare-const var1440 var2013) ; Statement: r6 := @this: org.hibernate.dialect.AbstractHANADialect$1 
(assert (not (= var1440 null-var2013)))
(declare-const var2071 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2071 null-String)))
(declare-const var2497 var3729) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2497 null-var3729)))
(define-const var2995 Bool (var2619_hasFirstRow/-2097898482 var2497)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var26 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var26)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var26!1 String)
(assert (= var26!1 ""))
(assert true)
(define-const var2242 String (append/672562846 var26!1 var2071)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var26!2 String)
(assert (= var26!2 (str.++ var26!1 var2071)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (= (ite var2995 1 0) 0)) ; Cond: z0 == 0 
(define-const var94 String " limit ?") ; Statement: $r7 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var3445 String (append/672562846 var2242 var94)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 var94)))
(assert true)
(define-const var3038 String (toString/-2075883882 var3445)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2619_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2013=org.hibernate.dialect.AbstractHANADialect$1, var1440=r6, var2071=r2, var1462=null_type, var3729=org.hibernate.engine.spi.RowSelection, var2497=r0, var2619=org.hibernate.dialect.pagination.LimitHelper, var2995=z0, var26=$r1, var2242=$r3, var94=$r7, var3445=$r4, var3038=$r5}
; {org.hibernate.dialect.AbstractHANADialect$1=var2013, r6=var1440, r2=var2071, null_type=var1462, org.hibernate.engine.spi.RowSelection=var3729, r0=var2497, org.hibernate.dialect.pagination.LimitHelper=var2619, z0=var2995, $r1=var26, $r3=var2242, $r7=var94, $r4=var3445, $r5=var3038}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.AbstractHANADialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3