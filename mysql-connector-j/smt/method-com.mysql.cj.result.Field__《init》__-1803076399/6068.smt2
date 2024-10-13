(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1306 0)
(declare-sort var1278 0)
(declare-sort var3461 0)
(declare-sort var2181 0)
(declare-sort var307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var307) void)
(declare-fun cast-from-var1306-to-var307 (var1306) var307)
(declare-fun collationIndex/-1583384585 (var1306) Int)
(declare-fun encoding/-1583384585 (var1306) String)
(declare-fun databaseName/-1583384585 (var1306) var1278)
(declare-fun tableName/-1583384585 (var1306) var1278)
(declare-fun originalTableName/-1583384585 (var1306) var1278)
(declare-fun columnName/-1583384585 (var1306) var1278)
(declare-fun originalColumnName/-1583384585 (var1306) var1278)
(declare-fun fullName/-1583384585 (var1306) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun mysqlTypeId/-1583384585 (var1306) Int)
(declare-fun mysqlType/-1583384585 (var1306) var2181)
(declare-fun length/-1583384585 (var1306) Int)
(declare-fun colFlag/-1583384585 (var1306) Int)
(declare-fun colDecimals/-1583384585 (var1306) Int)
(declare-fun adjustFlagsByMysqlType/1126103941 (var1306) void)
(declare-const null-var1306 var1306)
(declare-const null-var1278 var1278)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2181 var2181)
(declare-const var2181-UNKNOWN var2181)
(declare-const var2181-JSON var2181)
(declare-const var1890 var1306) ; Statement: r0 := @this: com.mysql.cj.result.Field 
(assert (not (= var1890 null-var1306)))
(declare-const var2540 var1278) ; Statement: r2 := @parameter0: com.mysql.cj.util.LazyString 
(assert (not (= var2540 null-var1278)))
(declare-const var635 var1278) ; Statement: r3 := @parameter1: com.mysql.cj.util.LazyString 
(assert (not (= var635 null-var1278)))
(declare-const var2258 var1278) ; Statement: r4 := @parameter2: com.mysql.cj.util.LazyString 
(assert (not (= var2258 null-var1278)))
(declare-const var3593 var1278) ; Statement: r5 := @parameter3: com.mysql.cj.util.LazyString 
(assert (not (= var3593 null-var1278)))
(declare-const var606 var1278) ; Statement: r6 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var606 null-var1278)))
(declare-const var1980 Int) ; Statement: l0 := @parameter5: long 
(assert (not (= var1980 null-Int)))
(declare-const var1953 Int) ; Statement: i3 := @parameter6: int 
(assert (not (= var1953 null-Int)))
(declare-const var3055 Int) ; Statement: s1 := @parameter7: short 
(assert (not (= var3055 null-Int)))
(declare-const var438 Int) ; Statement: i2 := @parameter8: int 
(assert (not (= var438 null-Int)))
(declare-const var2298 Int) ; Statement: i4 := @parameter9: int 
(assert (not (= var2298 null-Int)))
(declare-const var942 String) ; Statement: r7 := @parameter10: java.lang.String 
(assert (not (= var942 null-String)))
(declare-const var1653 var2181) ; Statement: r9 := @parameter11: com.mysql.cj.MysqlType 
(assert (not (= var1653 null-var2181)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1306-to-var307 var1890))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1890!1 var1306)
(declare-const var1890!2 var1306)
(assert (not (= var1890!2 null-var1306)))
(assert (= (collationIndex/-1583384585 var1890!2) 0)) ; Statement: r0.<com.mysql.cj.result.Field: int collationIndex> = 0 
(declare-const var1890!3 var1306)
(assert (not (= var1890!3 null-var1306)))
(assert (= (encoding/-1583384585 var1890!3) "US-ASCII")) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String encoding> = "US-ASCII" 
(declare-const var1890!4 var1306)
(assert (not (= var1890!4 null-var1306)))
(assert (= (databaseName/-1583384585 var1890!4) null-var1278)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = null 
(declare-const var1890!5 var1306)
(assert (not (= var1890!5 null-var1306)))
(assert (= (tableName/-1583384585 var1890!5) null-var1278)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = null 
(declare-const var1890!6 var1306)
(assert (not (= var1890!6 null-var1306)))
(assert (= (originalTableName/-1583384585 var1890!6) null-var1278)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = null 
(declare-const var1890!7 var1306)
(assert (not (= var1890!7 null-var1306)))
(assert (= (columnName/-1583384585 var1890!7) null-var1278)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = null 
(declare-const var1890!8 var1306)
(assert (not (= var1890!8 null-var1306)))
(assert (= (originalColumnName/-1583384585 var1890!8) null-var1278)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = null 
(declare-const var1890!9 var1306)
(assert (not (= var1890!9 null-var1306)))
(assert (= (fullName/-1583384585 var1890!9) null-String)) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String fullName> = null 
(define-const var100 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(declare-const var1890!10 var1306)
(assert (not (= var1890!10 null-var1306)))
(assert (= (mysqlTypeId/-1583384585 var1890!10) var100)) ; Statement: r0.<com.mysql.cj.result.Field: int mysqlTypeId> = $i6 
(define-const var706 var2181 var2181-UNKNOWN) ; Statement: $r1 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN> 
(declare-const var1890!11 var1306)
(assert (not (= var1890!11 null-var1306)))
(assert (= (mysqlType/-1583384585 var1890!11) var706)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = $r1 
(declare-const var1890!12 var1306)
(assert (not (= var1890!12 null-var1306)))
(assert (= (databaseName/-1583384585 var1890!12) var2540)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = r2 
(declare-const var1890!13 var1306)
(assert (not (= var1890!13 null-var1306)))
(assert (= (tableName/-1583384585 var1890!13) var635)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = r3 
(declare-const var1890!14 var1306)
(assert (not (= var1890!14 null-var1306)))
(assert (= (originalTableName/-1583384585 var1890!14) var2258)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = r4 
(declare-const var1890!15 var1306)
(assert (not (= var1890!15 null-var1306)))
(assert (= (columnName/-1583384585 var1890!15) var3593)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = r5 
(declare-const var1890!16 var1306)
(assert (not (= var1890!16 null-var1306)))
(assert (= (originalColumnName/-1583384585 var1890!16) var606)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = r6 
(declare-const var1890!17 var1306)
(assert (not (= var1890!17 null-var1306)))
(assert (= (length/-1583384585 var1890!17) var1980)) ; Statement: r0.<com.mysql.cj.result.Field: long length> = l0 
(declare-const var1890!18 var1306)
(assert (not (= var1890!18 null-var1306)))
(assert (= (colFlag/-1583384585 var1890!18) var3055)) ; Statement: r0.<com.mysql.cj.result.Field: short colFlag> = s1 
(declare-const var1890!19 var1306)
(assert (not (= var1890!19 null-var1306)))
(assert (= (colDecimals/-1583384585 var1890!19) var438)) ; Statement: r0.<com.mysql.cj.result.Field: int colDecimals> = i2 
(declare-const var1890!20 var1306)
(assert (not (= var1890!20 null-var1306)))
(assert (= (mysqlTypeId/-1583384585 var1890!20) var1953)) ; Statement: r0.<com.mysql.cj.result.Field: int mysqlTypeId> = i3 
(declare-const var1890!21 var1306)
(assert (not (= var1890!21 null-var1306)))
(assert (= (collationIndex/-1583384585 var1890!21) var2298)) ; Statement: r0.<com.mysql.cj.result.Field: int collationIndex> = i4 
(define-const var3281 String "UnicodeBig") ; Statement: $r8 = "UnicodeBig" 
(assert true)
(define-const var2349 Bool (= var3281 var942)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r11 = r7 
(assert (= (ite var2349 1 0) 0)) ; Cond: $z0 == 0 
(define-const var798 String var942) ; Statement: $r11 = r7 
(assert true) ; Non Conditional
(declare-const var1890!22 var1306)
(assert (not (= var1890!22 null-var1306)))
(assert (= (encoding/-1583384585 var1890!22) var798)) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11 
(define-const var1516 var2181 var2181-JSON) ; Statement: $r10 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON> 
 ; Statement: if r9 != $r10 goto r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9 
(assert (not (= var1653 var1516))) ; Cond: r9 != $r10 
(declare-const var1890!23 var1306)
(assert (not (= var1890!23 null-var1306)))
(assert (= (mysqlType/-1583384585 var1890!23) var1653)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9 
(assert true)
;(assert (adjustFlagsByMysqlType/1126103941 var1890!23)) ; Statement: specialinvoke r0.<com.mysql.cj.result.Field: void adjustFlagsByMysqlType()>() 

(declare-const var1890!24 var1306)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1306-to-var307=([com.mysql.cj.result.Field], java.lang.Object), collationIndex/-1583384585=([com.mysql.cj.result.Field], int), encoding/-1583384585=([com.mysql.cj.result.Field], java.lang.String), databaseName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), tableName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), originalTableName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), columnName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), originalColumnName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), fullName/-1583384585=([com.mysql.cj.result.Field], java.lang.String), cast-from-Int-to-Int=([int], int), mysqlTypeId/-1583384585=([com.mysql.cj.result.Field], int), mysqlType/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.MysqlType), length/-1583384585=([com.mysql.cj.result.Field], long), colFlag/-1583384585=([com.mysql.cj.result.Field], short), colDecimals/-1583384585=([com.mysql.cj.result.Field], int), adjustFlagsByMysqlType/1126103941=([com.mysql.cj.result.Field], void)}
; {var1306=com.mysql.cj.result.Field, var1890=r0, var1278=com.mysql.cj.util.LazyString, var2540=r2, var635=r3, var2258=r4, var3593=r5, var606=r6, var1980=l0, var1953=i3, var3055=s1, var438=i2, var2298=i4, var942=r7, var3461=null_type, var2181=com.mysql.cj.MysqlType, var1653=r9, var307=java.lang.Object, var100=$i6, var706=$r1, var3281=$r8, var2349=$z0, var798=$r11, var1516=$r10}
; {com.mysql.cj.result.Field=var1306, r0=var1890, com.mysql.cj.util.LazyString=var1278, r2=var2540, r3=var635, r4=var2258, r5=var3593, r6=var606, l0=var1980, i3=var1953, s1=var3055, i2=var438, i4=var2298, r7=var942, null_type=var3461, com.mysql.cj.MysqlType=var2181, r9=var1653, java.lang.Object=var307, $i6=var100, $r1=var706, $r8=var3281, $z0=var2349, $r11=var798, $r10=var1516}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.result.Field;	r2 := @parameter0: com.mysql.cj.util.LazyString;	r3 := @parameter1: com.mysql.cj.util.LazyString;	r4 := @parameter2: com.mysql.cj.util.LazyString;	r5 := @parameter3: com.mysql.cj.util.LazyString;	r6 := @parameter4: com.mysql.cj.util.LazyString;	l0 := @parameter5: long;	i3 := @parameter6: int;	s1 := @parameter7: short;	i2 := @parameter8: int;	i4 := @parameter9: int;	r7 := @parameter10: java.lang.String;	r9 := @parameter11: com.mysql.cj.MysqlType;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.result.Field: int collationIndex> = 0;	r0.<com.mysql.cj.result.Field: java.lang.String encoding> = "US-ASCII";	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = null;	r0.<com.mysql.cj.result.Field: java.lang.String fullName> = null;	$i6 = (int) -1;	r0.<com.mysql.cj.result.Field: int mysqlTypeId> = $i6;	$r1 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>;	r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = $r1;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = r2;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = r3;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = r4;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = r5;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = r6;	r0.<com.mysql.cj.result.Field: long length> = l0;	r0.<com.mysql.cj.result.Field: short colFlag> = s1;	r0.<com.mysql.cj.result.Field: int colDecimals> = i2;	r0.<com.mysql.cj.result.Field: int mysqlTypeId> = i3;	r0.<com.mysql.cj.result.Field: int collationIndex> = i4;	$r8 = "UnicodeBig";	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r11 = r7;	$r11 = r7;	r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11;	$r10 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;	if r9 != $r10 goto r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9;	r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9;	specialinvoke r0.<com.mysql.cj.result.Field: void adjustFlagsByMysqlType()>();	return
;block_num 4