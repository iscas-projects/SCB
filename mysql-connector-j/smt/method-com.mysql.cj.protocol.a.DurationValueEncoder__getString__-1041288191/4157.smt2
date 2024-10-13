(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3240 0)
(declare-sort var2236 0)
(declare-sort var783 0)
(declare-sort var1123 0)
(declare-sort var3319 0)
(declare-sort var1880 0)
(declare-sort var3231 0)
(declare-sort var2645 0)
(declare-sort var3116 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2236_getMysqlType/-215853011 (var2236) var1123)
(declare-fun ordinal/-291641772 (var3319) Int)
(declare-fun cast-from-var1123-to-var3319 (var1123) var3319)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2236_getValue/1809189437 (var2236) var1880)
(declare-fun cast-from-var1880-to-var3231 (var1880) var3231)
(declare-fun toNanos/-1386218734 (var3231) Int)
(declare-fun var3231_ofNanos/1383743133 (Int) var3231)
(declare-fun var2236_getField/-416441240 (var2236) var2645)
(declare-fun adjustDuration/-91501573 (var3116 var3231 var2645) var3231)
(declare-fun cast-from-var3240-to-var3116 (var3240) var3116)
(declare-fun var3944_getDurationString/-1224163401 (var3231) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3240 var3240)
(declare-const null-var2236 var2236)
(declare-const var783-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1213 var3240) ; Statement: r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder 
(assert (not (= var1213 null-var3240)))
(declare-const var1538 var2236) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1538 null-var2236)))
(define-const var773 (Array Int Int) var783-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2074 var1123 (var2236_getMysqlType/-215853011 var1538)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3040 Int (ordinal/-291641772 (cast-from-var1123-to-var3319 var2074))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2266 Int (select var773 var3040)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2266 2) (and (not (= var2266 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1532 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1532 "\u0027")) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var1532!1 String)
(assert (= var1532!1 "\u0027"))
(define-const var866 var1880 (var2236_getValue/1809189437 var1538)) ; Statement: $r10 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1765 var3231 (cast-from-var1880-to-var3231 var866)) ; Statement: $r11 = (java.time.Duration) $r10 
(assert true)
(define-const var1000 Int (toNanos/-1386218734 var1765)) ; Statement: $l2 = virtualinvoke $r11.<java.time.Duration: long toNanos()>() 
(define-const var1091 var3231 (var3231_ofNanos/1383743133 var1000)) ; Statement: $r13 = staticinvoke <java.time.Duration: java.time.Duration ofNanos(long)>($l2) 
(define-const var1018 var2645 (var2236_getField/-416441240 var1538)) ; Statement: $r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var1327 var3231 (adjustDuration/-91501573 (cast-from-var3240-to-var3116 var1213) var1091 var1018)) ; Statement: $r14 = virtualinvoke r9.<com.mysql.cj.protocol.a.DurationValueEncoder: java.time.Duration adjustDuration(java.time.Duration,com.mysql.cj.result.Field)>($r13, $r12) 
(define-const var1958 String (var3944_getDurationString/-1224163401 var1327)) ; Statement: $r15 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getDurationString(java.time.Duration)>($r14) 
(assert true)
;(assert (append/672562846 var1532!1 var1958)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1532!2 String)
(assert (= var1532!2 (str.++ var1532!1 var1958)))
(assert true)
;(assert (append/672562846 var1532!2 "\u0027")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1532!3 String)
(assert (= var1532!3 (str.++ var1532!2 "\u0027")))
(assert true)
(define-const var2139 String (toString/-2075883882 var1532!3)) ; Statement: $r16 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2236_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1123-to-var3319=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2236_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1880-to-var3231=([java.lang.Object], java.time.Duration), toNanos/-1386218734=([java.time.Duration], long), var3231_ofNanos/1383743133=([long], java.time.Duration), var2236_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustDuration/-91501573=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.Duration, com.mysql.cj.result.Field], java.time.Duration), cast-from-var3240-to-var3116=([com.mysql.cj.protocol.a.DurationValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3944_getDurationString/-1224163401=([java.time.Duration], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3240=com.mysql.cj.protocol.a.DurationValueEncoder, var1213=r9, var2236=com.mysql.cj.BindValue, var1538=r0, var783=com.mysql.cj.protocol.a.DurationValueEncoder$1, var773=$r1, var1123=com.mysql.cj.MysqlType, var2074=$r2, var3319=java.lang.Enum, var3040=$i0, var2266=$i1, var1532=$r8, var1880=java.lang.Object, var866=$r10, var3231=java.time.Duration, var1765=$r11, var1000=$l2, var1091=$r13, var2645=com.mysql.cj.result.Field, var1018=$r12, var3116=com.mysql.cj.protocol.a.AbstractValueEncoder, var1327=$r14, var3944=com.mysql.cj.util.TimeUtil, var1958=$r15, var2139=$r16}
; {com.mysql.cj.protocol.a.DurationValueEncoder=var3240, r9=var1213, com.mysql.cj.BindValue=var2236, r0=var1538, com.mysql.cj.protocol.a.DurationValueEncoder$1=var783, $r1=var773, com.mysql.cj.MysqlType=var1123, $r2=var2074, java.lang.Enum=var3319, $i0=var3040, $i1=var2266, $r8=var1532, java.lang.Object=var1880, $r10=var866, java.time.Duration=var3231, $r11=var1765, $l2=var1000, $r13=var1091, com.mysql.cj.result.Field=var2645, $r12=var1018, com.mysql.cj.protocol.a.AbstractValueEncoder=var3116, $r14=var1327, com.mysql.cj.util.TimeUtil=var3944, $r15=var1958, $r16=var2139}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; };	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r10 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r11 = (java.time.Duration) $r10;	$l2 = virtualinvoke $r11.<java.time.Duration: long toNanos()>();	$r13 = staticinvoke <java.time.Duration: java.time.Duration ofNanos(long)>($l2);	$r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r14 = virtualinvoke r9.<com.mysql.cj.protocol.a.DurationValueEncoder: java.time.Duration adjustDuration(java.time.Duration,com.mysql.cj.result.Field)>($r13, $r12);	$r15 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getDurationString(java.time.Duration)>($r14);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r16 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2