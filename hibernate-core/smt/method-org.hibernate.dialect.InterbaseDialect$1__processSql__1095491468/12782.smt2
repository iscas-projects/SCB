(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1586 0)
(declare-sort var3168 0)
(declare-sort var999 0)
(declare-sort var850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var850_hasFirstRow/-2097898482 (var999) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1586 var1586)
(declare-const null-String String)
(declare-const null-var999 var999)
(declare-const var367 var1586) ; Statement: r8 := @this: org.hibernate.dialect.InterbaseDialect$1 
(assert (not (= var367 null-var1586)))
(declare-const var2276 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2276 null-String)))
(declare-const var3060 var999) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3060 null-var999)))
(define-const var1544 Bool (var850_hasFirstRow/-2097898482 var3060)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
 ; Statement: if z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1544 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var765 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var765)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var765!1 String)
(assert (= var765!1 ""))
(assert true)
(define-const var1994 String (append/672562846 var765!1 var2276)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var765!2 String)
(assert (= var765!2 (str.++ var765!1 var2276)))
(assert true)
(define-const var1693 String (append/672562846 var1994 " rows ? to ?")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ? to ?") 
(declare-const var1994!1 String)
(assert (= var1994!1 (str.++ var1994 " rows ? to ?")))
(assert true)
(define-const var1117 String (toString/-2075883882 var1693)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r9] 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var850_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1586=org.hibernate.dialect.InterbaseDialect$1, var367=r8, var2276=r2, var3168=null_type, var999=org.hibernate.engine.spi.RowSelection, var3060=r0, var850=org.hibernate.dialect.pagination.LimitHelper, var1544=z0, var765=$r5, var1994=$r6, var1693=$r7, var1117=$r9}
; {org.hibernate.dialect.InterbaseDialect$1=var1586, r8=var367, r2=var2276, null_type=var3168, org.hibernate.engine.spi.RowSelection=var999, r0=var3060, org.hibernate.dialect.pagination.LimitHelper=var850, z0=var1544, $r5=var765, $r6=var1994, $r7=var1693, $r9=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.InterbaseDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	if z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ? to ?");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r9];	return $r9
;block_num 3