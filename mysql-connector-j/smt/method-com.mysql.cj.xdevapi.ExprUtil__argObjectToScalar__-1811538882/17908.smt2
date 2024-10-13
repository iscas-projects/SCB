(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2288 0)
(declare-sort var626 0)
(declare-sort var3018 0)
(declare-sort var1904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3018_argObjectToExpr/-1412047080 (var2288 Bool) var626)
(declare-fun hasLiteral/65030071 (var626) Bool)
(declare-fun getLiteral/389611795 (var626) var1904)
(declare-const null-var2288 var2288)
(declare-const var517 var2288) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var517 null-var2288)))
(define-const var2170 var626 (var3018_argObjectToExpr/-1412047080 var517 (ite (= 1 0) true false))) ; Statement: r1 = staticinvoke <com.mysql.cj.xdevapi.ExprUtil: com.mysql.cj.x.protobuf.MysqlxExpr$Expr argObjectToExpr(java.lang.Object,boolean)>(r0, 0) 
(assert true)
(define-const var2333 Bool (hasLiteral/65030071 var2170)) ; Statement: $z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: boolean hasLiteral()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>() 
(assert (not (= (ite var2333 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var969 var1904 (getLiteral/389611795 var2170)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3018_argObjectToExpr/-1412047080=([java.lang.Object, boolean], com.mysql.cj.x.protobuf.MysqlxExpr$Expr), hasLiteral/65030071=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], boolean), getLiteral/389611795=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar)}
; {var2288=java.lang.Object, var517=r0, var626=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var3018=com.mysql.cj.xdevapi.ExprUtil, var2170=r1, var2333=$z0, var1904=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var969=$r2}
; {java.lang.Object=var2288, r0=var517, com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var626, com.mysql.cj.xdevapi.ExprUtil=var3018, r1=var2170, $z0=var2333, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var1904, $r2=var969}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <com.mysql.cj.xdevapi.ExprUtil: com.mysql.cj.x.protobuf.MysqlxExpr$Expr argObjectToExpr(java.lang.Object,boolean)>(r0, 0);	$z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: boolean hasLiteral()>();	if $z0 != 0 goto $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();	$r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();	return $r2
;block_num 2