(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var77 0)
(declare-sort var537 0)
(declare-sort var3791 0)
(declare-sort var2481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2481_createLocalDateTimeWriter/1879454529 (ClassObject String) var3791)
(declare-const null-var77 var77)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var107 var77) ; Statement: r11 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule 
(assert (not (= var107 null-var77)))
(declare-const var3047 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3047 null-String)))
(declare-const var3319 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var3319 null-ClassObject)))
(define-const var3813 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2046 Int (hashCode/-467973558 var3047)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1922416486: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDate");     case -1658359406: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.GregorianChronology");     case 1088242009: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Time");     case 1195998065: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.ISOChronology");     case 1215440026: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.DateTime");     case 1252880906: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Timestamp");     case 1458317959: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDateTime");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); }; } 
(assert (and (not (= var2046 1458317959)) (and (not (= var2046 1252880906)) (and (not (= var2046 1215440026)) (and (not (= var2046 1195998065)) (and (not (= var2046 1088242009)) (and (not (= var2046 (- 1658359406))) (and (not (= var2046 (- 1922416486))) true)))))))) ; Intersect: Negate: Cond: $i0 == 1458317959   and Intersect: Negate: Cond: $i0 == 1252880906   and Intersect: Negate: Cond: $i0 == 1215440026   and Intersect: Negate: Cond: $i0 == 1195998065   and Intersect: Negate: Cond: $i0 == 1088242009   and Intersect: Negate: Cond: $i0 == -1658359406   and Intersect: Negate: Cond: $i0 == -1922416486   and Non Conditional       
 ; Statement: tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); } 
(assert (and (= var3813 5) (and (not (= var3813 4)) (and (not (= var3813 3)) (and (not (= var3813 2)) (and (not (= var3813 1)) (and (not (= var3813 0)) true))))))) ; Intersect: Cond: b1 == 5  and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional      
(define-const var1685 var3791 (var2481_createLocalDateTimeWriter/1879454529 var3319 null-String)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var2481_createLocalDateTimeWriter/1879454529=([java.lang.Class, java.lang.String], com.alibaba.fastjson2.writer.ObjectWriter)}
; {var77=com.alibaba.fastjson2.writer.ObjectWriterBaseModule, var107=r11, var3047=r0, var537=null_type, var3319=r3, var3813=b1, var2046=$i0, var3791=com.alibaba.fastjson2.writer.ObjectWriter, var2481=com.alibaba.fastjson2.util.JodaSupport, var1685=$r4}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule=var77, r11=var107, r0=var3047, null_type=var537, r3=var3319, b1=var3813, $i0=var2046, com.alibaba.fastjson2.writer.ObjectWriter=var3791, com.alibaba.fastjson2.util.JodaSupport=var2481, $r4=var1685}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r11 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Class;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1922416486: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDate");     case -1658359406: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.GregorianChronology");     case 1088242009: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Time");     case 1195998065: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.chrono.ISOChronology");     case 1215440026: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.DateTime");     case 1252880906: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java.sql.Timestamp");     case 1458317959: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("org.joda.time.LocalDateTime");     default: goto tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); }; };	tableswitch(b1) {     case 0: goto $r9 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimeWriter(java.lang.String)>(null);     case 1: goto $r8 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: com.alibaba.fastjson2.writer.ObjectWriter createTimestampWriter(java.lang.Class,java.lang.String)>(r3, null);     case 2: goto $r7 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createGregorianChronologyWriter(java.lang.Class)>(r3);     case 3: goto $r6 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createISOChronologyWriter(java.lang.Class)>(r3);     case 4: goto $r5 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateWriter(java.lang.Class,java.lang.String)>(r3, null);     case 5: goto $r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);     case 6: goto $r1 = new com.alibaba.fastjson2.writer.ObjectWriterImplZonedDateTime;     default: goto $z1 = staticinvoke <com.alibaba.fastjson2.util.JdbcSupport: boolean isClob(java.lang.Class)>(r3); };	$r4 = staticinvoke <com.alibaba.fastjson2.util.JodaSupport: com.alibaba.fastjson2.writer.ObjectWriter createLocalDateTimeWriter(java.lang.Class,java.lang.String)>(r3, null);	return $r4
;block_num 3