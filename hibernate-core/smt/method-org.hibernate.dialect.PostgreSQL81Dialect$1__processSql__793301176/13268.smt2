(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2593 0)
(declare-sort var3514 0)
(declare-sort var3578 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var34_hasFirstRow/-2097898482 (var3578) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2593 var2593)
(declare-const null-String String)
(declare-const null-var3578 var3578)
(declare-const var408 var2593) ; Statement: r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect$1 
(assert (not (= var408 null-var2593)))
(declare-const var552 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var552 null-String)))
(declare-const var2799 var3578) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2799 null-var3578)))
(define-const var3433 Bool (var34_hasFirstRow/-2097898482 var2799)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var3359 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3359)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3359!1 String)
(assert (= var3359!1 ""))
(assert true)
(define-const var2657 String (append/672562846 var3359!1 var552)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3359!2 String)
(assert (= var3359!2 (str.++ var3359!1 var552)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (not (= (ite var3433 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3211 String " limit ? offset ?") ; Statement: $r7 = " limit ? offset ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3665 String (append/672562846 var2657 var3211)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2657!1 String)
(assert (= var2657!1 (str.++ var2657 var3211)))
(assert true)
(define-const var80 String (toString/-2075883882 var3665)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var34_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2593=org.hibernate.dialect.PostgreSQL81Dialect$1, var408=r6, var552=r2, var3514=null_type, var3578=org.hibernate.engine.spi.RowSelection, var2799=r0, var34=org.hibernate.dialect.pagination.LimitHelper, var3433=z0, var3359=$r1, var2657=$r3, var3211=$r7, var3665=$r4, var80=$r5}
; {org.hibernate.dialect.PostgreSQL81Dialect$1=var2593, r6=var408, r2=var552, null_type=var3514, org.hibernate.engine.spi.RowSelection=var3578, r0=var2799, org.hibernate.dialect.pagination.LimitHelper=var34, z0=var3433, $r1=var3359, $r3=var2657, $r7=var3211, $r4=var3665, $r5=var80}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.PostgreSQL81Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ? offset ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3