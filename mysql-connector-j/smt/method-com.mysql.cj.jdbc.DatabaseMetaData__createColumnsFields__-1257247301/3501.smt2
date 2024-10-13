(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var30 0)
(declare-sort var3164 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3164-init () (Array Int var3164))
(declare-fun var3164-init () var3164)
(declare-fun metadataCollationIndex/1074764847 (var30) Int)
(declare-fun metadataEncoding/1074764847 (var30) String)
(declare-fun <init>/-503715259 (var3164 String String Int String var677 Int) void)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var30 var30)
(declare-const var677-CHAR var677)
(declare-const null-__Array__Int__var3164__ (Array Int var3164))
(declare-const var677-INT var677)
(declare-const var677-SMALLINT var677)
(declare-const var3507 var30) ; Statement: r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3507 null-var30)))
(define-const var3165 (Array Int var3164) arr-var3164-init) ; Statement: r0 = newarray (com.mysql.cj.result.Field)[24] 
(define-const var2261 var3164 var3164-init) ; Statement: $r1 = new com.mysql.cj.result.Field 
(define-const var782 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i0 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2519 String (metadataEncoding/1074764847 var3507)) ; Statement: $r4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var862 var677 var677-CHAR) ; Statement: $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var2261 "" "TABLE_CAT" var782 var2519 var862 255)) ; Statement: specialinvoke $r1.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_CAT", $i0, $r4, $r3, 255) 

(declare-const var2261!1 var3164)
(declare-const var891 String)
(declare-const var3557 String)
(declare-const var782!1 Int)
(declare-const var2519!1 String)
(declare-const var862!1 var677)
(declare-const var3809 Int)
(declare-const var3165!1 (Array Int var3164))
(assert (not (= var3165!1 null-__Array__Int__var3164__)))
(assert (= (select var3165!1 0) var2261!1)) ; Statement: r0[0] = $r1 
(define-const var39 var3164 var3164-init) ; Statement: $r5 = new com.mysql.cj.result.Field 
(define-const var1914 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i1 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2656 String (metadataEncoding/1074764847 var3507)) ; Statement: $r7 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2845 var677 var677-CHAR) ; Statement: $r6 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var39 "" "TABLE_SCHEM" var1914 var2656 var2845 0)) ; Statement: specialinvoke $r5.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_SCHEM", $i1, $r7, $r6, 0) 

(declare-const var39!1 var3164)
(declare-const var891!1 String)
(declare-const var813 String)
(declare-const var1914!1 Int)
(declare-const var2656!1 String)
(declare-const var2845!1 var677)
(declare-const var1973 Int)
(declare-const var3165!2 (Array Int var3164))
(assert (not (= var3165!2 null-__Array__Int__var3164__)))
(assert (= (select var3165!2 1) var39!1)) ; Statement: r0[1] = $r5 
(define-const var2593 var3164 var3164-init) ; Statement: $r8 = new com.mysql.cj.result.Field 
(define-const var2012 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i2 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1607 String (metadataEncoding/1074764847 var3507)) ; Statement: $r10 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var652 var677 var677-CHAR) ; Statement: $r9 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var2593 "" "TABLE_NAME" var2012 var1607 var652 255)) ; Statement: specialinvoke $r8.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_NAME", $i2, $r10, $r9, 255) 

(declare-const var2593!1 var3164)
(declare-const var891!2 String)
(declare-const var3693 String)
(declare-const var2012!1 Int)
(declare-const var1607!1 String)
(declare-const var652!1 var677)
(declare-const var3809!1 Int)
(declare-const var3165!3 (Array Int var3164))
(assert (not (= var3165!3 null-__Array__Int__var3164__)))
(assert (= (select var3165!3 2) var2593!1)) ; Statement: r0[2] = $r8 
(define-const var2145 var3164 var3164-init) ; Statement: $r11 = new com.mysql.cj.result.Field 
(define-const var3597 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1264 String (metadataEncoding/1074764847 var3507)) ; Statement: $r13 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2018 var677 var677-CHAR) ; Statement: $r12 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var2145 "" "COLUMN_NAME" var3597 var1264 var2018 32)) ; Statement: specialinvoke $r11.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_NAME", $i3, $r13, $r12, 32) 

