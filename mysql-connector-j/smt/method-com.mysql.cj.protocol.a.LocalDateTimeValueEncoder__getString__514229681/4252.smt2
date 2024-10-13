(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var355 0)
(declare-sort var3087 0)
(declare-sort var929 0)
(declare-sort var1705 0)
(declare-sort var3416 0)
(declare-sort var980 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3087_getMysqlType/-215853011 (var3087) var1705)
(declare-fun ordinal/-291641772 (var3416) Int)
(declare-fun cast-from-var1705-to-var3416 (var1705) var3416)
(declare-fun var3087_getValue/1809189437 (var3087) var980)
(declare-fun cast-from-var980-to-var442 (var980) var442)
(declare-fun getYear/1934432118 (var442) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var355 var355)
(declare-const null-var3087 var3087)
(declare-const var929-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var702 var355) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder 
(assert (not (= var702 null-var355)))
(declare-const var1824 var3087) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1824 null-var3087)))
(define-const var3644 (Array Int Int) var929-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3345 var1705 (var3087_getMysqlType/-215853011 var1824)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1514 Int (ordinal/-291641772 (cast-from-var1705-to-var3416 var3345))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1414 Int (select var3644 var1514)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; } 
(assert (and (= var1414 6) (and (not (= var1414 5)) (and (not (= var1414 4)) (and (not (= var1414 3)) (and (not (= var1414 2)) (and (not (= var1414 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2481 var980 (var3087_getValue/1809189437 var1824)) ; Statement: $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3747 var442 (cast-from-var980-to-var442 var2481)) ; Statement: $r12 = (java.time.LocalDateTime) $r11 
(assert true)
(define-const var642 Int (getYear/1934432118 var3747)) ; Statement: $i3 = virtualinvoke $r12.<java.time.LocalDateTime: int getYear()>() 
(define-const var30 String (String_valueOf/1240665136 var642)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3087_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1705-to-var3416=([com.mysql.cj.MysqlType], java.lang.Enum), var3087_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var980-to-var442=([java.lang.Object], java.time.LocalDateTime), getYear/1934432118=([java.time.LocalDateTime], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var355=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder, var702=r5, var3087=com.mysql.cj.BindValue, var1824=r0, var929=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1, var3644=$r1, var1705=com.mysql.cj.MysqlType, var3345=$r2, var3416=java.lang.Enum, var1514=$i0, var1414=$i1, var980=java.lang.Object, var2481=$r11, var442=java.time.LocalDateTime, var3747=$r12, var642=$i3, var30=$r13}
; {com.mysql.cj.protocol.a.LocalDateTimeValueEncoder=var355, r5=var702, com.mysql.cj.BindValue=var3087, r0=var1824, com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1=var929, $r1=var3644, com.mysql.cj.MysqlType=var1705, $r2=var3345, java.lang.Enum=var3416, $i0=var1514, $i1=var1414, java.lang.Object=var980, $r11=var2481, java.time.LocalDateTime=var442, $r12=var3747, $i3=var642, $r13=var30}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; };	$r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r12 = (java.time.LocalDateTime) $r11;	$i3 = virtualinvoke $r12.<java.time.LocalDateTime: int getYear()>();	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r13
;block_num 2