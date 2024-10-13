(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var987 0)
(declare-sort var1113 0)
(declare-sort var3797 0)
(declare-sort var1421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3797_argObjectToExpr/-1412047080 (var987 Bool) var1113)
(declare-fun hasLiteral/65030071 (var1113) Bool)
(declare-fun var1421-init () var1421)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var987) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var1421 String) void)
(declare-const null-var987 var987)
(declare-const var2072 var987) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2072 null-var987)))
(define-const var96 var1113 (var3797_argObjectToExpr/-1412047080 var2072 (ite (= 1 0) true false))) ; Statement: r1 = staticinvoke <com.mysql.cj.xdevapi.ExprUtil: com.mysql.cj.x.protobuf.MysqlxExpr$Expr argObjectToExpr(java.lang.Object,boolean)>(r0, 0) 
(assert true)
(define-const var1846 Bool (hasLiteral/65030071 var96)) ; Statement: $z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: boolean hasLiteral()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>() 
(assert (not (not (= (ite var1846 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2440 var1421 var1421-init) ; Statement: $r3 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var1353 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1353)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1353!1 String)
(assert (= var1353!1 ""))
(assert true)
(define-const var1898 String (append/672562846 var1353!1 "No literal interpretation of argument: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No literal interpretation of argument: ") 
(declare-const var1353!2 String)
(assert (= var1353!2 (str.++ var1353!1 "No literal interpretation of argument: ")))
(assert true)
(define-const var3213 String (append/-1031950772 var1898 var2072)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var2680 String (toString/-2075883882 var3213)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var2440 var2680)) ; Statement: specialinvoke $r3.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2440!1 var1421)
(declare-const var2680!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3797_argObjectToExpr/-1412047080=([java.lang.Object, boolean], com.mysql.cj.x.protobuf.MysqlxExpr$Expr), hasLiteral/65030071=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], boolean), var1421-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var987=java.lang.Object, var2072=r0, var1113=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var3797=com.mysql.cj.xdevapi.ExprUtil, var96=r1, var1846=$z0, var1421=com.mysql.cj.exceptions.WrongArgumentException, var2440=$r3, var1353=$r4, var1898=$r5, var3213=$r6, var2680=$r7}
; {java.lang.Object=var987, r0=var2072, com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var1113, com.mysql.cj.xdevapi.ExprUtil=var3797, r1=var96, $z0=var1846, com.mysql.cj.exceptions.WrongArgumentException=var1421, $r3=var2440, $r4=var1353, $r5=var1898, $r6=var3213, $r7=var2680}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <com.mysql.cj.xdevapi.ExprUtil: com.mysql.cj.x.protobuf.MysqlxExpr$Expr argObjectToExpr(java.lang.Object,boolean)>(r0, 0);	$z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: boolean hasLiteral()>();	if $z0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();	$r3 = new com.mysql.cj.exceptions.WrongArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No literal interpretation of argument: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2