(declare-const var2145!1 var3164)
(declare-const var891!3 String)
(declare-const var371 String)
(declare-const var3597!1 Int)
(declare-const var1264!1 String)
(declare-const var2018!1 var677)
(declare-const var1127 Int)
(declare-const var3165!4 (Array Int var3164))
(assert (not (= var3165!4 null-__Array__Int__var3164__)))
(assert (= (select var3165!4 3) var2145!1)) ; Statement: r0[3] = $r11 
(define-const var1832 var3164 var3164-init) ; Statement: $r14 = new com.mysql.cj.result.Field 
(define-const var10 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2017 String (metadataEncoding/1074764847 var3507)) ; Statement: $r16 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1237 var677 var677-INT) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var1832 "" "DATA_TYPE" var10 var2017 var1237 5)) ; Statement: specialinvoke $r14.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "DATA_TYPE", $i4, $r16, $r15, 5) 

(declare-const var1832!1 var3164)
(declare-const var891!4 String)
(declare-const var2114 String)
(declare-const var10!1 Int)
(declare-const var2017!1 String)
(declare-const var1237!1 var677)
(declare-const var2355 Int)
(declare-const var3165!5 (Array Int var3164))
(assert (not (= var3165!5 null-__Array__Int__var3164__)))
(assert (= (select var3165!5 4) var1832!1)) ; Statement: r0[4] = $r14 
(define-const var1456 var3164 var3164-init) ; Statement: $r17 = new com.mysql.cj.result.Field 
(define-const var321 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i5 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2559 String (metadataEncoding/1074764847 var3507)) ; Statement: $r19 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var3306 var677 var677-CHAR) ; Statement: $r18 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var1456 "" "TYPE_NAME" var321 var2559 var3306 16)) ; Statement: specialinvoke $r17.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TYPE_NAME", $i5, $r19, $r18, 16) 

(declare-const var1456!1 var3164)
(declare-const var891!5 String)
(declare-const var1243 String)
(declare-const var321!1 Int)
(declare-const var2559!1 String)
(declare-const var3306!1 var677)
(declare-const var1920 Int)
(declare-const var3165!6 (Array Int var3164))
(assert (not (= var3165!6 null-__Array__Int__var3164__)))
(assert (= (select var3165!6 5) var1456!1)) ; Statement: r0[5] = $r17 
(define-const var779 var3164 var3164-init) ; Statement: $r20 = new com.mysql.cj.result.Field 
(define-const var3297 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i6 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2625 String (metadataEncoding/1074764847 var3507)) ; Statement: $r21 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var3833 var677 var677-INT) ; Statement: $r22 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(define-const var1932 String (Int_toString/1350422511 2147483647)) ; Statement: $r23 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(2147483647) 
(assert true)
(define-const var2420 Int (length/-134980193 var1932)) ; Statement: $i7 = virtualinvoke $r23.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-503715259 var779 "" "COLUMN_SIZE" var3297 var2625 var3833 var2420)) ; Statement: specialinvoke $r20.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_SIZE", $i6, $r21, $r22, $i7) 

(declare-const var779!1 var3164)
(declare-const var891!6 String)
(declare-const var3422 String)
(declare-const var3297!1 Int)
(declare-const var2625!1 String)
(declare-const var3833!1 var677)
(declare-const var2420!1 Int)
(declare-const var3165!7 (Array Int var3164))
(assert (not (= var3165!7 null-__Array__Int__var3164__)))
(assert (= (select var3165!7 6) var779!1)) ; Statement: r0[6] = $r20 
(define-const var3013 var3164 var3164-init) ; Statement: $r24 = new com.mysql.cj.result.Field 
(define-const var3349 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i8 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2151 String (metadataEncoding/1074764847 var3507)) ; Statement: $r26 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1245 var677 var677-INT) ; Statement: $r25 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var3013 "" "BUFFER_LENGTH" var3349 var2151 var1245 10)) ; Statement: specialinvoke $r24.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "BUFFER_LENGTH", $i8, $r26, $r25, 10) 

(declare-const var3013!1 var3164)
(declare-const var891!7 String)
(declare-const var3134 String)
(declare-const var3349!1 Int)
(declare-const var2151!1 String)
(declare-const var1245!1 var677)
(declare-const var2824 Int)
(declare-const var3165!8 (Array Int var3164))
(assert (not (= var3165!8 null-__Array__Int__var3164__)))
(assert (= (select var3165!8 7) var3013!1)) ; Statement: r0[7] = $r24 
(define-const var723 var3164 var3164-init) ; Statement: $r27 = new com.mysql.cj.result.Field 
(define-const var1171 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i9 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2230 String (metadataEncoding/1074764847 var3507)) ; Statement: $r29 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2152 var677 var677-INT) ; Statement: $r28 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var723 "" "DECIMAL_DIGITS" var1171 var2230 var2152 10)) ; Statement: specialinvoke $r27.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "DECIMAL_DIGITS", $i9, $r29, $r28, 10) 

