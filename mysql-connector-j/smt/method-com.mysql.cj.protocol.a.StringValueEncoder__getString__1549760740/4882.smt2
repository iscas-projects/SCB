(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3790 0)
(declare-sort var3157 0)
(declare-sort var734 0)
(declare-sort var3172 0)
(declare-sort var1097 0)
(declare-sort var243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3157_getValue/1809189437 (var3157) var734)
(declare-fun cast-from-var734-to-String (var734) String)
(declare-fun var3157_getMysqlType/-215853011 (var3157) var1097)
(declare-fun ordinal/-291641772 (var243) Int)
(declare-fun cast-from-var1097-to-var243 (var1097) var243)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3790 var3790)
(declare-const null-var3157 var3157)
(declare-const var3172-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1361 var3790) ; Statement: r11 := @this: com.mysql.cj.protocol.a.StringValueEncoder 
(assert (not (= var1361 null-var3790)))
(declare-const var1230 var3157) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1230 null-var3157)))
(define-const var1746 var734 (var3157_getValue/1809189437 var1230)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3556 String (cast-from-var734-to-String var1746)) ; Statement: r2 = (java.lang.String) $r1 
(define-const var2703 (Array Int Int) var3172-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.StringValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2843 var1097 (var3157_getMysqlType/-215853011 var1230)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2616 Int (ordinal/-291641772 (cast-from-var1097-to-var243 var2843))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2130 Int (select var2703 var2616)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r116 = new java.lang.StringBuilder;     case 3: goto $r116 = new java.lang.StringBuilder;     case 4: goto $r116 = new java.lang.StringBuilder;     case 5: goto $r116 = new java.lang.StringBuilder;     case 6: goto $r116 = new java.lang.StringBuilder;     case 7: goto $r116 = new java.lang.StringBuilder;     case 8: goto $r116 = new java.lang.StringBuilder;     case 9: goto $r116 = new java.lang.StringBuilder;     case 10: goto $r116 = new java.lang.StringBuilder;     case 11: goto $r116 = new java.lang.StringBuilder;     case 12: goto $r116 = new java.lang.StringBuilder;     case 13: goto $r116 = new java.lang.StringBuilder;     case 14: goto $r116 = new java.lang.StringBuilder;     case 15: goto $r116 = new java.lang.StringBuilder;     case 16: goto $r116 = new java.lang.StringBuilder;     case 17: goto $r116 = new java.lang.StringBuilder;     case 18: goto $r106 = "true";     case 19: goto $r106 = "true";     case 20: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 21: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 22: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 23: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 24: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 25: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 26: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 27: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 28: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 29: goto $r102 = new java.math.BigInteger;     case 30: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 31: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 32: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 33: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 34: goto $r95 = new java.math.BigDecimal;     case 35: goto $r95 = new java.math.BigDecimal;     case 36: goto $r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 37: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 38: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 39: goto $r20 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 40: goto $r5 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     default: goto $r118 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2130 2) (and (not (= var2130 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var533 String String-init) ; Statement: $r116 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var533 "\u0027")) ; Statement: specialinvoke $r116.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var533!1 String)
(assert (= var533!1 "\u0027"))
(assert true)
;(assert (append/672562846 var533!1 var3556)) ; Statement: virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var533!2 String)
(assert (= var533!2 (str.++ var533!1 var3556)))
(assert true)
;(assert (append/672562846 var533!2 "\u0027")) ; Statement: virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var533!3 String)
(assert (= var533!3 (str.++ var533!2 "\u0027")))
(assert true)
(define-const var2109 String (toString/-2075883882 var533!3)) ; Statement: $r117 = virtualinvoke $r116.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r117 
(check-sat)
(get-model)
(get-unsat-core)
; {var3157_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var734-to-String=([java.lang.Object], java.lang.String), var3157_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1097-to-var243=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3790=com.mysql.cj.protocol.a.StringValueEncoder, var1361=r11, var3157=com.mysql.cj.BindValue, var1230=r0, var734=java.lang.Object, var1746=$r1, var3556=r2, var3172=com.mysql.cj.protocol.a.StringValueEncoder$1, var2703=$r3, var1097=com.mysql.cj.MysqlType, var2843=$r4, var243=java.lang.Enum, var2616=$i0, var2130=$i1, var533=$r116, var2109=$r117}
; {com.mysql.cj.protocol.a.StringValueEncoder=var3790, r11=var1361, com.mysql.cj.BindValue=var3157, r0=var1230, java.lang.Object=var734, $r1=var1746, r2=var3556, com.mysql.cj.protocol.a.StringValueEncoder$1=var3172, $r3=var2703, com.mysql.cj.MysqlType=var1097, $r4=var2843, java.lang.Enum=var243, $i0=var2616, $i1=var2130, $r116=var533, $r117=var2109}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.mysql.cj.protocol.a.StringValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.lang.String) $r1;	$r3 = <com.mysql.cj.protocol.a.StringValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r116 = new java.lang.StringBuilder;     case 3: goto $r116 = new java.lang.StringBuilder;     case 4: goto $r116 = new java.lang.StringBuilder;     case 5: goto $r116 = new java.lang.StringBuilder;     case 6: goto $r116 = new java.lang.StringBuilder;     case 7: goto $r116 = new java.lang.StringBuilder;     case 8: goto $r116 = new java.lang.StringBuilder;     case 9: goto $r116 = new java.lang.StringBuilder;     case 10: goto $r116 = new java.lang.StringBuilder;     case 11: goto $r116 = new java.lang.StringBuilder;     case 12: goto $r116 = new java.lang.StringBuilder;     case 13: goto $r116 = new java.lang.StringBuilder;     case 14: goto $r116 = new java.lang.StringBuilder;     case 15: goto $r116 = new java.lang.StringBuilder;     case 16: goto $r116 = new java.lang.StringBuilder;     case 17: goto $r116 = new java.lang.StringBuilder;     case 18: goto $r106 = "true";     case 19: goto $r106 = "true";     case 20: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 21: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 22: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 23: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 24: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 25: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 26: goto $i7 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r2);     case 27: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 28: goto $l6 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r2);     case 29: goto $r102 = new java.math.BigInteger;     case 30: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 31: goto $f0 = staticinvoke <java.lang.Float: float parseFloat(java.lang.String)>(r2);     case 32: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 33: goto $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r2);     case 34: goto $r95 = new java.math.BigDecimal;     case 35: goto $r95 = new java.math.BigDecimal;     case 36: goto $r75 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 37: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 38: goto $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 39: goto $r20 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     case 40: goto $r5 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();     default: goto $r118 = newarray (java.lang.Object)[2]; };	$r116 = new java.lang.StringBuilder;	specialinvoke $r116.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r117 = virtualinvoke $r116.<java.lang.StringBuilder: java.lang.String toString()>();	return $r117
;block_num 2