(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort var1869 0)
(declare-sort var2260 0)
(declare-sort var383 0)
(declare-sort var483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var383_hasFirstRow/-2097898482 (var2260) Bool)
(declare-fun this$0/-1386105081 (var2236) var483)
(declare-fun var483_access$000/-1432053604 (var483) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2236 var2236)
(declare-const null-String String)
(declare-const null-var2260 var2260)
(declare-const var589 var2236) ; Statement: r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler 
(assert (not (= var589 null-var2236)))
(declare-const var2209 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2209 null-String)))
(declare-const var2741 var2260) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2741 null-var2260)))
(define-const var2809 Bool (var383_hasFirstRow/-2097898482 var2741)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var303 var483 (this$0/-1386105081 var589)) ; Statement: $r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0> 
(define-const var409 Int (var483_access$000/-1432053604 var303)) ; Statement: $i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2) 
 ; Statement: if $i0 >= 200 goto $r3 = new java.lang.StringBuilder 
(assert (>= var409 200)) ; Cond: $i0 >= 200 
(define-const var3596 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3596)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3596!1 String)
(assert (= var3596!1 ""))
(assert true)
(define-const var3928 String (append/672562846 var3596!1 var2209)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3596!2 String)
(assert (= var3596!2 (str.++ var3596!1 var2209)))
 ; Statement: if z0 == 0 goto $r15 = " limit ?" 
(assert (= (ite var2809 1 0) 0)) ; Cond: z0 == 0 
(define-const var812 String " limit ?") ; Statement: $r15 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var1019 String (append/672562846 var3928 var812)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3928!1 String)
(assert (= var3928!1 (str.++ var3928 var812)))
(assert true)
(define-const var1168 String (toString/-2075883882 var1019)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var383_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), this$0/-1386105081=([org.hibernate.dialect.HSQLDialect$HSQLLimitHandler], org.hibernate.dialect.HSQLDialect), var483_access$000/-1432053604=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2236=org.hibernate.dialect.HSQLDialect$HSQLLimitHandler, var589=r1, var2209=r4, var1869=null_type, var2260=org.hibernate.engine.spi.RowSelection, var2741=r0, var383=org.hibernate.dialect.pagination.LimitHelper, var2809=z0, var483=org.hibernate.dialect.HSQLDialect, var303=$r2, var409=$i0, var3596=$r3, var3928=$r5, var812=$r15, var1019=$r6, var1168=$r7}
; {org.hibernate.dialect.HSQLDialect$HSQLLimitHandler=var2236, r1=var589, r4=var2209, null_type=var1869, org.hibernate.engine.spi.RowSelection=var2260, r0=var2741, org.hibernate.dialect.pagination.LimitHelper=var383, z0=var2809, org.hibernate.dialect.HSQLDialect=var483, $r2=var303, $i0=var409, $r3=var3596, $r5=var3928, $r15=var812, $r6=var1019, $r7=var1168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0>;	$i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2);	if $i0 >= 200 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	if z0 == 0 goto $r15 = " limit ?";	$r15 = " limit ?";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4