(declare-const var723!1 var3164)
(declare-const var891!8 String)
(declare-const var3615 String)
(declare-const var1171!1 Int)
(declare-const var2230!1 String)
(declare-const var2152!1 var677)
(declare-const var2824!1 Int)
(declare-const var3165!9 (Array Int var3164))
(assert (not (= var3165!9 null-__Array__Int__var3164__)))
(assert (= (select var3165!9 8) var723!1)) ; Statement: r0[8] = $r27 
(define-const var3232 var3164 var3164-init) ; Statement: $r30 = new com.mysql.cj.result.Field 
(define-const var2482 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i10 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var837 String (metadataEncoding/1074764847 var3507)) ; Statement: $r32 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var849 var677 var677-INT) ; Statement: $r31 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var3232 "" "NUM_PREC_RADIX" var2482 var837 var849 10)) ; Statement: specialinvoke $r30.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "NUM_PREC_RADIX", $i10, $r32, $r31, 10) 

(declare-const var3232!1 var3164)
(declare-const var891!9 String)
(declare-const var466 String)
(declare-const var2482!1 Int)
(declare-const var837!1 String)
(declare-const var849!1 var677)
(declare-const var2824!2 Int)
(declare-const var3165!10 (Array Int var3164))
(assert (not (= var3165!10 null-__Array__Int__var3164__)))
(assert (= (select var3165!10 9) var3232!1)) ; Statement: r0[9] = $r30 
(define-const var1010 var3164 var3164-init) ; Statement: $r33 = new com.mysql.cj.result.Field 
(define-const var3309 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i11 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var3157 String (metadataEncoding/1074764847 var3507)) ; Statement: $r35 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var781 var677 var677-INT) ; Statement: $r34 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var1010 "" "NULLABLE" var3309 var3157 var781 10)) ; Statement: specialinvoke $r33.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "NULLABLE", $i11, $r35, $r34, 10) 

(declare-const var1010!1 var3164)
(declare-const var891!10 String)
(declare-const var1446 String)
(declare-const var3309!1 Int)
(declare-const var3157!1 String)
(declare-const var781!1 var677)
(declare-const var2824!3 Int)
(declare-const var3165!11 (Array Int var3164))
(assert (not (= var3165!11 null-__Array__Int__var3164__)))
(assert (= (select var3165!11 10) var1010!1)) ; Statement: r0[10] = $r33 
(define-const var598 var3164 var3164-init) ; Statement: $r36 = new com.mysql.cj.result.Field 
(define-const var3528 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i12 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var3494 String (metadataEncoding/1074764847 var3507)) ; Statement: $r38 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var3073 var677 var677-CHAR) ; Statement: $r37 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var598 "" "REMARKS" var3528 var3494 var3073 0)) ; Statement: specialinvoke $r36.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "REMARKS", $i12, $r38, $r37, 0) 

(declare-const var598!1 var3164)
(declare-const var891!11 String)
(declare-const var2048 String)
(declare-const var3528!1 Int)
(declare-const var3494!1 String)
(declare-const var3073!1 var677)
(declare-const var1973!1 Int)
(declare-const var3165!12 (Array Int var3164))
(assert (not (= var3165!12 null-__Array__Int__var3164__)))
(assert (= (select var3165!12 11) var598!1)) ; Statement: r0[11] = $r36 
(define-const var3249 var3164 var3164-init) ; Statement: $r39 = new com.mysql.cj.result.Field 
(define-const var2194 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i13 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1516 String (metadataEncoding/1074764847 var3507)) ; Statement: $r41 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var518 var677 var677-CHAR) ; Statement: $r40 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var3249 "" "COLUMN_DEF" var2194 var1516 var518 0)) ; Statement: specialinvoke $r39.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_DEF", $i13, $r41, $r40, 0) 

(declare-const var3249!1 var3164)
(declare-const var891!12 String)
(declare-const var294 String)
(declare-const var2194!1 Int)
(declare-const var1516!1 String)
(declare-const var518!1 var677)
(declare-const var1973!2 Int)
(declare-const var3165!13 (Array Int var3164))
(assert (not (= var3165!13 null-__Array__Int__var3164__)))
(assert (= (select var3165!13 12) var3249!1)) ; Statement: r0[12] = $r39 
(define-const var1420 var3164 var3164-init) ; Statement: $r42 = new com.mysql.cj.result.Field 
(define-const var209 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i14 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var3441 String (metadataEncoding/1074764847 var3507)) ; Statement: $r44 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2731 var677 var677-INT) ; Statement: $r43 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var1420 "" "SQL_DATA_TYPE" var209 var3441 var2731 10)) ; Statement: specialinvoke $r42.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SQL_DATA_TYPE", $i14, $r44, $r43, 10) 

