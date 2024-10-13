(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var846 0)
(declare-sort var2664 0)
(declare-sort var1802 0)
(declare-sort var3557 0)
(declare-sort var1111 0)
(declare-sort var1649 0)
(declare-sort var1327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1111_bootstrap$/1350369154 (String Int) var3557)
(declare-fun var2664_computeIfAbsent/2133881068 (var2664 var1649 var3557) var1649)
(declare-fun cast-from-String-to-var1649 (String) var1649)
(declare-fun cast-from-var1649-to-var1327 (var1649) var1327)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1802-DS_MAP var2664)
(declare-const var830 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var830 null-String)))
(declare-const var3825 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3825 null-Int)))
(define-const var3931 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3931)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3931!1 String)
(assert (= var3931!1 ""))
(assert true)
(define-const var3055 String (append/672562846 var3931!1 var830)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3931!2 String)
(assert (= var3931!2 (str.++ var3931!1 var830)))
(assert true)
(define-const var3701 String (append/672562846 var3055 ":")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3055!1 String)
(assert (= var3055!1 (str.++ var3055 ":")))
(assert true)
(define-const var1110 String (append/-1001720160 var3701 var3825)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3701!1 String)
(assert (str.prefixof var3701 var3701!1))
(assert true)
(define-const var1433 String (toString/-2075883882 var1110)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var630 var2664 var1802-DS_MAP) ; Statement: $r6 = <cn.hutool.db.nosql.mongo.MongoFactory: java.util.Map DS_MAP> 
(define-const var1041 var3557 (var1111_bootstrap$/1350369154 var830 var3825)) ; Statement: $r7 = staticinvoke <cn.hutool.db.nosql.mongo.MongoFactory$lambda_getDS_0__525: java.util.function.Function bootstrap$(java.lang.String,int)>(r1, i0) 
(define-const var3621 var1649 (var2664_computeIfAbsent/2133881068 var630 (cast-from-String-to-var1649 var1433) var1041)) ; Statement: $r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r5, $r7) 
(define-const var3349 var1327 (cast-from-var1649-to-var1327 var3621)) ; Statement: $r9 = (cn.hutool.db.nosql.mongo.MongoDS) $r8 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1111_bootstrap$/1350369154=([java.lang.String, int], java.util.function.Function), var2664_computeIfAbsent/2133881068=([java.util.Map, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-String-to-var1649=([java.lang.String], java.lang.Object), cast-from-var1649-to-var1327=([java.lang.Object], cn.hutool.db.nosql.mongo.MongoDS)}
; {var830=r1, var846=null_type, var3825=i0, var3931=$r0, var3055=$r2, var3701=$r3, var1110=$r4, var1433=r5, var2664=java.util.Map, var1802=cn.hutool.db.nosql.mongo.MongoFactory, var630=$r6, var3557=java.util.function.Function, var1111=cn.hutool.db.nosql.mongo.MongoFactory$lambda_getDS_0__525, var1041=$r7, var1649=java.lang.Object, var3621=$r8, var1327=cn.hutool.db.nosql.mongo.MongoDS, var3349=$r9}
; {r1=var830, null_type=var846, i0=var3825, $r0=var3931, $r2=var3055, $r3=var3701, $r4=var1110, r5=var1433, java.util.Map=var2664, cn.hutool.db.nosql.mongo.MongoFactory=var1802, $r6=var630, java.util.function.Function=var3557, cn.hutool.db.nosql.mongo.MongoFactory$lambda_getDS_0__525=var1111, $r7=var1041, java.lang.Object=var1649, $r8=var3621, cn.hutool.db.nosql.mongo.MongoDS=var1327, $r9=var3349}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = <cn.hutool.db.nosql.mongo.MongoFactory: java.util.Map DS_MAP>;	$r7 = staticinvoke <cn.hutool.db.nosql.mongo.MongoFactory$lambda_getDS_0__525: java.util.function.Function bootstrap$(java.lang.String,int)>(r1, i0);	$r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r5, $r7);	$r9 = (cn.hutool.db.nosql.mongo.MongoDS) $r8;	return $r9
;block_num 1