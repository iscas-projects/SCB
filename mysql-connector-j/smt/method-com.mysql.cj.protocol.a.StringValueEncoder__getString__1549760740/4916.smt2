(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2583 0)
(declare-sort var1554 0)
(declare-sort var2173 0)
(declare-sort var2846 0)
(declare-sort var3105 0)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1554_getValue/1809189437 (var1554) var2173)
(declare-fun cast-from-var2173-to-String (var2173) String)
(declare-fun var1554_getMysqlType/-215853011 (var1554) var3105)
(declare-fun ordinal/-291641772 (var3159) Int)
(declare-fun cast-from-var3105-to-var3159 (var3105) var3159)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var2583 var2583)
(declare-const null-var1554 var1554)
(declare-const var2846-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var448 var2583) ; Statement: r11 := @this: com.mysql.cj.protocol.a.StringValueEncoder 
(assert (not (= var448 null-var2583)))
(declare-const var1499 var1554) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1499 null-var1554)))
(define-const var3133 var2173 (var1554_getValue/1809189437 var1499)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2370 String (cast-from-var2173-to-String var3133)) ; Statement: r2 = (java.lang.String) $r1 
(define-const var521 (Array Int Int) var2846-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.StringValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var935 var3105 (var1554_getMysqlType/-215853011 var1499)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1182 Int (ordinal/-291641772 (cast-from-var3105-to-var3159 var935))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3013 Int (select var521 var1182)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r116 = new java.lang.StringBuilder;     case 3: goto $r116 = new java.lang.StringBuilder;     case 4: goto $r116 = new java.lang.StringBuilder;     case 5: goto $r116 = new java.lang.StringBuilder;     case 6: goto $r116 = new java.lang.StringBuilder;     case 7: goto $r116 = new java.lang.StringBuilder;     case 8: goto $r116 = new java.lang.StringBuilder;     case 9: goto $r116 = new java.lang.StringBuilder;     case 10: goto $r116 = new java.lang.StringBuilder;     case 11: goto $r116 = new java.lang.StringBuilder;     case 12: goto $r116 = new java.lang.StringBuilder;     case 13: goto $r116 = new java.lang.StringBuilder;     case 14: goto $r116 = new java.lang.StringBuilder;     case 15: goto $r116 = new java.lang.StringBuilder;     case 16: goto $r116 = new java.lang.StringBuilder;     case 17: goto $r116 = new java.lang.StringBuilder;     case 18: goto $r106 = "true";     case 19: goto $r106 = "true";     case 20: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 21: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 22: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 23: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 24: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 25: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 26: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 27: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 28: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 29: goto $r102 = new java.math.BigInteger;     case 30: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 31: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 32: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 33: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 34: goto $r95 = new java.math.BigDecimal;     case 35: goto $r95 = new java.math.BigDecimal;     case 36: goto $r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 37: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 38: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 39: goto $r20 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 40: goto $r5 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     default: goto $r118 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3013 27) (and (not (= var3013 26)) (and (not (= var3013 25)) (and (not (= var3013 24)) (and (not (= var3013 23)) (and (not (= var3013 22)) (and (not (= var3013 21)) (and (not (= var3013 20)) (and (not (= var3013 19)) (and (not (= var3013 18)) (and (not (= var3013 17)) (and (not (= var3013 16)) (and (not (= var3013 15)) (and (not (= var3013 14)) (and (not (= var3013 13)) (and (not (= var3013 12)) (and (not (= var3013 11)) (and (not (= var3013 10)) (and (not (= var3013 9)) (and (not (= var3013 8)) (and (not (= var3013 7)) (and (not (= var3013 6)) (and (not (= var3013 5)) (and (not (= var3013 4)) (and (not (= var3013 3)) (and (not (= var3013 2)) (and (not (= var3013 1)) true)))))))))))))))))))))))))))) ; Intersect: Cond: $i1 == 27  and Intersect: Negate: Cond: $i1 == 26   and Intersect: Negate: Cond: $i1 == 25   and Intersect: Negate: Cond: $i1 == 24   and Intersect: Negate: Cond: $i1 == 23   and Intersect: Negate: Cond: $i1 == 22   and Intersect: Negate: Cond: $i1 == 21   and Intersect: Negate: Cond: $i1 == 20   and Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                           
(define-const var347 Int (Int_parseLong/-436876155 var2370)) ; Statement: $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2) 
(define-const var3517 String (String_valueOf/-107395227 var347)) ; Statement: $r104 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l6) 
 ; Statement: return $r104 
(check-sat)
(get-model)
(get-unsat-core)
; {var1554_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2173-to-String=([java.lang.Object], java.lang.String), var1554_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3105-to-var3159=([com.mysql.cj.MysqlType], java.lang.Enum), Int_parseLong/-436876155=([java.lang.String], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var2583=com.mysql.cj.protocol.a.StringValueEncoder, var448=r11, var1554=com.mysql.cj.BindValue, var1499=r0, var2173=java.lang.Object, var3133=$r1, var2370=r2, var2846=com.mysql.cj.protocol.a.StringValueEncoder$1, var521=$r3, var3105=com.mysql.cj.MysqlType, var935=$r4, var3159=java.lang.Enum, var1182=$i0, var3013=$i1, var347=$l6, var3517=$r104}
; {com.mysql.cj.protocol.a.StringValueEncoder=var2583, r11=var448, com.mysql.cj.BindValue=var1554, r0=var1499, java.lang.Object=var2173, $r1=var3133, r2=var2370, com.mysql.cj.protocol.a.StringValueEncoder$1=var2846, $r3=var521, com.mysql.cj.MysqlType=var3105, $r4=var935, java.lang.Enum=var3159, $i0=var1182, $i1=var3013, $l6=var347, $r104=var3517}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r11 := @this: com.mysql.cj.protocol.a.StringValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.lang.String) $r1;	$r3 = <com.mysql.cj.protocol.a.StringValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r116 = new java.lang.StringBuilder;     case 3: goto $r116 = new java.lang.StringBuilder;     case 4: goto $r116 = new java.lang.StringBuilder;     case 5: goto $r116 = new java.lang.StringBuilder;     case 6: goto $r116 = new java.lang.StringBuilder;     case 7: goto $r116 = new java.lang.StringBuilder;     case 8: goto $r116 = new java.lang.StringBuilder;     case 9: goto $r116 = new java.lang.StringBuilder;     case 10: goto $r116 = new java.lang.StringBuilder;     case 11: goto $r116 = new java.lang.StringBuilder;     case 12: goto $r116 = new java.lang.StringBuilder;     case 13: goto $r116 = new java.lang.StringBuilder;     case 14: goto $r116 = new java.lang.StringBuilder;     case 15: goto $r116 = new java.lang.StringBuilder;     case 16: goto $r116 = new java.lang.StringBuilder;     case 17: goto $r116 = new java.lang.StringBuilder;     case 18: goto $r106 = "true";     case 19: goto $r106 = "true";     case 20: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 21: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 22: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 23: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 24: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 25: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 26: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 27: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 28: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 29: goto $r102 = new java.math.BigInteger;     case 30: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 31: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 32: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 33: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 34: goto $r95 = new java.math.BigDecimal;     case 35: goto $r95 = new java.math.BigDecimal;     case 36: goto $r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 37: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 38: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 39: goto $r20 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 40: goto $r5 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     default: goto $r118 = newarray (java.lang.Object)[2]; };	$l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);	$r104 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l6);	return $r104
;block_num 2