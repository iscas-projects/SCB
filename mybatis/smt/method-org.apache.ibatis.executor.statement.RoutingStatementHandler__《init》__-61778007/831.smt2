(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3246 0)
(declare-sort var3351 0)
(declare-sort var3867 0)
(declare-sort var3566 0)
(declare-sort var232 0)
(declare-sort var2426 0)
(declare-sort var3176 0)
(declare-sort var2020 0)
(declare-sort var2475 0)
(declare-sort var903 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3566) void)
(declare-fun cast-from-var3246-to-var3566 (var3246) var3566)
(declare-fun getStatementType/-933256659 (var3867) var2475)
(declare-fun ordinal/-291641772 (var903) Int)
(declare-fun cast-from-var2475-to-var903 (var2475) var903)
(declare-fun var3404-init () var3404)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3566) String)
(declare-fun cast-from-var2475-to-var3566 (var2475) var3566)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1671820471 (var3404 String) void)
(declare-const null-var3246 var3246)
(declare-const null-var3351 var3351)
(declare-const null-var3867 var3867)
(declare-const null-var3566 var3566)
(declare-const null-var232 var232)
(declare-const null-var2426 var2426)
(declare-const null-var3176 var3176)
(declare-const var2020-$SwitchMap$org$apache$ibatis$mapping$StatementType (Array Int Int))
(declare-const var3509 var3246) ; Statement: r0 := @this: org.apache.ibatis.executor.statement.RoutingStatementHandler 
(assert (not (= var3509 null-var3246)))
(declare-const var560 var3351) ; Statement: r5 := @parameter0: org.apache.ibatis.executor.Executor 
(assert (not (= var560 null-var3351)))
(declare-const var141 var3867) ; Statement: r1 := @parameter1: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var141 null-var3867)))
(declare-const var2620 var3566) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var2620 null-var3566)))
(declare-const var2052 var232) ; Statement: r7 := @parameter3: org.apache.ibatis.session.RowBounds 
(assert (not (= var2052 null-var232)))
(declare-const var333 var2426) ; Statement: r8 := @parameter4: org.apache.ibatis.session.ResultHandler 
(assert (not (= var333 null-var2426)))
(declare-const var784 var3176) ; Statement: r9 := @parameter5: org.apache.ibatis.mapping.BoundSql 
(assert (not (= var784 null-var3176)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3246-to-var3566 var3509))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3509!1 var3246)
(define-const var1075 (Array Int Int) var2020-$SwitchMap$org$apache$ibatis$mapping$StatementType) ; Statement: $r2 = <org.apache.ibatis.executor.statement.RoutingStatementHandler$1: int[] $SwitchMap$org$apache$ibatis$mapping$StatementType> 
(assert true)
(define-const var3087 var2475 (getStatementType/-933256659 var141)) ; Statement: $r3 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>() 
(assert true)
(define-const var813 Int (ordinal/-291641772 (cast-from-var2475-to-var903 var3087))) ; Statement: $i0 = virtualinvoke $r3.<org.apache.ibatis.mapping.StatementType: int ordinal()>() 
(define-const var1006 Int (select var1075 var813)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r11 = new org.apache.ibatis.executor.statement.SimpleStatementHandler;     case 2: goto $r10 = new org.apache.ibatis.executor.statement.PreparedStatementHandler;     case 3: goto $r4 = new org.apache.ibatis.executor.statement.CallableStatementHandler;     default: goto $r12 = new org.apache.ibatis.executor.ExecutorException; } 
(assert (and (not (= var1006 3)) (and (not (= var1006 2)) (and (not (= var1006 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var323 var3404 var3404-init) ; Statement: $r12 = new org.apache.ibatis.executor.ExecutorException 
(define-const var3663 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(assert true)
(define-const var2353 String (append/672562846 var3663!1 "Unknown statement type: ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown statement type: ") 
(declare-const var3663!2 String)
(assert (= var3663!2 (str.++ var3663!1 "Unknown statement type: ")))
(assert true)
(define-const var606 var2475 (getStatementType/-933256659 var141)) ; Statement: $r14 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>() 
(assert true)
(define-const var964 String (append/-1031950772 var2353 (cast-from-var2475-to-var3566 var606))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var2353!1 String)
(assert (str.prefixof var2353 var2353!1))
(assert true)
(define-const var3935 String (toString/-2075883882 var964)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1671820471 var323 var3935)) ; Statement: specialinvoke $r12.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r17) 

(declare-const var323!1 var3404)
(declare-const var3935!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3246-to-var3566=([org.apache.ibatis.executor.statement.RoutingStatementHandler], java.lang.Object), getStatementType/-933256659=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.mapping.StatementType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2475-to-var903=([org.apache.ibatis.mapping.StatementType], java.lang.Enum), var3404-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2475-to-var3566=([org.apache.ibatis.mapping.StatementType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1671820471=([org.apache.ibatis.executor.ExecutorException, java.lang.String], void)}
; {var3246=org.apache.ibatis.executor.statement.RoutingStatementHandler, var3509=r0, var3351=org.apache.ibatis.executor.Executor, var560=r5, var3867=org.apache.ibatis.mapping.MappedStatement, var141=r1, var3566=java.lang.Object, var2620=r6, var232=org.apache.ibatis.session.RowBounds, var2052=r7, var2426=org.apache.ibatis.session.ResultHandler, var333=r8, var3176=org.apache.ibatis.mapping.BoundSql, var784=r9, var2020=org.apache.ibatis.executor.statement.RoutingStatementHandler$1, var1075=$r2, var2475=org.apache.ibatis.mapping.StatementType, var3087=$r3, var903=java.lang.Enum, var813=$i0, var1006=$i1, var3404=org.apache.ibatis.executor.ExecutorException, var323=$r12, var3663=$r13, var2353=$r15, var606=$r14, var964=$r16, var3935=$r17}
; {org.apache.ibatis.executor.statement.RoutingStatementHandler=var3246, r0=var3509, org.apache.ibatis.executor.Executor=var3351, r5=var560, org.apache.ibatis.mapping.MappedStatement=var3867, r1=var141, java.lang.Object=var3566, r6=var2620, org.apache.ibatis.session.RowBounds=var232, r7=var2052, org.apache.ibatis.session.ResultHandler=var2426, r8=var333, org.apache.ibatis.mapping.BoundSql=var3176, r9=var784, org.apache.ibatis.executor.statement.RoutingStatementHandler$1=var2020, $r2=var1075, org.apache.ibatis.mapping.StatementType=var2475, $r3=var3087, java.lang.Enum=var903, $i0=var813, $i1=var1006, org.apache.ibatis.executor.ExecutorException=var3404, $r12=var323, $r13=var3663, $r15=var2353, $r14=var606, $r16=var964, $r17=var3935}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.statement.RoutingStatementHandler;	r5 := @parameter0: org.apache.ibatis.executor.Executor;	r1 := @parameter1: org.apache.ibatis.mapping.MappedStatement;	r6 := @parameter2: java.lang.Object;	r7 := @parameter3: org.apache.ibatis.session.RowBounds;	r8 := @parameter4: org.apache.ibatis.session.ResultHandler;	r9 := @parameter5: org.apache.ibatis.mapping.BoundSql;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = <org.apache.ibatis.executor.statement.RoutingStatementHandler$1: int[] $SwitchMap$org$apache$ibatis$mapping$StatementType>;	$r3 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>();	$i0 = virtualinvoke $r3.<org.apache.ibatis.mapping.StatementType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r11 = new org.apache.ibatis.executor.statement.SimpleStatementHandler;     case 2: goto $r10 = new org.apache.ibatis.executor.statement.PreparedStatementHandler;     case 3: goto $r4 = new org.apache.ibatis.executor.statement.CallableStatementHandler;     default: goto $r12 = new org.apache.ibatis.executor.ExecutorException; };	$r12 = new org.apache.ibatis.executor.ExecutorException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown statement type: ");	$r14 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String)>($r17);	throw $r12
;block_num 2