(declare-const var1420!1 var3164)
(declare-const var891!13 String)
(declare-const var1683 String)
(declare-const var209!1 Int)
(declare-const var3441!1 String)
(declare-const var2731!1 var677)
(declare-const var2824!4 Int)
(declare-const var3165!14 (Array Int var3164))
(assert (not (= var3165!14 null-__Array__Int__var3164__)))
(assert (= (select var3165!14 13) var1420!1)) ; Statement: r0[13] = $r42 
(define-const var1317 var3164 var3164-init) ; Statement: $r45 = new com.mysql.cj.result.Field 
(define-const var161 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i15 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var822 String (metadataEncoding/1074764847 var3507)) ; Statement: $r47 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1457 var677 var677-INT) ; Statement: $r46 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var1317 "" "SQL_DATETIME_SUB" var161 var822 var1457 10)) ; Statement: specialinvoke $r45.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SQL_DATETIME_SUB", $i15, $r47, $r46, 10) 

(declare-const var1317!1 var3164)
(declare-const var891!14 String)
(declare-const var2292 String)
(declare-const var161!1 Int)
(declare-const var822!1 String)
(declare-const var1457!1 var677)
(declare-const var2824!5 Int)
(declare-const var3165!15 (Array Int var3164))
(assert (not (= var3165!15 null-__Array__Int__var3164__)))
(assert (= (select var3165!15 14) var1317!1)) ; Statement: r0[14] = $r45 
(define-const var3196 var3164 var3164-init) ; Statement: $r48 = new com.mysql.cj.result.Field 
(define-const var567 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i16 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var2049 String (metadataEncoding/1074764847 var3507)) ; Statement: $r49 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1929 var677 var677-INT) ; Statement: $r50 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(define-const var1361 String (Int_toString/1350422511 2147483647)) ; Statement: $r51 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(2147483647) 
(assert true)
(define-const var669 Int (length/-134980193 var1361)) ; Statement: $i17 = virtualinvoke $r51.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-503715259 var3196 "" "CHAR_OCTET_LENGTH" var567 var2049 var1929 var669)) ; Statement: specialinvoke $r48.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "CHAR_OCTET_LENGTH", $i16, $r49, $r50, $i17) 

(declare-const var3196!1 var3164)
(declare-const var891!15 String)
(declare-const var1619 String)
(declare-const var567!1 Int)
(declare-const var2049!1 String)
(declare-const var1929!1 var677)
(declare-const var669!1 Int)
(declare-const var3165!16 (Array Int var3164))
(assert (not (= var3165!16 null-__Array__Int__var3164__)))
(assert (= (select var3165!16 15) var3196!1)) ; Statement: r0[15] = $r48 
(define-const var1546 var3164 var3164-init) ; Statement: $r52 = new com.mysql.cj.result.Field 
(define-const var136 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i18 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var260 String (metadataEncoding/1074764847 var3507)) ; Statement: $r54 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var118 var677 var677-INT) ; Statement: $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT> 
(assert true)
;(assert (<init>/-503715259 var1546 "" "ORDINAL_POSITION" var136 var260 var118 10)) ; Statement: specialinvoke $r52.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "ORDINAL_POSITION", $i18, $r54, $r53, 10) 

(declare-const var1546!1 var3164)
(declare-const var891!16 String)
(declare-const var850 String)
(declare-const var136!1 Int)
(declare-const var260!1 String)
(declare-const var118!1 var677)
(declare-const var2824!6 Int)
(declare-const var3165!17 (Array Int var3164))
(assert (not (= var3165!17 null-__Array__Int__var3164__)))
(assert (= (select var3165!17 16) var1546!1)) ; Statement: r0[16] = $r52 
(define-const var3236 var3164 var3164-init) ; Statement: $r55 = new com.mysql.cj.result.Field 
(define-const var177 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i19 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var3568 String (metadataEncoding/1074764847 var3507)) ; Statement: $r57 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2070 var677 var677-CHAR) ; Statement: $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var3236 "" "IS_NULLABLE" var177 var3568 var2070 3)) ; Statement: specialinvoke $r55.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_NULLABLE", $i19, $r57, $r56, 3) 

