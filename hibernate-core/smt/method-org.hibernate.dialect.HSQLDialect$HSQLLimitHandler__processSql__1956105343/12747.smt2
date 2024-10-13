(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3939 0)
(declare-sort var1983 0)
(declare-sort var645 0)
(declare-sort var145 0)
(declare-sort var3512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var145_hasFirstRow/-2097898482 (var645) Bool)
(declare-fun this$0/-1386105081 (var3939) var3512)
(declare-fun var3512_access$000/-1432053604 (var3512) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3939 var3939)
(declare-const null-String String)
(declare-const null-var645 var645)
(declare-const var2474 var3939) ; Statement: r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler 
(assert (not (= var2474 null-var3939)))
(declare-const var2165 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2165 null-String)))
(declare-const var1186 var645) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1186 null-var645)))
(define-const var328 Bool (var145_hasFirstRow/-2097898482 var1186)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var3790 var3512 (this$0/-1386105081 var2474)) ; Statement: $r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0> 
(define-const var2895 Int (var3512_access$000/-1432053604 var3790)) ; Statement: $i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2) 
 ; Statement: if $i0 >= 200 goto $r3 = new java.lang.StringBuilder 
(assert (>= var2895 200)) ; Cond: $i0 >= 200 
(define-const var600 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(assert true)
(define-const var3496 String (append/672562846 var600!1 var2165)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 var2165)))
 ; Statement: if z0 == 0 goto $r15 = " limit ?" 
(assert (not (= (ite var328 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var844 String " offset ? limit ?") ; Statement: $r15 = " offset ? limit ?" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1174 String (append/672562846 var3496 var844)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3496!1 String)
(assert (= var3496!1 (str.++ var3496 var844)))
(assert true)
(define-const var722 String (toString/-2075883882 var1174)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var145_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), this$0/-1386105081=([org.hibernate.dialect.HSQLDialect$HSQLLimitHandler], org.hibernate.dialect.HSQLDialect), var3512_access$000/-1432053604=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3939=org.hibernate.dialect.HSQLDialect$HSQLLimitHandler, var2474=r1, var2165=r4, var1983=null_type, var645=org.hibernate.engine.spi.RowSelection, var1186=r0, var145=org.hibernate.dialect.pagination.LimitHelper, var328=z0, var3512=org.hibernate.dialect.HSQLDialect, var3790=$r2, var2895=$i0, var600=$r3, var3496=$r5, var844=$r15, var1174=$r6, var722=$r7}
; {org.hibernate.dialect.HSQLDialect$HSQLLimitHandler=var3939, r1=var2474, r4=var2165, null_type=var1983, org.hibernate.engine.spi.RowSelection=var645, r0=var1186, org.hibernate.dialect.pagination.LimitHelper=var145, z0=var328, org.hibernate.dialect.HSQLDialect=var3512, $r2=var3790, $i0=var2895, $r3=var600, $r5=var3496, $r15=var844, $r6=var1174, $r7=var722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0>;	$i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2);	if $i0 >= 200 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	if z0 == 0 goto $r15 = " limit ?";	$r15 = " offset ? limit ?";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4