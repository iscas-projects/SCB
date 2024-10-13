(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2735 0)
(declare-sort var3209 0)
(declare-sort var1563 0)
(declare-sort var960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var2735) var1563)
(declare-fun ordinal/-291641772 (var960) Int)
(declare-fun cast-from-var1563-to-var960 (var1563) var960)
(declare-const null-var2735 var2735)
(declare-const var3209-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var2647 var2735) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var2647 null-var2735)))
(define-const var988 (Array Int Int) var3209-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var475 var1563 (getType/1556141661 var2647)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var1577 Int (ordinal/-291641772 (cast-from-var1563-to-var960 var475))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var2247 Int (select var988 var1577)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2247 6) (and (not (= var2247 5)) (and (not (= var2247 4)) (and (not (= var2247 3)) (and (not (= var2247 2)) (and (not (= var2247 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
 ; Statement: return "NULL" 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1563-to-var960=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum)}
; {var2735=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var2647=r0, var3209=com.mysql.cj.xdevapi.ExprUnparser$1, var988=$r1, var1563=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var475=$r2, var960=java.lang.Enum, var1577=$i0, var2247=$i1}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var2735, r0=var2647, com.mysql.cj.xdevapi.ExprUnparser$1=var3209, $r1=var988, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var1563, $r2=var475, java.lang.Enum=var960, $i0=var1577, $i1=var2247}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	return "NULL"
;block_num 2