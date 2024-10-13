(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var206 0)
(declare-sort var948 0)
(declare-sort var3610 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3454_hasFirstRow/-2097898482 (var3610) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var206 var206)
(declare-const null-String String)
(declare-const null-var3610 var3610)
(declare-const var406 var206) ; Statement: r6 := @this: org.hibernate.dialect.CockroachDB192Dialect$1 
(assert (not (= var406 null-var206)))
(declare-const var2956 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2956 null-String)))
(declare-const var2864 var3610) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2864 null-var3610)))
(define-const var1051 Bool (var3454_hasFirstRow/-2097898482 var2864)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var577 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var577)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var577!1 String)
(assert (= var577!1 ""))
(assert true)
(define-const var3302 String (append/672562846 var577!1 var2956)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var577!2 String)
(assert (= var577!2 (str.++ var577!1 var2956)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (not (= (ite var1051 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2512 String " limit ? offset ?") ; Statement: $r7 = " limit ? offset ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2866 String (append/672562846 var3302 var2512)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3302!1 String)
(assert (= var3302!1 (str.++ var3302 var2512)))
(assert true)
(define-const var395 String (toString/-2075883882 var2866)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3454_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var206=org.hibernate.dialect.CockroachDB192Dialect$1, var406=r6, var2956=r2, var948=null_type, var3610=org.hibernate.engine.spi.RowSelection, var2864=r0, var3454=org.hibernate.dialect.pagination.LimitHelper, var1051=z0, var577=$r1, var3302=$r3, var2512=$r7, var2866=$r4, var395=$r5}
; {org.hibernate.dialect.CockroachDB192Dialect$1=var206, r6=var406, r2=var2956, null_type=var948, org.hibernate.engine.spi.RowSelection=var3610, r0=var2864, org.hibernate.dialect.pagination.LimitHelper=var3454, z0=var1051, $r1=var577, $r3=var3302, $r7=var2512, $r4=var2866, $r5=var395}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.CockroachDB192Dialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ? offset ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3