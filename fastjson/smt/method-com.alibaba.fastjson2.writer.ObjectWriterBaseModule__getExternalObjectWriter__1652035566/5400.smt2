(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort var3165 0)
(declare-sort var2373 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1943_createTimeWriter/1070062347 (String) var2373)
(declare-const null-var3326 var3326)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2460 var3326) ; Statement: r11 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule 
(assert (not (= var2460 null-var3326)))
(declare-const var3154 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3154 null-String)))
(declare-const var573 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var573 null-ClassObject)))
(define-const var3592 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3106 Int (hashCode/-467973558 var3154)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1922416486: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDate");     case -1658359406: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.GregorianChronology");     case 1088242009: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Time");     case 1195998065: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.ISOChronology");     case 1215440026: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.DateTime");     case 1252880906: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Timestamp");     case 1458317959: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDateTime");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); }; } 
(assert (and (not (= var3106 1458317959)) (and (not (= var3106 1252880906)) (and (not (= var3106 1215440026)) (and (not (= var3106 1195998065)) (and (not (= var3106 1088242009)) (and (not (= var3106 (- 1658359406))) (and (not (= var3106 (- 1922416486))) true)))))))) ; Intersect: Negate: Cond: $i0 == 1458317959   and Intersect: Negate: Cond: $i0 == 1252880906   and Intersect: Negate: Cond: $i0 == 1215440026   and Intersect: Negate: Cond: $i0 == 1195998065   and Intersect: Negate: Cond: $i0 == 1088242009   and Intersect: Negate: Cond: $i0 == -1658359406   and Intersect: Negate: Cond: $i0 == -1922416486   and Non Conditional       
 ; Statement: tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); } 
(assert (and (= var3592 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var2121 var2373 (var1943_createTimeWriter/1070062347 null-String)) ; Statement: $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1943_createTimeWriter/1070062347=([java.lang.String], com.alibaba.fastjson2.writer.ObjectWriter)}
; {var3326=com.alibaba.fastjson2.writer.ObjectWriterBaseModule, var2460=r11, var3154=r0, var3165=null_type, var573=r3, var3592=b1, var3106=$i0, var2373=com.alibaba.fastjson2.writer.ObjectWriter, var1943=com.alibaba.fastjson2.util.JdbcSupport, var2121=$r9}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule=var3326, r11=var2460, r0=var3154, null_type=var3165, r3=var573, b1=var3592, $i0=var3106, com.alibaba.fastjson2.writer.ObjectWriter=var2373, com.alibaba.fastjson2.util.JdbcSupport=var1943, $r9=var2121}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r11 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Class;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1922416486: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDate");     case -1658359406: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.GregorianChronology");     case 1088242009: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Time");     case 1195998065: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.ISOChronology");     case 1215440026: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.DateTime");     case 1252880906: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Timestamp");     case 1458317959: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDateTime");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); }; };	tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); };	$r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);	return $r9
;block_num 3