(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var1486 0)
(declare-sort var3853 0)
(declare-sort var2720 0)
(declare-sort var734 0)
(declare-sort var1724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1769028805 (var3909) var3853)
(declare-fun ordinal/-291641772 (var2720) Int)
(declare-fun cast-from-var3853-to-var2720 (var3853) var2720)
(declare-fun getArray/904048882 (var3909) var734)
(declare-fun var1724_arrayToString/-1491492676 (var734) String)
(declare-const null-var3909 var3909)
(declare-const var1486-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type (Array Int Int))
(declare-const var221 var3909) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr 
(assert (not (= var221 null-var3909)))
(define-const var2511 (Array Int Int) var1486-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type> 
(assert true)
(define-const var650 var3853 (getType/1769028805 var221)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>() 
(assert true)
(define-const var1745 Int (ordinal/-291641772 (cast-from-var3853-to-var2720 var650))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>() 
(define-const var806 Int (select var2511 var1745)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; } 
(assert (and (= var806 6) (and (not (= var806 5)) (and (not (= var806 4)) (and (not (= var806 3)) (and (not (= var806 2)) (and (not (= var806 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var3585 var734 (getArray/904048882 var221)) ; Statement: $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>() 
(define-const var878 String (var1724_arrayToString/-1491492676 var3585)) ; Statement: $r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String arrayToString(com.mysql.cj.x.protobuf.MysqlxExpr$Array)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1769028805=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3853-to-var2720=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], java.lang.Enum), getArray/904048882=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Array), var1724_arrayToString/-1491492676=([com.mysql.cj.x.protobuf.MysqlxExpr$Array], java.lang.String)}
; {var3909=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var221=r0, var1486=com.mysql.cj.xdevapi.ExprUnparser$1, var2511=$r1, var3853=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type, var650=$r2, var2720=java.lang.Enum, var1745=$i0, var806=$i1, var734=com.mysql.cj.x.protobuf.MysqlxExpr$Array, var3585=$r5, var1724=com.mysql.cj.xdevapi.ExprUnparser, var878=$r6}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var3909, r0=var221, com.mysql.cj.xdevapi.ExprUnparser$1=var1486, $r1=var2511, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type=var3853, $r2=var650, java.lang.Enum=var2720, $i0=var1745, $i1=var806, com.mysql.cj.x.protobuf.MysqlxExpr$Array=var734, $r5=var3585, com.mysql.cj.xdevapi.ExprUnparser=var1724, $r6=var878}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; };	$r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();	$r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String arrayToString(com.mysql.cj.x.protobuf.MysqlxExpr$Array)>($r5);	return $r6
;block_num 2