(declare-const var3236!1 var3164)
(declare-const var891!17 String)
(declare-const var1024 String)
(declare-const var177!1 Int)
(declare-const var3568!1 String)
(declare-const var2070!1 var677)
(declare-const var2191 Int)
(declare-const var3165!18 (Array Int var3164))
(assert (not (= var3165!18 null-__Array__Int__var3164__)))
(assert (= (select var3165!18 17) var3236!1)) ; Statement: r0[17] = $r55 
(define-const var1834 var3164 var3164-init) ; Statement: $r58 = new com.mysql.cj.result.Field 
(define-const var2095 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i20 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var229 String (metadataEncoding/1074764847 var3507)) ; Statement: $r60 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2315 var677 var677-CHAR) ; Statement: $r59 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var1834 "" "SCOPE_CATALOG" var2095 var229 var2315 255)) ; Statement: specialinvoke $r58.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_CATALOG", $i20, $r60, $r59, 255) 

(declare-const var1834!1 var3164)
(declare-const var891!18 String)
(declare-const var2926 String)
(declare-const var2095!1 Int)
(declare-const var229!1 String)
(declare-const var2315!1 var677)
(declare-const var3809!2 Int)
(declare-const var3165!19 (Array Int var3164))
(assert (not (= var3165!19 null-__Array__Int__var3164__)))
(assert (= (select var3165!19 18) var1834!1)) ; Statement: r0[18] = $r58 
(define-const var2651 var3164 var3164-init) ; Statement: $r61 = new com.mysql.cj.result.Field 
(define-const var3363 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i21 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var149 String (metadataEncoding/1074764847 var3507)) ; Statement: $r63 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2892 var677 var677-CHAR) ; Statement: $r62 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var2651 "" "SCOPE_SCHEMA" var3363 var149 var2892 255)) ; Statement: specialinvoke $r61.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_SCHEMA", $i21, $r63, $r62, 255) 

(declare-const var2651!1 var3164)
(declare-const var891!19 String)
(declare-const var2962 String)
(declare-const var3363!1 Int)
(declare-const var149!1 String)
(declare-const var2892!1 var677)
(declare-const var3809!3 Int)
(declare-const var3165!20 (Array Int var3164))
(assert (not (= var3165!20 null-__Array__Int__var3164__)))
(assert (= (select var3165!20 19) var2651!1)) ; Statement: r0[19] = $r61 
(define-const var1321 var3164 var3164-init) ; Statement: $r64 = new com.mysql.cj.result.Field 
(define-const var2214 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i22 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1450 String (metadataEncoding/1074764847 var3507)) ; Statement: $r66 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1860 var677 var677-CHAR) ; Statement: $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var1321 "" "SCOPE_TABLE" var2214 var1450 var1860 255)) ; Statement: specialinvoke $r64.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_TABLE", $i22, $r66, $r65, 255) 

(declare-const var1321!1 var3164)
(declare-const var891!20 String)
(declare-const var2805 String)
(declare-const var2214!1 Int)
(declare-const var1450!1 String)
(declare-const var1860!1 var677)
(declare-const var3809!4 Int)
(declare-const var3165!21 (Array Int var3164))
(assert (not (= var3165!21 null-__Array__Int__var3164__)))
(assert (= (select var3165!21 20) var1321!1)) ; Statement: r0[20] = $r64 
(define-const var3311 var3164 var3164-init) ; Statement: $r67 = new com.mysql.cj.result.Field 
(define-const var2980 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i23 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1560 String (metadataEncoding/1074764847 var3507)) ; Statement: $r69 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var2162 var677 var677-SMALLINT) ; Statement: $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT> 
(assert true)
;(assert (<init>/-503715259 var3311 "" "SOURCE_DATA_TYPE" var2980 var1560 var2162 10)) ; Statement: specialinvoke $r67.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SOURCE_DATA_TYPE", $i23, $r69, $r68, 10) 

(declare-const var3311!1 var3164)
(declare-const var891!21 String)
(declare-const var2468 String)
(declare-const var2980!1 Int)
(declare-const var1560!1 String)
(declare-const var2162!1 var677)
(declare-const var2824!7 Int)
(declare-const var3165!22 (Array Int var3164))
(assert (not (= var3165!22 null-__Array__Int__var3164__)))
(assert (= (select var3165!22 21) var3311!1)) ; Statement: r0[21] = $r67 
(define-const var3473 var3164 var3164-init) ; Statement: $r70 = new com.mysql.cj.result.Field 
(define-const var831 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i24 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var1950 String (metadataEncoding/1074764847 var3507)) ; Statement: $r72 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1315 var677 var677-CHAR) ; Statement: $r71 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var3473 "" "IS_AUTOINCREMENT" var831 var1950 var1315 3)) ; Statement: specialinvoke $r70.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_AUTOINCREMENT", $i24, $r72, $r71, 3) 

