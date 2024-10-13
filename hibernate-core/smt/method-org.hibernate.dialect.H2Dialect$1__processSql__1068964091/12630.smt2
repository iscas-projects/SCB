(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3751 0)
(declare-sort var1825 0)
(declare-sort var3215 0)
(declare-sort var195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var195_hasFirstRow/-2097898482 (var3215) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3751 var3751)
(declare-const null-String String)
(declare-const null-var3215 var3215)
(declare-const var282 var3751) ; Statement: r6 := @this: org.hibernate.dialect.H2Dialect$1 
(assert (not (= var282 null-var3751)))
(declare-const var65 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var65 null-String)))
(declare-const var2102 var3215) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2102 null-var3215)))
(define-const var3086 Bool (var195_hasFirstRow/-2097898482 var2102)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var933 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var933)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var933!1 String)
(assert (= var933!1 ""))
(assert true)
(define-const var509 String (append/672562846 var933!1 var65)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var933!2 String)
(assert (= var933!2 (str.++ var933!1 var65)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (= (ite var3086 1 0) 0)) ; Cond: z0 == 0 
(define-const var2142 String " limit ?") ; Statement: $r7 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var3370 String (append/672562846 var509 var2142)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var509!1 String)
(assert (= var509!1 (str.++ var509 var2142)))
(assert true)
(define-const var547 String (toString/-2075883882 var3370)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var195_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3751=org.hibernate.dialect.H2Dialect$1, var282=r6, var65=r2, var1825=null_type, var3215=org.hibernate.engine.spi.RowSelection, var2102=r0, var195=org.hibernate.dialect.pagination.LimitHelper, var3086=z0, var933=$r1, var509=$r3, var2142=$r7, var3370=$r4, var547=$r5}
; {org.hibernate.dialect.H2Dialect$1=var3751, r6=var282, r2=var65, null_type=var1825, org.hibernate.engine.spi.RowSelection=var3215, r0=var2102, org.hibernate.dialect.pagination.LimitHelper=var195, z0=var3086, $r1=var933, $r3=var509, $r7=var2142, $r4=var3370, $r5=var547}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.H2Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3