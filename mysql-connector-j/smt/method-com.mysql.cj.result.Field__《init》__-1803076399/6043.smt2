(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var317 0)
(declare-sort var1499 0)
(declare-sort var688 0)
(declare-sort var2887 0)
(declare-sort var2096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2096) void)
(declare-fun cast-from-var317-to-var2096 (var317) var2096)
(declare-fun collationIndex/-1583384585 (var317) Int)
(declare-fun encoding/-1583384585 (var317) String)
(declare-fun databaseName/-1583384585 (var317) var1499)
(declare-fun tableName/-1583384585 (var317) var1499)
(declare-fun originalTableName/-1583384585 (var317) var1499)
(declare-fun columnName/-1583384585 (var317) var1499)
(declare-fun originalColumnName/-1583384585 (var317) var1499)
(declare-fun fullName/-1583384585 (var317) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun mysqlTypeId/-1583384585 (var317) Int)
(declare-fun mysqlType/-1583384585 (var317) var2887)
(declare-fun length/-1583384585 (var317) Int)
(declare-fun colFlag/-1583384585 (var317) Int)
(declare-fun colDecimals/-1583384585 (var317) Int)
(declare-fun adjustFlagsByMysqlType/1126103941 (var317) void)
(declare-const null-var317 var317)
(declare-const null-var1499 var1499)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2887 var2887)
(declare-const var2887-UNKNOWN var2887)
(declare-const var2887-JSON var2887)
(declare-const var3355 var317) ; Statement: r0 := @this: com.mysql.cj.result.Field 
(assert (not (= var3355 null-var317)))
(declare-const var3015 var1499) ; Statement: r2 := @parameter0: com.mysql.cj.util.LazyString 
(assert (not (= var3015 null-var1499)))
(declare-const var967 var1499) ; Statement: r3 := @parameter1: com.mysql.cj.util.LazyString 
(assert (not (= var967 null-var1499)))
(declare-const var772 var1499) ; Statement: r4 := @parameter2: com.mysql.cj.util.LazyString 
(assert (not (= var772 null-var1499)))
(declare-const var2349 var1499) ; Statement: r5 := @parameter3: com.mysql.cj.util.LazyString 
(assert (not (= var2349 null-var1499)))
(declare-const var2803 var1499) ; Statement: r6 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var2803 null-var1499)))
(declare-const var187 Int) ; Statement: l0 := @parameter5: long 
(assert (not (= var187 null-Int)))
(declare-const var477 Int) ; Statement: i3 := @parameter6: int 
(assert (not (= var477 null-Int)))
(declare-const var974 Int) ; Statement: s1 := @parameter7: short 
(assert (not (= var974 null-Int)))
(declare-const var2670 Int) ; Statement: i2 := @parameter8: int 
(assert (not (= var2670 null-Int)))
(declare-const var1056 Int) ; Statement: i4 := @parameter9: int 
(assert (not (= var1056 null-Int)))
(declare-const var2336 String) ; Statement: r7 := @parameter10: java.lang.String 
(assert (not (= var2336 null-String)))
(declare-const var3616 var2887) ; Statement: r9 := @parameter11: com.mysql.cj.MysqlType 
(assert (not (= var3616 null-var2887)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var317-to-var2096 var3355))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3355!1 var317)
(declare-const var3355!2 var317)
(assert (not (= var3355!2 null-var317)))
(assert (= (collationIndex/-1583384585 var3355!2) 0)) ; Statement: r0.<com.mysql.cj.result.Field: int collationIndex> = 0 
(declare-const var3355!3 var317)
(assert (not (= var3355!3 null-var317)))
(assert (= (encoding/-1583384585 var3355!3) "US-ASCII")) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String encoding> = "US-ASCII" 
(declare-const var3355!4 var317)
(assert (not (= var3355!4 null-var317)))
(assert (= (databaseName/-1583384585 var3355!4) null-var1499)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = null 
(declare-const var3355!5 var317)
(assert (not (= var3355!5 null-var317)))
(assert (= (tableName/-1583384585 var3355!5) null-var1499)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = null 
(declare-const var3355!6 var317)
(assert (not (= var3355!6 null-var317)))
(assert (= (originalTableName/-1583384585 var3355!6) null-var1499)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = null 
(declare-const var3355!7 var317)
(assert (not (= var3355!7 null-var317)))
(assert (= (columnName/-1583384585 var3355!7) null-var1499)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = null 
(declare-const var3355!8 var317)
(assert (not (= var3355!8 null-var317)))
(assert (= (originalColumnName/-1583384585 var3355!8) null-var1499)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = null 
(declare-const var3355!9 var317)
(assert (not (= var3355!9 null-var317)))
(assert (= (fullName/-1583384585 var3355!9) null-String)) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String fullName> = null 
(define-const var170 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(declare-const var3355!10 var317)
(assert (not (= var3355!10 null-var317)))
(assert (= (mysqlTypeId/-1583384585 var3355!10) var170)) ; Statement: r0.<com.mysql.cj.result.Field: int mysqlTypeId> = $i6 
(define-const var3881 var2887 var2887-UNKNOWN) ; Statement: $r1 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN> 
(declare-const var3355!11 var317)
(assert (not (= var3355!11 null-var317)))
(assert (= (mysqlType/-1583384585 var3355!11) var3881)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = $r1 
(declare-const var3355!12 var317)
(assert (not (= var3355!12 null-var317)))
(assert (= (databaseName/-1583384585 var3355!12) var3015)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = r2 
(declare-const var3355!13 var317)
(assert (not (= var3355!13 null-var317)))
(assert (= (tableName/-1583384585 var3355!13) var967)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = r3 
(declare-const var3355!14 var317)
(assert (not (= var3355!14 null-var317)))
(assert (= (originalTableName/-1583384585 var3355!14) var772)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = r4 
(declare-const var3355!15 var317)
(assert (not (= var3355!15 null-var317)))
(assert (= (columnName/-1583384585 var3355!15) var2349)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = r5 
(declare-const var3355!16 var317)
(assert (not (= var3355!16 null-var317)))
(assert (= (originalColumnName/-1583384585 var3355!16) var2803)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = r6 
(declare-const var3355!17 var317)
(assert (not (= var3355!17 null-var317)))
(assert (= (length/-1583384585 var3355!17) var187)) ; Statement: r0.<com.mysql.cj.result.Field: long length> = l0 
(declare-const var3355!18 var317)
(assert (not (= var3355!18 null-var317)))
(assert (= (colFlag/-1583384585 var3355!18) var974)) ; Statement: r0.<com.mysql.cj.result.Field: short colFlag> = s1 
(declare-const var3355!19 var317)
(assert (not (= var3355!19 null-var317)))
(assert (= (colDecimals/-1583384585 var3355!19) var2670)) ; Statement: r0.<com.mysql.cj.result.Field: int colDecimals> = i2 
(declare-const var3355!20 var317)
(assert (not (= var3355!20 null-var317)))
(assert (= (mysqlTypeId/-1583384585 var3355!20) var477)) ; Statement: r0.<com.mysql.cj.result.Field: int mysqlTypeId> = i3 
(declare-const var3355!21 var317)
(assert (not (= var3355!21 null-var317)))
(assert (= (collationIndex/-1583384585 var3355!21) var1056)) ; Statement: r0.<com.mysql.cj.result.Field: int collationIndex> = i4 
(define-const var2955 String "UnicodeBig") ; Statement: $r8 = "UnicodeBig" 
(assert true)
(define-const var2083 Bool (= var2955 var2336)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r11 = r7 
(assert (not (= (ite var2083 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1474 String "UTF-16") ; Statement: $r11 = "UTF-16" 
 ; Statement: goto [?= r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11] 
(assert true) ; Non Conditional
(declare-const var3355!22 var317)
(assert (not (= var3355!22 null-var317)))
(assert (= (encoding/-1583384585 var3355!22) var1474)) ; Statement: r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11 
(define-const var3573 var2887 var2887-JSON) ; Statement: $r10 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON> 
 ; Statement: if r9 != $r10 goto r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9 
(assert (not (= var3616 var3573))) ; Cond: r9 != $r10 
(declare-const var3355!23 var317)
(assert (not (= var3355!23 null-var317)))
(assert (= (mysqlType/-1583384585 var3355!23) var3616)) ; Statement: r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9 
(assert true)
;(assert (adjustFlagsByMysqlType/1126103941 var3355!23)) ; Statement: specialinvoke r0.<com.mysql.cj.result.Field: void adjustFlagsByMysqlType()>() 

(declare-const var3355!24 var317)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var317-to-var2096=([com.mysql.cj.result.Field], java.lang.Object), collationIndex/-1583384585=([com.mysql.cj.result.Field], int), encoding/-1583384585=([com.mysql.cj.result.Field], java.lang.String), databaseName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), tableName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), originalTableName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), columnName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), originalColumnName/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.util.LazyString), fullName/-1583384585=([com.mysql.cj.result.Field], java.lang.String), cast-from-Int-to-Int=([int], int), mysqlTypeId/-1583384585=([com.mysql.cj.result.Field], int), mysqlType/-1583384585=([com.mysql.cj.result.Field], com.mysql.cj.MysqlType), length/-1583384585=([com.mysql.cj.result.Field], long), colFlag/-1583384585=([com.mysql.cj.result.Field], short), colDecimals/-1583384585=([com.mysql.cj.result.Field], int), adjustFlagsByMysqlType/1126103941=([com.mysql.cj.result.Field], void)}
; {var317=com.mysql.cj.result.Field, var3355=r0, var1499=com.mysql.cj.util.LazyString, var3015=r2, var967=r3, var772=r4, var2349=r5, var2803=r6, var187=l0, var477=i3, var974=s1, var2670=i2, var1056=i4, var2336=r7, var688=null_type, var2887=com.mysql.cj.MysqlType, var3616=r9, var2096=java.lang.Object, var170=$i6, var3881=$r1, var2955=$r8, var2083=$z0, var1474=$r11, var3573=$r10}
; {com.mysql.cj.result.Field=var317, r0=var3355, com.mysql.cj.util.LazyString=var1499, r2=var3015, r3=var967, r4=var772, r5=var2349, r6=var2803, l0=var187, i3=var477, s1=var974, i2=var2670, i4=var1056, r7=var2336, null_type=var688, com.mysql.cj.MysqlType=var2887, r9=var3616, java.lang.Object=var2096, $i6=var170, $r1=var3881, $r8=var2955, $z0=var2083, $r11=var1474, $r10=var3573}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.result.Field;	r2 := @parameter0: com.mysql.cj.util.LazyString;	r3 := @parameter1: com.mysql.cj.util.LazyString;	r4 := @parameter2: com.mysql.cj.util.LazyString;	r5 := @parameter3: com.mysql.cj.util.LazyString;	r6 := @parameter4: com.mysql.cj.util.LazyString;	l0 := @parameter5: long;	i3 := @parameter6: int;	s1 := @parameter7: short;	i2 := @parameter8: int;	i4 := @parameter9: int;	r7 := @parameter10: java.lang.String;	r9 := @parameter11: com.mysql.cj.MysqlType;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.result.Field: int collationIndex> = 0;	r0.<com.mysql.cj.result.Field: java.lang.String encoding> = "US-ASCII";	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = null;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = null;	r0.<com.mysql.cj.result.Field: java.lang.String fullName> = null;	$i6 = (int) -1;	r0.<com.mysql.cj.result.Field: int mysqlTypeId> = $i6;	$r1 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>;	r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = $r1;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString databaseName> = r2;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString tableName> = r3;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalTableName> = r4;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString columnName> = r5;	r0.<com.mysql.cj.result.Field: com.mysql.cj.util.LazyString originalColumnName> = r6;	r0.<com.mysql.cj.result.Field: long length> = l0;	r0.<com.mysql.cj.result.Field: short colFlag> = s1;	r0.<com.mysql.cj.result.Field: int colDecimals> = i2;	r0.<com.mysql.cj.result.Field: int mysqlTypeId> = i3;	r0.<com.mysql.cj.result.Field: int collationIndex> = i4;	$r8 = "UnicodeBig";	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r11 = r7;	$r11 = "UTF-16";	goto [?= r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11];	r0.<com.mysql.cj.result.Field: java.lang.String encoding> = $r11;	$r10 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;	if r9 != $r10 goto r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9;	r0.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType mysqlType> = r9;	specialinvoke r0.<com.mysql.cj.result.Field: void adjustFlagsByMysqlType()>();	return
;block_num 4