(declare-const var3473!1 var3164)
(declare-const var891!22 String)
(declare-const var1544 String)
(declare-const var831!1 Int)
(declare-const var1950!1 String)
(declare-const var1315!1 var677)
(declare-const var2191!1 Int)
(declare-const var3165!23 (Array Int var3164))
(assert (not (= var3165!23 null-__Array__Int__var3164__)))
(assert (= (select var3165!23 22) var3473!1)) ; Statement: r0[22] = $r70 
(define-const var2037 var3164 var3164-init) ; Statement: $r73 = new com.mysql.cj.result.Field 
(define-const var2835 Int (metadataCollationIndex/1074764847 var3507)) ; Statement: $i25 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex> 
(define-const var3952 String (metadataEncoding/1074764847 var3507)) ; Statement: $r75 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding> 
(define-const var1207 var677 var677-CHAR) ; Statement: $r74 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR> 
(assert true)
;(assert (<init>/-503715259 var2037 "" "IS_GENERATEDCOLUMN" var2835 var3952 var1207 3)) ; Statement: specialinvoke $r73.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_GENERATEDCOLUMN", $i25, $r75, $r74, 3) 

(declare-const var2037!1 var3164)
(declare-const var891!23 String)
(declare-const var1319 String)
(declare-const var2835!1 Int)
(declare-const var3952!1 String)
(declare-const var1207!1 var677)
(declare-const var2191!2 Int)
(declare-const var3165!24 (Array Int var3164))
(assert (not (= var3165!24 null-__Array__Int__var3164__)))
(assert (= (select var3165!24 23) var2037!1)) ; Statement: r0[23] = $r73 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3164-init=([], com.mysql.cj.result.Field[]), var3164-init=([], com.mysql.cj.result.Field), metadataCollationIndex/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], int), metadataEncoding/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], java.lang.String), <init>/-503715259=([com.mysql.cj.result.Field, java.lang.String, java.lang.String, int, java.lang.String, com.mysql.cj.MysqlType, int], void), Int_toString/1350422511=([int], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var30=com.mysql.cj.jdbc.DatabaseMetaData, var3507=r2, var3164=com.mysql.cj.result.Field, var3165=r0, var2261=$r1, var782=$i0, var2519=$r4, var677=com.mysql.cj.MysqlType, var862=$r3, var891="", var3557="TABLE_CAT", var3809=255, var39=$r5, var1914=$i1, var2656=$r7, var2845=$r6, var813="TABLE_SCHEM", var1973=0, var2593=$r8, var2012=$i2, var1607=$r10, var652=$r9, var3693="TABLE_NAME", var2145=$r11, var3597=$i3, var1264=$r13, var2018=$r12, var371="COLUMN_NAME", var1127=32, var1832=$r14, var10=$i4, var2017=$r16, var1237=$r15, var2114="DATA_TYPE", var2355=5, var1456=$r17, var321=$i5, var2559=$r19, var3306=$r18, var1243="TYPE_NAME", var1920=16, var779=$r20, var3297=$i6, var2625=$r21, var3833=$r22, var1932=$r23, var2420=$i7, var3422="COLUMN_SIZE", var3013=$r24, var3349=$i8, var2151=$r26, var1245=$r25, var3134="BUFFER_LENGTH", var2824=10, var723=$r27, var1171=$i9, var2230=$r29, var2152=$r28, var3615="DECIMAL_DIGITS", var3232=$r30, var2482=$i10, var837=$r32, var849=$r31, var466="NUM_PREC_RADIX", var1010=$r33, var3309=$i11, var3157=$r35, var781=$r34, var1446="NULLABLE", var598=$r36, var3528=$i12, var3494=$r38, var3073=$r37, var2048="REMARKS", var3249=$r39, var2194=$i13, var1516=$r41, var518=$r40, var294="COLUMN_DEF", var1420=$r42, var209=$i14, var3441=$r44, var2731=$r43, var1683="SQL_DATA_TYPE", var1317=$r45, var161=$i15, var822=$r47, var1457=$r46, var2292="SQL_DATETIME_SUB", var3196=$r48, var567=$i16, var2049=$r49, var1929=$r50, var1361=$r51, var669=$i17, var1619="CHAR_OCTET_LENGTH", var1546=$r52, var136=$i18, var260=$r54, var118=$r53, var850="ORDINAL_POSITION", var3236=$r55, var177=$i19, var3568=$r57, var2070=$r56, var1024="IS_NULLABLE", var2191=3, var1834=$r58, var2095=$i20, var229=$r60, var2315=$r59, var2926="SCOPE_CATALOG", var2651=$r61, var3363=$i21, var149=$r63, var2892=$r62, var2962="SCOPE_SCHEMA", var1321=$r64, var2214=$i22, var1450=$r66, var1860=$r65, var2805="SCOPE_TABLE", var3311=$r67, var2980=$i23, var1560=$r69, var2162=$r68, var2468="SOURCE_DATA_TYPE", var3473=$r70, var831=$i24, var1950=$r72, var1315=$r71, var1544="IS_AUTOINCREMENT", var2037=$r73, var2835=$i25, var3952=$r75, var1207=$r74, var1319="IS_GENERATEDCOLUMN"}
; {com.mysql.cj.jdbc.DatabaseMetaData=var30, r2=var3507, com.mysql.cj.result.Field=var3164, r0=var3165, $r1=var2261, $i0=var782, $r4=var2519, com.mysql.cj.MysqlType=var677, $r3=var862, ""=var891, "TABLE_CAT"=var3557, 255=var3809, $r5=var39, $i1=var1914, $r7=var2656, $r6=var2845, "TABLE_SCHEM"=var813, 0=var1973, $r8=var2593, $i2=var2012, $r10=var1607, $r9=var652, "TABLE_NAME"=var3693, $r11=var2145, $i3=var3597, $r13=var1264, $r12=var2018, "COLUMN_NAME"=var371, 32=var1127, $r14=var1832, $i4=var10, $r16=var2017, $r15=var1237, "DATA_TYPE"=var2114, 5=var2355, $r17=var1456, $i5=var321, $r19=var2559, $r18=var3306, "TYPE_NAME"=var1243, 16=var1920, $r20=var779, $i6=var3297, $r21=var2625, $r22=var3833, $r23=var1932, $i7=var2420, "COLUMN_SIZE"=var3422, $r24=var3013, $i8=var3349, $r26=var2151, $r25=var1245, "BUFFER_LENGTH"=var3134, 10=var2824, $r27=var723, $i9=var1171, $r29=var2230, $r28=var2152, "DECIMAL_DIGITS"=var3615, $r30=var3232, $i10=var2482, $r32=var837, $r31=var849, "NUM_PREC_RADIX"=var466, $r33=var1010, $i11=var3309, $r35=var3157, $r34=var781, "NULLABLE"=var1446, $r36=var598, $i12=var3528, $r38=var3494, $r37=var3073, "REMARKS"=var2048, $r39=var3249, $i13=var2194, $r41=var1516, $r40=var518, "COLUMN_DEF"=var294, $r42=var1420, $i14=var209, $r44=var3441, $r43=var2731, "SQL_DATA_TYPE"=var1683, $r45=var1317, $i15=var161, $r47=var822, $r46=var1457, "SQL_DATETIME_SUB"=var2292, $r48=var3196, $i16=var567, $r49=var2049, $r50=var1929, $r51=var1361, $i17=var669, "CHAR_OCTET_LENGTH"=var1619, $r52=var1546, $i18=var136, $r54=var260, $r53=var118, "ORDINAL_POSITION"=var850, $r55=var3236, $i19=var177, $r57=var3568, $r56=var2070, "IS_NULLABLE"=var1024, 3=var2191, $r58=var1834, $i20=var2095, $r60=var229, $r59=var2315, "SCOPE_CATALOG"=var2926, $r61=var2651, $i21=var3363, $r63=var149, $r62=var2892, "SCOPE_SCHEMA"=var2962, $r64=var1321, $i22=var2214, $r66=var1450, $r65=var1860, "SCOPE_TABLE"=var2805, $r67=var3311, $i23=var2980, $r69=var1560, $r68=var2162, "SOURCE_DATA_TYPE"=var2468, $r70=var3473, $i24=var831, $r72=var1950, $r71=var1315, "IS_AUTOINCREMENT"=var1544, $r73=var2037, $i25=var2835, $r75=var3952, $r74=var1207, "IS_GENERATEDCOLUMN"=var1319}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r0 = newarray (com.mysql.cj.result.Field)[24];	$r1 = new com.mysql.cj.result.Field;	$i0 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r1.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_CAT", $i0, $r4, $r3, 255);	r0[0] = $r1;	$r5 = new com.mysql.cj.result.Field;	$i1 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r7 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r6 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r5.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_SCHEM", $i1, $r7, $r6, 0);	r0[1] = $r5;	$r8 = new com.mysql.cj.result.Field;	$i2 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r10 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r9 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r8.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TABLE_NAME", $i2, $r10, $r9, 255);	r0[2] = $r8;	$r11 = new com.mysql.cj.result.Field;	$i3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r13 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r12 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r11.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_NAME", $i3, $r13, $r12, 32);	r0[3] = $r11;	$r14 = new com.mysql.cj.result.Field;	$i4 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r16 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r14.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "DATA_TYPE", $i4, $r16, $r15, 5);	r0[4] = $r14;	$r17 = new com.mysql.cj.result.Field;	$i5 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r19 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r18 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r17.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "TYPE_NAME", $i5, $r19, $r18, 16);	r0[5] = $r17;	$r20 = new com.mysql.cj.result.Field;	$i6 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r21 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r22 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	$r23 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(2147483647);	$i7 = virtualinvoke $r23.<java.lang.String: int length()>();	specialinvoke $r20.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_SIZE", $i6, $r21, $r22, $i7);	r0[6] = $r20;	$r24 = new com.mysql.cj.result.Field;	$i8 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r26 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r25 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r24.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "BUFFER_LENGTH", $i8, $r26, $r25, 10);	r0[7] = $r24;	$r27 = new com.mysql.cj.result.Field;	$i9 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r29 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r28 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r27.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "DECIMAL_DIGITS", $i9, $r29, $r28, 10);	r0[8] = $r27;	$r30 = new com.mysql.cj.result.Field;	$i10 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r32 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r31 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r30.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "NUM_PREC_RADIX", $i10, $r32, $r31, 10);	r0[9] = $r30;	$r33 = new com.mysql.cj.result.Field;	$i11 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r35 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r34 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r33.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "NULLABLE", $i11, $r35, $r34, 10);	r0[10] = $r33;	$r36 = new com.mysql.cj.result.Field;	$i12 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r38 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r37 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r36.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "REMARKS", $i12, $r38, $r37, 0);	r0[11] = $r36;	$r39 = new com.mysql.cj.result.Field;	$i13 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r41 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r40 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r39.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "COLUMN_DEF", $i13, $r41, $r40, 0);	r0[12] = $r39;	$r42 = new com.mysql.cj.result.Field;	$i14 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r44 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r43 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r42.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SQL_DATA_TYPE", $i14, $r44, $r43, 10);	r0[13] = $r42;	$r45 = new com.mysql.cj.result.Field;	$i15 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r47 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r46 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r45.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SQL_DATETIME_SUB", $i15, $r47, $r46, 10);	r0[14] = $r45;	$r48 = new com.mysql.cj.result.Field;	$i16 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r49 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r50 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	$r51 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(2147483647);	$i17 = virtualinvoke $r51.<java.lang.String: int length()>();	specialinvoke $r48.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "CHAR_OCTET_LENGTH", $i16, $r49, $r50, $i17);	r0[15] = $r48;	$r52 = new com.mysql.cj.result.Field;	$i18 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r54 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;	specialinvoke $r52.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "ORDINAL_POSITION", $i18, $r54, $r53, 10);	r0[16] = $r52;	$r55 = new com.mysql.cj.result.Field;	$i19 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r57 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r55.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_NULLABLE", $i19, $r57, $r56, 3);	r0[17] = $r55;	$r58 = new com.mysql.cj.result.Field;	$i20 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r60 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r59 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r58.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_CATALOG", $i20, $r60, $r59, 255);	r0[18] = $r58;	$r61 = new com.mysql.cj.result.Field;	$i21 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r63 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r62 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r61.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_SCHEMA", $i21, $r63, $r62, 255);	r0[19] = $r61;	$r64 = new com.mysql.cj.result.Field;	$i22 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r66 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r64.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SCOPE_TABLE", $i22, $r66, $r65, 255);	r0[20] = $r64;	$r67 = new com.mysql.cj.result.Field;	$i23 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r69 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;	specialinvoke $r67.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "SOURCE_DATA_TYPE", $i23, $r69, $r68, 10);	r0[21] = $r67;	$r70 = new com.mysql.cj.result.Field;	$i24 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r72 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r71 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r70.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_AUTOINCREMENT", $i24, $r72, $r71, 3);	r0[22] = $r70;	$r73 = new com.mysql.cj.result.Field;	$i25 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: int metadataCollationIndex>;	$r75 = r2.<com.mysql.cj.jdbc.DatabaseMetaData: java.lang.String metadataEncoding>;	$r74 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;	specialinvoke $r73.<com.mysql.cj.result.Field: void <init>(java.lang.String,java.lang.String,int,java.lang.String,com.mysql.cj.MysqlType,int)>("", "IS_GENERATEDCOLUMN", $i25, $r75, $r74, 3);	r0[23] = $r73;	return r0
;block_num 1