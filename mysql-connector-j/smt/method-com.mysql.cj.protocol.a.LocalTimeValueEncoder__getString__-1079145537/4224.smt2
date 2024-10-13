(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var3672 0)
(declare-sort var3681 0)
(declare-sort var884 0)
(declare-sort var2005 0)
(declare-sort var440 0)
(declare-sort var677 0)
(declare-sort var3074 0)
(declare-sort var1714 0)
(declare-sort var3646 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3672_getMysqlType/-215853011 (var3672) var884)
(declare-fun ordinal/-291641772 (var2005) Int)
(declare-fun cast-from-var884-to-var2005 (var884) var2005)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3672_getValue/1809189437 (var3672) var440)
(declare-fun cast-from-var440-to-var677 (var440) var677)
(declare-fun toNanoOfDay/470728990 (var677) Int)
(declare-fun var677_ofNanoOfDay/1330466537 (Int) var677)
(declare-fun var3672_getField/-416441240 (var3672) var3074)
(declare-fun adjustLocalTime/-1943683197 (var1714 var677 var3074) var677)
(declare-fun cast-from-var2219-to-var1714 (var2219) var1714)
(declare-fun format/1282671589 (var677 var3646) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2219 var2219)
(declare-const null-var3672 var3672)
(declare-const var3681-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3271-TIME_FORMATTER_WITH_OPTIONAL_MICROS var3646)
(declare-const var1268 var2219) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalTimeValueEncoder 
(assert (not (= var1268 null-var2219)))
(declare-const var2547 var3672) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2547 null-var3672)))
(define-const var1277 (Array Int Int) var3681-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1153 var884 (var3672_getMysqlType/-215853011 var2547)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var910 Int (ordinal/-291641772 (cast-from-var884-to-var2005 var1153))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1923 Int (select var1277 var910)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r20 = newarray (java.lang.Object)[2]; } 
(assert (and (= var1923 2) (and (not (= var1923 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1011 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1011 "\u0027")) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var1011!1 String)
(assert (= var1011!1 "\u0027"))
(define-const var2926 var440 (var3672_getValue/1809189437 var2547)) ; Statement: $r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2919 var677 (cast-from-var440-to-var677 var2926)) ; Statement: $r13 = (java.time.LocalTime) $r12 
(assert true)
(define-const var1483 Int (toNanoOfDay/470728990 var2919)) ; Statement: $l3 = virtualinvoke $r13.<java.time.LocalTime: long toNanoOfDay()>() 
(define-const var3103 var677 (var677_ofNanoOfDay/1330466537 var1483)) ; Statement: $r15 = staticinvoke <java.time.LocalTime: java.time.LocalTime ofNanoOfDay(long)>($l3) 
(define-const var960 var3074 (var3672_getField/-416441240 var2547)) ; Statement: $r14 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var2947 var677 (adjustLocalTime/-1943683197 (cast-from-var2219-to-var1714 var1268) var3103 var960)) ; Statement: $r17 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14) 
(define-const var243 var3646 var3271-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var3969 String (format/1282671589 var2947 var243)) ; Statement: $r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16) 
(assert true)
;(assert (append/672562846 var1011!1 var3969)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 var3969)))
(assert true)
;(assert (append/672562846 var1011!2 "\u0027")) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1011!3 String)
(assert (= var1011!3 (str.++ var1011!2 "\u0027")))
(assert true)
(define-const var1859 String (toString/-2075883882 var1011!3)) ; Statement: $r19 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3672_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var884-to-var2005=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3672_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var440-to-var677=([java.lang.Object], java.time.LocalTime), toNanoOfDay/470728990=([java.time.LocalTime], long), var677_ofNanoOfDay/1330466537=([long], java.time.LocalTime), var3672_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), cast-from-var2219-to-var1714=([com.mysql.cj.protocol.a.LocalTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2219=com.mysql.cj.protocol.a.LocalTimeValueEncoder, var1268=r5, var3672=com.mysql.cj.BindValue, var2547=r0, var3681=com.mysql.cj.protocol.a.LocalTimeValueEncoder$1, var1277=$r1, var884=com.mysql.cj.MysqlType, var1153=$r2, var2005=java.lang.Enum, var910=$i0, var1923=$i1, var1011=$r11, var440=java.lang.Object, var2926=$r12, var677=java.time.LocalTime, var2919=$r13, var1483=$l3, var3103=$r15, var3074=com.mysql.cj.result.Field, var960=$r14, var1714=com.mysql.cj.protocol.a.AbstractValueEncoder, var2947=$r17, var3646=java.time.format.DateTimeFormatter, var3271=com.mysql.cj.util.TimeUtil, var243=$r16, var3969=$r18, var1859=$r19}
; {com.mysql.cj.protocol.a.LocalTimeValueEncoder=var2219, r5=var1268, com.mysql.cj.BindValue=var3672, r0=var2547, com.mysql.cj.protocol.a.LocalTimeValueEncoder$1=var3681, $r1=var1277, com.mysql.cj.MysqlType=var884, $r2=var1153, java.lang.Enum=var2005, $i0=var910, $i1=var1923, $r11=var1011, java.lang.Object=var440, $r12=var2926, java.time.LocalTime=var677, $r13=var2919, $l3=var1483, $r15=var3103, com.mysql.cj.result.Field=var3074, $r14=var960, com.mysql.cj.protocol.a.AbstractValueEncoder=var1714, $r17=var2947, java.time.format.DateTimeFormatter=var3646, com.mysql.cj.util.TimeUtil=var3271, $r16=var243, $r18=var3969, $r19=var1859}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r20 = newarray (java.lang.Object)[2]; };	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r13 = (java.time.LocalTime) $r12;	$l3 = virtualinvoke $r13.<java.time.LocalTime: long toNanoOfDay()>();	$r15 = staticinvoke <java.time.LocalTime: java.time.LocalTime ofNanoOfDay(long)>($l3);	$r14 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r17 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14);	$r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r19 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 2