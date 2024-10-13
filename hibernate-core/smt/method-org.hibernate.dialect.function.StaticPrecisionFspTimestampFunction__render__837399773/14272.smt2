(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2612 0)
(declare-sort var3295 0)
(declare-sort var2460 0)
(declare-sort var2044 0)
(declare-sort var3890 0)
(declare-sort var503 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2460_size/-959786421 (var2460) Int)
(declare-fun var3890-init () var3890)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-280818540 (var503) String)
(declare-fun cast-from-var2612-to-var503 (var2612) var503)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3890 String) void)
(declare-fun cast-from-var3890-to-var3930 (var3890) var3930)
(declare-const null-var2612 var2612)
(declare-const null-var3295 var3295)
(declare-const null-var2460 var2460)
(declare-const null-var2044 var2044)
(declare-const var2355 var2612) ; Statement: r1 := @this: org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction 
(assert (not (= var2355 null-var2612)))
(declare-const var3228 var3295) ; Statement: r3 := @parameter0: org.hibernate.type.Type 
(assert (not (= var3228 null-var3295)))
(declare-const var1222 var2460) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1222 null-var2460)))
(declare-const var2370 var2044) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2370 null-var2044)))
(define-const var1144 Int (var2460_size/-959786421 var1222)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 0 goto $r2 = r1.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String renderedString> 
(assert (not (<= var1144 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1564 var3890 var3890-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var206 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var206)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var206!1 String)
(assert (= var206!1 ""))
(assert true)
(define-const var1090 String (append/672562846 var206!1 "function takes no arguments: ")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function takes no arguments: ") 
(declare-const var206!2 String)
(assert (= var206!2 (str.++ var206!1 "function takes no arguments: ")))
(assert true)
(define-const var3617 String (getName/-280818540 (cast-from-var2612-to-var503 var2355))) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String getName()>() 
(assert true)
(define-const var3145 String (append/672562846 var1090 var3617)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1090!1 String)
(assert (= var1090!1 (str.++ var1090 var3617)))
(assert true)
(define-const var1267 String (toString/-2075883882 var3145)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var1564 var1267)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r10) 

(declare-const var1564!1 var3890)
(declare-const var1267!1 String)
(define-const var1980 var3930 (cast-from-var3890-to-var3930 var1564!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2460_size/-959786421=([java.util.List], int), var3890-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-280818540=([org.hibernate.dialect.function.NoArgSQLFunction], java.lang.String), cast-from-var2612-to-var503=([org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction], org.hibernate.dialect.function.NoArgSQLFunction), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3890-to-var3930=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2612=org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction, var2355=r1, var3295=org.hibernate.type.Type, var3228=r3, var2460=java.util.List, var1222=r0, var2044=org.hibernate.engine.spi.SessionFactoryImplementor, var2370=r4, var1144=$i0, var3890=org.hibernate.QueryException, var1564=$r13, var206=$r12, var1090=$r8, var503=org.hibernate.dialect.function.NoArgSQLFunction, var3617=$r7, var3145=$r9, var1267=$r10, var3930=java.lang.Throwable, var1980=$r14}
; {org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction=var2612, r1=var2355, org.hibernate.type.Type=var3295, r3=var3228, java.util.List=var2460, r0=var1222, org.hibernate.engine.spi.SessionFactoryImplementor=var2044, r4=var2370, $i0=var1144, org.hibernate.QueryException=var3890, $r13=var1564, $r12=var206, $r8=var1090, org.hibernate.dialect.function.NoArgSQLFunction=var503, $r7=var3617, $r9=var3145, $r10=var1267, java.lang.Throwable=var3930, $r14=var1980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction;	r3 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 0 goto $r2 = r1.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String renderedString>;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function takes no arguments: ");	$r7 = virtualinvoke r1.<org.hibernate.dialect.function.StaticPrecisionFspTimestampFunction: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r10);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2