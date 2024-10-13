(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1531 0)
(declare-sort var283 0)
(declare-sort var3225 0)
(declare-sort var1426 0)
(declare-sort var2795 0)
(declare-sort var2739 0)
(declare-sort var167 0)
(declare-sort var1271 0)
(declare-sort var2344 0)
(declare-sort var1095 0)
(declare-sort var3556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1531) var1426)
(declare-fun var1426_getValue/1633538672 (var1426) var2795)
(declare-fun cast-from-var2739-to-var2795 (var2739) var2795)
(declare-fun s2b/-450202684 (var1531 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1531 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3225) var167)
(declare-fun getJdbcType/389098195 (var167) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var167) String)
(declare-fun datetimePrecision/-289055874 (var3225) Int)
(declare-fun columnSize/-289055874 (var3225) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3225) Int)
(declare-fun numPrecRadix/-289055874 (var3225) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3225) Int)
(declare-fun var1271_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1531) var2344)
(declare-fun var3556_createSQLException/-1268047242 (String String var2344) var1095)
(declare-const null-var1531 var1531)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3225 var3225)
(declare-const null-Int Int)
(declare-const var2739-SCHEMA var2739)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var167-YEAR var167)
(declare-const var994 var1531) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var994 null-var1531)))
(declare-const var2765 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2765 null-__Array__Int__Int__)))
(declare-const var549 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var549 null-__Array__Int__Int__)))
(declare-const var226 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var226 null-String)))
(declare-const var677 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var677 null-Bool)))
(declare-const var378 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var378 null-Bool)))
(declare-const var973 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var973 null-Bool)))
(declare-const var2698 var3225) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2698 null-var3225)))
(declare-const var2135 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2135 null-Bool)))
(declare-const var2239 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2239 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var2135 1 0) 0)) ; Cond: z0 == 0 
(define-const var675 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var935 (Array Int (Array Int Int)) var675) ; Statement: r0 = $r54 
(define-const var3345 (Array Int (Array Int Int)) var675) ; Statement: $r53 = $r54 
(define-const var1385 var1426 (databaseTerm/1074764847 var994)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3637 var2795 (var1426_getValue/1633538672 var1385)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var372 var2739 var2739-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3637 (cast-from-var2739-to-var2795 var372)))) ; Cond: $r4 != $r3 
(define-const var3241 (Array Int Int) var549) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3345!1 (Array Int (Array Int Int)))
(assert (not (= var3345!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3345!1 0) var3241)) ; Statement: $r53[0] = $r55 
(define-const var3 var1426 (databaseTerm/1074764847 var994)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var257 var2795 (var1426_getValue/1633538672 var3)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1380 var2739 var2739-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var257 (cast-from-var2739-to-var2795 var1380)))) ; Cond: $r8 != $r7 
(define-const var2432 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var935!1 (Array Int (Array Int Int)))
(assert (not (= var935!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!1 1) var2432)) ; Statement: r0[1] = $r56 
(declare-const var935!2 (Array Int (Array Int Int)))
(assert (not (= var935!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!2 2) var2765)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2332 (Array Int Int) (s2b/-450202684 var994 var226)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var935!3 (Array Int (Array Int Int)))
(assert (not (= var935!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!3 3) var2332)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3133 Int (getColumnType/800489773 var994 var677 var378 var973 var2135)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3136 String (String_valueOf/1240665136 var3133)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1809 (Array Int Int) (s2b/-450202684 var994 var3136)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var935!4 (Array Int (Array Int Int)))
(assert (not (= var935!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!4 4) var1809)) ; Statement: r0[4] = $r13 
(define-const var444 var167 (mysqlType/-289055874 var2698)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1079 var167 var167-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var444 var1079))) ; Cond: $r16 != $r15 
(define-const var3410 var167 (mysqlType/-289055874 var2698)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1203 Int (getJdbcType/389098195 var3410)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var965 Int (cast-from-Int-to-Int var1203)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2458 String (Int_toString/-1770815874 var965)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1992 (Array Int Int) (getBytes/1068683673 var2458)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var935!5 (Array Int (Array Int Int)))
(assert (not (= var935!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!5 5) var1992)) ; Statement: r0[5] = $r58 
(define-const var1761 var167 (mysqlType/-289055874 var2698)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var60 String (getName/1307715079 var1761)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2937 (Array Int Int) (s2b/-450202684 var994 var60)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var935!6 (Array Int (Array Int Int)))
(assert (not (= var935!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!6 6) var2937)) ; Statement: r0[6] = $r61 
(define-const var1480 Int (datetimePrecision/-289055874 var2698)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var1480 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3350 Int (columnSize/-289055874 var2698)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1833 String (toString/483301002 var3350)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3271 (Array Int Int) (s2b/-450202684 var994 var1833)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var935!7 (Array Int (Array Int Int)))
(assert (not (= var935!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!7 7) var3271)) ; Statement: r0[7] = $r63 
(define-const var2351 Int (columnSize/-289055874 var2698)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2351 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1365 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var935!8 (Array Int (Array Int Int)))
(assert (not (= var935!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!8 8) var1365)) ; Statement: r0[8] = $r64 
(define-const var3853 Int (decimalDigits/-289055874 var2698)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3853 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3169 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var935!9 (Array Int (Array Int Int)))
(assert (not (= var935!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!9 9) var3169)) ; Statement: r0[9] = $r65 
(define-const var2725 Int (numPrecRadix/-289055874 var2698)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2101 String (Int_toString/1350422511 var2725)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1998 (Array Int Int) (s2b/-450202684 var994 var2101)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var935!10 (Array Int (Array Int Int)))
(assert (not (= var935!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var935!10 10) var1998)) ; Statement: r0[10] = $r27 
(define-const var81 Int (nullability/-289055874 var2698)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var81 2)) (and (not (= var81 1)) (and (not (= var81 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var462 String (var1271_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3476 var2344 (getExceptionInterceptor/-1244810802 var994)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2048 var1095 (var3556_createSQLException/-1268047242 var462 "S1000" var3476)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1426_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2739-to-var2795=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1271_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3556_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1531=com.mysql.cj.jdbc.DatabaseMetaData, var994=r1, var2765=r9, var549=r5, var226=r10, var283=null_type, var677=z1, var378=z2, var973=z3, var3225=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2698=r14, var2135=z0, var2239=i4, var675=$r54, var935=r0, var3345=$r53, var1426=com.mysql.cj.conf.RuntimeProperty, var1385=$r2, var2795=java.lang.Object, var3637=$r4, var2739=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var372=$r3, var3241=$r55, var3=$r6, var257=$r8, var1380=$r7, var2432=$r56, var2332=$r11, var3133=$i0, var3136=$r12, var1809=$r13, var167=com.mysql.cj.MysqlType, var444=$r16, var1079=$r15, var3410=$r17, var1203=$i1, var965=$s5, var2458=$r57, var1992=$r58, var1761=$r59, var60=$r60, var2937=$r61, var1480=$r62, var3350=$r51, var1833=$r52, var3271=$r63, var2351=$r20, var1365=$r64, var3853=$r23, var3169=$r65, var2725=$i2, var2101=$r26, var1998=$r27, var81=$i3, var1271=com.mysql.cj.Messages, var462=$r49, var2344=com.mysql.cj.exceptions.ExceptionInterceptor, var3476=$r48, var1095=java.sql.SQLException, var3556=com.mysql.cj.jdbc.exceptions.SQLError, var2048=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1531, r1=var994, r9=var2765, r5=var549, r10=var226, null_type=var283, z1=var677, z2=var378, z3=var973, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3225, r14=var2698, z0=var2135, i4=var2239, $r54=var675, r0=var935, $r53=var3345, com.mysql.cj.conf.RuntimeProperty=var1426, $r2=var1385, java.lang.Object=var2795, $r4=var3637, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2739, $r3=var372, $r55=var3241, $r6=var3, $r8=var257, $r7=var1380, $r56=var2432, $r11=var2332, $i0=var3133, $r12=var3136, $r13=var1809, com.mysql.cj.MysqlType=var167, $r16=var444, $r15=var1079, $r17=var3410, $i1=var1203, $s5=var965, $r57=var2458, $r58=var1992, $r59=var1761, $r60=var60, $r61=var2937, $r62=var1480, $r51=var3350, $r52=var1833, $r63=var3271, $r20=var2351, $r64=var1365, $r23=var3853, $r65=var3169, $i2=var2725, $r26=var2101, $r27=var1998, $i3=var81, com.mysql.cj.Messages=var1271, $r49=var462, com.mysql.cj.exceptions.ExceptionInterceptor=var2344, $r48=var3476, java.sql.SQLException=var1095, com.mysql.cj.jdbc.exceptions.SQLError=var3556, $r50=var2048}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16