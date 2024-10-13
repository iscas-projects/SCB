(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort var739 0)
(declare-sort var2535 0)
(declare-sort var2317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2317_hasFirstRow/-2097898482 (var2535) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3645 var3645)
(declare-const null-String String)
(declare-const null-var2535 var2535)
(declare-const var817 var3645) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect$1 
(assert (not (= var817 null-var3645)))
(declare-const var3076 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3076 null-String)))
(declare-const var3192 var2535) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3192 null-var2535)))
(define-const var1119 Bool (var2317_hasFirstRow/-2097898482 var3192)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var3319 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3319)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3319!1 String)
(assert (= var3319!1 ""))
(assert true)
(define-const var2647 String (append/672562846 var3319!1 var3076)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3319!2 String)
(assert (= var3319!2 (str.++ var3319!1 var3076)))
 ; Statement: if z0 == 0 goto $r7 = " limit ?" 
(assert (not (= (ite var1119 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var826 String " limit ?, ?") ; Statement: $r7 = " limit ?, ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1174 String (append/672562846 var2647 var826)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2647!1 String)
(assert (= var2647!1 (str.++ var2647 var826)))
(assert true)
(define-const var969 String (toString/-2075883882 var1174)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2317_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3645=org.hibernate.dialect.MySQLDialect$1, var817=r6, var3076=r2, var739=null_type, var2535=org.hibernate.engine.spi.RowSelection, var3192=r0, var2317=org.hibernate.dialect.pagination.LimitHelper, var1119=z0, var3319=$r1, var2647=$r3, var826=$r7, var1174=$r4, var969=$r5}
; {org.hibernate.dialect.MySQLDialect$1=var3645, r6=var817, r2=var3076, null_type=var739, org.hibernate.engine.spi.RowSelection=var2535, r0=var3192, org.hibernate.dialect.pagination.LimitHelper=var2317, z0=var1119, $r1=var3319, $r3=var2647, $r7=var826, $r4=var1174, $r5=var969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " limit ?";	$r7 = " limit ?, ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3