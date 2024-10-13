(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var346 0)
(declare-sort var859 0)
(declare-sort var1481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1769028805 (var1172) var859)
(declare-fun ordinal/-291641772 (var1481) Int)
(declare-fun cast-from-var859-to-var1481 (var859) var1481)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPosition/-1970447640 (var1172) Int)
(declare-fun Int_toUnsignedLong/1994101688 (Int) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1172 var1172)
(declare-const var346-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type (Array Int Int))
(declare-const var1637 var1172) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr 
(assert (not (= var1637 null-var1172)))
(define-const var3071 (Array Int Int) var346-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type> 
(assert true)
(define-const var2804 var859 (getType/1769028805 var1637)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>() 
(assert true)
(define-const var1667 Int (ordinal/-291641772 (cast-from-var859-to-var1481 var2804))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>() 
(define-const var1918 Int (select var3071 var1667)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1918 5) (and (not (= var1918 4)) (and (not (= var1918 3)) (and (not (= var1918 2)) (and (not (= var1918 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3113 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3113)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3113!1 String)
(assert (= var3113!1 ""))
(assert true)
(define-const var2816 String (append/672562846 var3113!1 ":")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3113!2 String)
(assert (= var3113!2 (str.++ var3113!1 ":")))
(assert true)
(define-const var522 Int (getPosition/-1970447640 var1637)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: int getPosition()>() 
(define-const var2624 Int (Int_toUnsignedLong/1994101688 var522)) ; Statement: $l3 = staticinvoke <java.lang.Integer: long toUnsignedLong(int)>($i2) 
(assert true)
(define-const var2937 String (append/-901862667 var2816 var2624)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2816!1 String)
(assert (str.prefixof var2816 var2816!1))
(assert true)
(define-const var1524 String (toString/-2075883882 var2937)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1769028805=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var859-to-var1481=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPosition/-1970447640=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], int), Int_toUnsignedLong/1994101688=([int], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1172=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var1637=r0, var346=com.mysql.cj.xdevapi.ExprUnparser$1, var3071=$r1, var859=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type, var2804=$r2, var1481=java.lang.Enum, var1667=$i0, var1918=$i1, var3113=$r7, var2816=$r8, var522=$i2, var2624=$l3, var2937=$r9, var1524=$r10}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var1172, r0=var1637, com.mysql.cj.xdevapi.ExprUnparser$1=var346, $r1=var3071, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type=var859, $r2=var2804, java.lang.Enum=var1481, $i0=var1667, $i1=var1918, $r7=var3113, $r8=var2816, $i2=var522, $l3=var2624, $r9=var2937, $r10=var1524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Expr;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxExpr$Expr$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getLiteral()>();     case 2: goto $r15 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier getIdentifier()>();     case 3: goto $r13 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall getFunctionCall()>();     case 4: goto $r11 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Operator getOperator()>();     case 5: goto $r7 = new java.lang.StringBuilder;     case 6: goto $r5 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Array getArray()>();     case 7: goto $r3 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Object getObject()>();     default: goto $r19 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr: int getPosition()>();	$l3 = staticinvoke <java.lang.Integer: long toUnsignedLong(int)>($i2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2