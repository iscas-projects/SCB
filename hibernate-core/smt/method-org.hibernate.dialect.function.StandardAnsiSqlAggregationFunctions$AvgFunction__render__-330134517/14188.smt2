(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1791 0)
(declare-sort var3443 0)
(declare-sort var2973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun renderArgument/2045670558 (var1791 String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1791 var1791)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2973 var2973)
(declare-const var2416 var1791) ; Statement: r1 := @this: org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction 
(assert (not (= var2416 null-var1791)))
(declare-const var3271 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3271 null-Int)))
(declare-const var1467 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1467 null-String)))
(declare-const var649 var2973) ; Statement: r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var649 null-var2973)))
(define-const var2903 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2903)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2903!1 String)
(assert (= var2903!1 ""))
(assert true)
(define-const var3679 String (append/672562846 var2903!1 "avg(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("avg(") 
(declare-const var2903!2 String)
(assert (= var2903!2 (str.++ var2903!1 "avg(")))
(assert true)
(define-const var3587 String (renderArgument/2045670558 var2416 var1467 var3271)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction: java.lang.String renderArgument(java.lang.String,int)>(r2, i0) 
(assert true)
(define-const var1604 String (append/672562846 var3679 var3587)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3679!1 String)
(assert (= var3679!1 (str.++ var3679 var3587)))
(assert true)
(define-const var525 String (append/672562846 var1604 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1604!1 String)
(assert (= var1604!1 (str.++ var1604 ")")))
(assert true)
(define-const var2468 String (toString/-2075883882 var525)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), renderArgument/2045670558=([org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction, java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1791=org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction, var2416=r1, var3271=i0, var1467=r2, var3443=null_type, var2973=org.hibernate.engine.spi.SessionFactoryImplementor, var649=r8, var2903=$r0, var3679=$r4, var3587=$r3, var1604=$r5, var525=$r6, var2468=$r7}
; {org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction=var1791, r1=var2416, i0=var3271, r2=var1467, null_type=var3443, org.hibernate.engine.spi.SessionFactoryImplementor=var2973, r8=var649, $r0=var2903, $r4=var3679, $r3=var3587, $r5=var1604, $r6=var525, $r7=var2468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("avg(");	$r3 = virtualinvoke r1.<org.hibernate.dialect.function.StandardAnsiSqlAggregationFunctions$AvgFunction: java.lang.String renderArgument(java.lang.String,int)>(r2, i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1