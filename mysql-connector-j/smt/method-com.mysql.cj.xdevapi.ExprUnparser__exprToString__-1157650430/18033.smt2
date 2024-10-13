(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var2140 0)
(declare-sort var2406 0)
(declare-sort var2280 0)
(declare-sort var213 0)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1769028805 (var3895) var2406)
(declare-fun ordinal/-291641772 (var2280) Int)
(declare-fun cast-from-var2406-to-var2280 (var2406) var2280)
(declare-fun getObject/2000875752 (var3895) var213)
(declare-fun var638_objectToString/92795862 (var213) String)
(declare-const null-var3895 var3895)
(declare-const var2140-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type (Array Int Int))
(declare-const var3431 var3895) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr 
(assert (not (= var3431 null-var3895)))
(define-const var886 (Array Int Int) var2140-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type> 
(assert true)
(define-const var1736 var2406 (getType/1769028805 var3431)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>() 
(assert true)
(define-const var2893 Int (ordinal/-291641772 (cast-from-var2406-to-var2280 var1736))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>() 
(define-const var1512 Int (select var886 var2893)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1512 7) (and (not (= var1512 6)) (and (not (= var1512 5)) (and (not (= var1512 4)) (and (not (= var1512 3)) (and (not (= var1512 2)) (and (not (= var1512 1)) true)))))))) ; Intersect: Cond: $i1 == 7  and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(assert true)
(define-const var2184 var213 (getObject/2000875752 var3431)) ; Statement: $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>() 
(define-const var2876 String (var638_objectToString/92795862 var2184)) ; Statement: $r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String objectToString(com.mysql.cj.x.protobuf.MysqlxExpr$Object)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1769028805=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2406-to-var2280=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], java.lang.Enum), getObject/2000875752=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Object), var638_objectToString/92795862=([com.mysql.cj.x.protobuf.MysqlxExpr$Object], java.lang.String)}
; {var3895=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var3431=r0, var2140=com.mysql.cj.xdevapi.ExprUnparser$1, var886=$r1, var2406=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type, var1736=$r2, var2280=java.lang.Enum, var2893=$i0, var1512=$i1, var213=com.mysql.cj.x.protobuf.MysqlxExpr$Object, var2184=$r3, var638=com.mysql.cj.xdevapi.ExprUnparser, var2876=$r4}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var3895, r0=var3431, com.mysql.cj.xdevapi.ExprUnparser$1=var2140, $r1=var886, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type=var2406, $r2=var1736, java.lang.Enum=var2280, $i0=var2893, $i1=var1512, com.mysql.cj.x.protobuf.MysqlxExpr$Object=var213, $r3=var2184, com.mysql.cj.xdevapi.ExprUnparser=var638, $r4=var2876}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; };	$r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();	$r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String objectToString(com.mysql.cj.x.protobuf.MysqlxExpr$Object)>($r3);	return $r4
;block_num 2