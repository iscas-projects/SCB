(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2444 0)
(declare-sort var384 0)
(declare-sort var528 0)
(declare-sort var280 0)
(declare-sort var924 0)
(declare-sort var1443 0)
(declare-sort var2997 0)
(declare-sort var177 0)
(declare-sort var656 0)
(declare-sort var2308 0)
(declare-sort var0 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2444) var280)
(declare-fun var280_getValue/1633538672 (var280) var924)
(declare-fun cast-from-var1443-to-var924 (var1443) var924)
(declare-fun s2b/-450202684 (var2444 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2444 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var528) var2997)
(declare-fun getJdbcType/389098195 (var2997) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2997) String)
(declare-fun datetimePrecision/-289055874 (var528) Int)
(declare-fun columnSize/-289055874 (var528) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var528) Int)
(declare-fun numPrecRadix/-289055874 (var528) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var528) Int)
(declare-fun var177_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2444) var656)
(declare-fun var0_createSQLException/-1268047242 (String String var656) var2308)
(declare-const null-var2444 var2444)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var528 var528)
(declare-const null-Int Int)
(declare-const var1443-SCHEMA var1443)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2997-YEAR var2997)
(declare-const var523 var2444) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var523 null-var2444)))
(declare-const var1309 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1309 null-__Array__Int__Int__)))
(declare-const var2183 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2183 null-__Array__Int__Int__)))
(declare-const var1549 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1549 null-String)))
(declare-const var1140 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1140 null-Bool)))
(declare-const var1076 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1076 null-Bool)))
(declare-const var721 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var721 null-Bool)))
(declare-const var2262 var528) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2262 null-var528)))
(declare-const var118 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var118 null-Bool)))
(declare-const var212 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var212 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var118 1 0) 0)) ; Cond: z0 == 0 
(define-const var2076 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var1190 (Array Int (Array Int Int)) var2076) ; Statement: r0 = $r54 
(define-const var1199 (Array Int (Array Int Int)) var2076) ; Statement: $r53 = $r54 
(define-const var2897 var280 (databaseTerm/1074764847 var523)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1731 var924 (var280_getValue/1633538672 var2897)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var143 var1443 var1443-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1731 (cast-from-var1443-to-var924 var143))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3459 (Array Int Int) (s2b/-450202684 var523 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1199!1 (Array Int (Array Int Int)))
(assert (not (= var1199!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1199!1 0) var3459)) ; Statement: $r53[0] = $r55 
(define-const var3637 var280 (databaseTerm/1074764847 var523)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3362 var924 (var280_getValue/1633538672 var3637)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1803 var1443 var1443-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var3362 (cast-from-var1443-to-var924 var1803)))) ; Cond: $r8 != $r7 
(define-const var3557 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1190!1 (Array Int (Array Int Int)))
(assert (not (= var1190!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!1 1) var3557)) ; Statement: r0[1] = $r56 
(declare-const var1190!2 (Array Int (Array Int Int)))
(assert (not (= var1190!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!2 2) var1309)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1577 (Array Int Int) (s2b/-450202684 var523 var1549)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1190!3 (Array Int (Array Int Int)))
(assert (not (= var1190!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!3 3) var1577)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2140 Int (getColumnType/800489773 var523 var1140 var1076 var721 var118)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1707 String (String_valueOf/1240665136 var2140)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1167 (Array Int Int) (s2b/-450202684 var523 var1707)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1190!4 (Array Int (Array Int Int)))
(assert (not (= var1190!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!4 4) var1167)) ; Statement: r0[4] = $r13 
(define-const var2352 var2997 (mysqlType/-289055874 var2262)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3301 var2997 var2997-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2352 var3301))) ; Cond: $r16 != $r15 
(define-const var1504 var2997 (mysqlType/-289055874 var2262)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1096 Int (getJdbcType/389098195 var1504)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3748 Int (cast-from-Int-to-Int var1096)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var568 String (Int_toString/-1770815874 var3748)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var439 (Array Int Int) (getBytes/1068683673 var568)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1190!5 (Array Int (Array Int Int)))
(assert (not (= var1190!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!5 5) var439)) ; Statement: r0[5] = $r58 
(define-const var390 var2997 (mysqlType/-289055874 var2262)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1319 String (getName/1307715079 var390)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3610 (Array Int Int) (s2b/-450202684 var523 var1319)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1190!6 (Array Int (Array Int Int)))
(assert (not (= var1190!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!6 6) var3610)) ; Statement: r0[6] = $r61 
(define-const var2706 Int (datetimePrecision/-289055874 var2262)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2706 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3272 Int (columnSize/-289055874 var2262)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3299 String (toString/483301002 var3272)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3717 (Array Int Int) (s2b/-450202684 var523 var3299)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var1190!7 (Array Int (Array Int Int)))
(assert (not (= var1190!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!7 7) var3717)) ; Statement: r0[7] = $r63 
(define-const var3355 Int (columnSize/-289055874 var2262)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3355 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var816 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1190!8 (Array Int (Array Int Int)))
(assert (not (= var1190!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!8 8) var816)) ; Statement: r0[8] = $r64 
(define-const var672 Int (decimalDigits/-289055874 var2262)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var672 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var123 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1190!9 (Array Int (Array Int Int)))
(assert (not (= var1190!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!9 9) var123)) ; Statement: r0[9] = $r65 
(define-const var2945 Int (numPrecRadix/-289055874 var2262)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var56 String (Int_toString/1350422511 var2945)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1896 (Array Int Int) (s2b/-450202684 var523 var56)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1190!10 (Array Int (Array Int Int)))
(assert (not (= var1190!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1190!10 10) var1896)) ; Statement: r0[10] = $r27 
(define-const var2222 Int (nullability/-289055874 var2262)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2222 2)) (and (not (= var2222 1)) (and (not (= var2222 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3056 String (var177_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3966 var656 (getExceptionInterceptor/-1244810802 var523)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var471 var2308 (var0_createSQLException/-1268047242 var3056 "S1000" var3966)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var280_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1443-to-var924=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var177_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var0_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2444=com.mysql.cj.jdbc.DatabaseMetaData, var523=r1, var1309=r9, var2183=r5, var1549=r10, var384=null_type, var1140=z1, var1076=z2, var721=z3, var528=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2262=r14, var118=z0, var212=i4, var2076=$r54, var1190=r0, var1199=$r53, var280=com.mysql.cj.conf.RuntimeProperty, var2897=$r2, var924=java.lang.Object, var1731=$r4, var1443=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var143=$r3, var3459=$r55, var3637=$r6, var3362=$r8, var1803=$r7, var3557=$r56, var1577=$r11, var2140=$i0, var1707=$r12, var1167=$r13, var2997=com.mysql.cj.MysqlType, var2352=$r16, var3301=$r15, var1504=$r17, var1096=$i1, var3748=$s5, var568=$r57, var439=$r58, var390=$r59, var1319=$r60, var3610=$r61, var2706=$r62, var3272=$r51, var3299=$r52, var3717=$r63, var3355=$r20, var816=$r64, var672=$r23, var123=$r65, var2945=$i2, var56=$r26, var1896=$r27, var2222=$i3, var177=com.mysql.cj.Messages, var3056=$r49, var656=com.mysql.cj.exceptions.ExceptionInterceptor, var3966=$r48, var2308=java.sql.SQLException, var0=com.mysql.cj.jdbc.exceptions.SQLError, var471=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2444, r1=var523, r9=var1309, r5=var2183, r10=var1549, null_type=var384, z1=var1140, z2=var1076, z3=var721, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var528, r14=var2262, z0=var118, i4=var212, $r54=var2076, r0=var1190, $r53=var1199, com.mysql.cj.conf.RuntimeProperty=var280, $r2=var2897, java.lang.Object=var924, $r4=var1731, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1443, $r3=var143, $r55=var3459, $r6=var3637, $r8=var3362, $r7=var1803, $r56=var3557, $r11=var1577, $i0=var2140, $r12=var1707, $r13=var1167, com.mysql.cj.MysqlType=var2997, $r16=var2352, $r15=var3301, $r17=var1504, $i1=var1096, $s5=var3748, $r57=var568, $r58=var439, $r59=var390, $r60=var1319, $r61=var3610, $r62=var2706, $r51=var3272, $r52=var3299, $r63=var3717, $r20=var3355, $r64=var816, $r23=var672, $r65=var123, $i2=var2945, $r26=var56, $r27=var1896, $i3=var2222, com.mysql.cj.Messages=var177, $r49=var3056, com.mysql.cj.exceptions.ExceptionInterceptor=var656, $r48=var3966, java.sql.SQLException=var2308, com.mysql.cj.jdbc.exceptions.SQLError=var0, $r50=var471}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16