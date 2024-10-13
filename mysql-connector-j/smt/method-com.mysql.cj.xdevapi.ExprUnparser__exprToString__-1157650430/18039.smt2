(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2630 0)
(declare-sort var199 0)
(declare-sort var3370 0)
(declare-sort var1421 0)
(declare-sort var3213 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1769028805 (var2630) var3370)
(declare-fun ordinal/-291641772 (var1421) Int)
(declare-fun cast-from-var3370-to-var1421 (var3370) var1421)
(declare-fun var3213-init () var3213)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var233) String)
(declare-fun cast-from-var3370-to-var233 (var3370) var233)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3213 String) void)
(declare-const null-var2630 var2630)
(declare-const var199-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type (Array Int Int))
(declare-const var2987 var2630) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr 
(assert (not (= var2987 null-var2630)))
(define-const var3166 (Array Int Int) var199-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type> 
(assert true)
(define-const var1312 var3370 (getType/1769028805 var2987)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>() 
(assert true)
(define-const var1684 Int (ordinal/-291641772 (cast-from-var3370-to-var1421 var1312))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>() 
(define-const var2045 Int (select var3166 var1684)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2045 7)) (and (not (= var2045 6)) (and (not (= var2045 5)) (and (not (= var2045 4)) (and (not (= var2045 3)) (and (not (= var2045 2)) (and (not (= var2045 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var3959 var3213 var3213-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var3192 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3192)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3192!1 String)
(assert (= var3192!1 ""))
(assert true)
(define-const var2840 String (append/672562846 var3192!1 "Unknown type tag: ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type tag: ") 
(declare-const var3192!2 String)
(assert (= var3192!2 (str.++ var3192!1 "Unknown type tag: ")))
(assert true)
(define-const var1961 var3370 (getType/1769028805 var2987)) ; Statement: $r21 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>() 
(assert true)
(define-const var407 String (append/-1031950772 var2840 (cast-from-var3370-to-var233 var1961))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var2840!1 String)
(assert (str.prefixof var2840 var2840!1))
(assert true)
(define-const var1768 String (toString/-2075883882 var407)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3959 var1768)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24) 

(declare-const var3959!1 var3213)
(declare-const var1768!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1769028805=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3370-to-var1421=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], java.lang.Enum), var3213-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3370-to-var233=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2630=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var2987=r0, var199=com.mysql.cj.xdevapi.ExprUnparser$1, var3166=$r1, var3370=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type, var1312=$r2, var1421=java.lang.Enum, var1684=$i0, var2045=$i1, var3213=java.lang.IllegalArgumentException, var3959=$r19, var3192=$r20, var2840=$r22, var1961=$r21, var233=java.lang.Object, var407=$r23, var1768=$r24}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var2630, r0=var2987, com.mysql.cj.xdevapi.ExprUnparser$1=var199, $r1=var3166, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type=var3370, $r2=var1312, java.lang.Enum=var1421, $i0=var1684, $i1=var2045, java.lang.IllegalArgumentException=var3213, $r19=var3959, $r20=var3192, $r22=var2840, $r21=var1961, java.lang.Object=var233, $r23=var407, $r24=var1768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; };	$r19 = new java.lang.IllegalArgumentException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type tag: ");	$r21 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 2