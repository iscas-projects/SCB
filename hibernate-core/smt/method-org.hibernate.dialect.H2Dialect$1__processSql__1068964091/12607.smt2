(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var402 0)
(declare-sort var2126 0)
(declare-sort var143 0)
(declare-sort var2827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2827_hasFirstRow/-2097898482 (var143) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var402 var402)
(declare-const null-String String)
(declare-const null-var143 var143)
(declare-const var2419 var402) ; Statement: r6 := @this: org.hibernate.dialect.H2Dialect$1 
(assert (not (= var2419 null-var402)))
(declare-const var298 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var298 null-String)))
(declare-const var1862 var143) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1862 null-var143)))
(define-const var2821 Bool (var2827_hasFirstRow/-2097898482 var1862)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1980 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1980)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1980!1 String)
(assert (= var1980!1 ""))
(assert true)
(define-const var344 String (append/672562846 var1980!1 var298)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1980!2 String)
(assert (= var1980!2 (str.++ var1980!1 var298)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (not (= (ite var2821 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1663 String " limit ? offset ?") ; Statement: $r7 = " limit ? offset ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3747 String (append/672562846 var344 var1663)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var344!1 String)
(assert (= var344!1 (str.++ var344 var1663)))
(assert true)
(define-const var2042 String (toString/-2075883882 var3747)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2827_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var402=org.hibernate.dialect.H2Dialect$1, var2419=r6, var298=r2, var2126=null_type, var143=org.hibernate.engine.spi.RowSelection, var1862=r0, var2827=org.hibernate.dialect.pagination.LimitHelper, var2821=z0, var1980=$r1, var344=$r3, var1663=$r7, var3747=$r4, var2042=$r5}
; {org.hibernate.dialect.H2Dialect$1=var402, r6=var2419, r2=var298, null_type=var2126, org.hibernate.engine.spi.RowSelection=var143, r0=var1862, org.hibernate.dialect.pagination.LimitHelper=var2827, z0=var2821, $r1=var1980, $r3=var344, $r7=var1663, $r4=var3747, $r5=var2042}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.H2Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ? offset ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3