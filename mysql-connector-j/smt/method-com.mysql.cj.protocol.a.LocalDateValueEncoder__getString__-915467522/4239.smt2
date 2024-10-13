(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3589 0)
(declare-sort var1032 0)
(declare-sort var965 0)
(declare-sort var2815 0)
(declare-sort var873 0)
(declare-sort var1145 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1032_getMysqlType/-215853011 (var1032) var2815)
(declare-fun ordinal/-291641772 (var873) Int)
(declare-fun cast-from-var2815-to-var873 (var2815) var873)
(declare-fun var1032_getValue/1809189437 (var1032) var1145)
(declare-fun cast-from-var1145-to-var3279 (var1145) var3279)
(declare-fun getYear/1838788233 (var3279) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var3589 var3589)
(declare-const null-var1032 var1032)
(declare-const var965-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3519 var3589) ; Statement: r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder 
(assert (not (= var3519 null-var3589)))
(declare-const var1351 var1032) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1351 null-var1032)))
(define-const var3476 (Array Int Int) var965-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3154 var2815 (var1032_getMysqlType/-215853011 var1351)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2184 Int (ordinal/-291641772 (cast-from-var2815-to-var873 var3154))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3112 Int (select var3476 var2184)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3112 5) (and (not (= var3112 4)) (and (not (= var3112 3)) (and (not (= var3112 2)) (and (not (= var3112 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var1690 var1145 (var1032_getValue/1809189437 var1351)) ; Statement: $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var111 var3279 (cast-from-var1145-to-var3279 var1690)) ; Statement: $r8 = (java.time.LocalDate) $r7 
(assert true)
(define-const var3377 Int (getYear/1838788233 var111)) ; Statement: $i2 = virtualinvoke $r8.<java.time.LocalDate: int getYear()>() 
(define-const var274 String (String_valueOf/1240665136 var3377)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1032_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2815-to-var873=([com.mysql.cj.MysqlType], java.lang.Enum), var1032_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1145-to-var3279=([java.lang.Object], java.time.LocalDate), getYear/1838788233=([java.time.LocalDate], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var3589=com.mysql.cj.protocol.a.LocalDateValueEncoder, var3519=r30, var1032=com.mysql.cj.BindValue, var1351=r0, var965=com.mysql.cj.protocol.a.LocalDateValueEncoder$1, var3476=$r1, var2815=com.mysql.cj.MysqlType, var3154=$r2, var873=java.lang.Enum, var2184=$i0, var3112=$i1, var1145=java.lang.Object, var1690=$r7, var3279=java.time.LocalDate, var111=$r8, var3377=$i2, var274=$r9}
; {com.mysql.cj.protocol.a.LocalDateValueEncoder=var3589, r30=var3519, com.mysql.cj.BindValue=var1032, r0=var1351, com.mysql.cj.protocol.a.LocalDateValueEncoder$1=var965, $r1=var3476, com.mysql.cj.MysqlType=var2815, $r2=var3154, java.lang.Enum=var873, $i0=var2184, $i1=var3112, java.lang.Object=var1145, $r7=var1690, java.time.LocalDate=var3279, $r8=var111, $i2=var3377, $r9=var274}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r8 = (java.time.LocalDate) $r7;	$i2 = virtualinvoke $r8.<java.time.LocalDate: int getYear()>();	$r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	return $r9
;block_num 2