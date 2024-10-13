(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2878 0)
(declare-sort var553 0)
(declare-sort var572 0)
(declare-sort var2572 0)
(declare-sort var1669 0)
(declare-sort var1010 0)
(declare-sort var2315 0)
(declare-sort var3205 0)
(declare-sort var3465 0)
(declare-sort var3546 0)
(declare-sort var489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2878) var2572)
(declare-fun var2572_getValue/1633538672 (var2572) var1669)
(declare-fun cast-from-var1010-to-var1669 (var1010) var1669)
(declare-fun s2b/-450202684 (var2878 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2878 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var572) var2315)
(declare-fun getJdbcType/389098195 (var2315) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2315) String)
(declare-fun datetimePrecision/-289055874 (var572) Int)
(declare-fun columnSize/-289055874 (var572) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var572) Int)
(declare-fun numPrecRadix/-289055874 (var572) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var572) Int)
(declare-fun var3205_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2878) var3465)
(declare-fun var489_createSQLException/-1268047242 (String String var3465) var3546)
(declare-const null-var2878 var2878)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var572 var572)
(declare-const null-Int Int)
(declare-const var1010-SCHEMA var1010)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2315-YEAR var2315)
(declare-const var2229 var2878) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2229 null-var2878)))
(declare-const var2444 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2444 null-__Array__Int__Int__)))
(declare-const var3907 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3907 null-__Array__Int__Int__)))
(declare-const var3342 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3342 null-String)))
(declare-const var1344 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1344 null-Bool)))
(declare-const var74 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var74 null-Bool)))
(declare-const var3627 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3627 null-Bool)))
(declare-const var2185 var572) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2185 null-var572)))
(declare-const var1093 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1093 null-Bool)))
(declare-const var570 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var570 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1093 1 0) 0)) ; Cond: z0 == 0 
(define-const var1162 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3528 (Array Int (Array Int Int)) var1162) ; Statement: r0 = $r54 
(define-const var256 (Array Int (Array Int Int)) var1162) ; Statement: $r53 = $r54 
(define-const var3863 var2572 (databaseTerm/1074764847 var2229)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2390 var1669 (var2572_getValue/1633538672 var3863)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1741 var1010 var1010-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var2390 (cast-from-var1010-to-var1669 var1741))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var6 (Array Int Int) (s2b/-450202684 var2229 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var256!1 (Array Int (Array Int Int)))
(assert (not (= var256!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var256!1 0) var6)) ; Statement: $r53[0] = $r55 
(define-const var474 var2572 (databaseTerm/1074764847 var2229)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var164 var1669 (var2572_getValue/1633538672 var474)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2021 var1010 var1010-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var164 (cast-from-var1010-to-var1669 var2021))))) ; Negate: Cond: $r8 != $r7  
(define-const var1317 (Array Int Int) var3907) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3528!1 (Array Int (Array Int Int)))
(assert (not (= var3528!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!1 1) var1317)) ; Statement: r0[1] = $r56 
(declare-const var3528!2 (Array Int (Array Int Int)))
(assert (not (= var3528!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!2 2) var2444)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3357 (Array Int Int) (s2b/-450202684 var2229 var3342)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3528!3 (Array Int (Array Int Int)))
(assert (not (= var3528!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!3 3) var3357)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1849 Int (getColumnType/800489773 var2229 var1344 var74 var3627 var1093)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var582 String (String_valueOf/1240665136 var1849)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2099 (Array Int Int) (s2b/-450202684 var2229 var582)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3528!4 (Array Int (Array Int Int)))
(assert (not (= var3528!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!4 4) var2099)) ; Statement: r0[4] = $r13 
(define-const var1399 var2315 (mysqlType/-289055874 var2185)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3486 var2315 var2315-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1399 var3486))) ; Cond: $r16 != $r15 
(define-const var2101 var2315 (mysqlType/-289055874 var2185)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1291 Int (getJdbcType/389098195 var2101)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var154 Int (cast-from-Int-to-Int var1291)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var866 String (Int_toString/-1770815874 var154)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2281 (Array Int Int) (getBytes/1068683673 var866)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3528!5 (Array Int (Array Int Int)))
(assert (not (= var3528!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!5 5) var2281)) ; Statement: r0[5] = $r58 
(define-const var3966 var2315 (mysqlType/-289055874 var2185)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var273 String (getName/1307715079 var3966)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1855 (Array Int Int) (s2b/-450202684 var2229 var273)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3528!6 (Array Int (Array Int Int)))
(assert (not (= var3528!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!6 6) var1855)) ; Statement: r0[6] = $r61 
(define-const var2633 Int (datetimePrecision/-289055874 var2185)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2633 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var2111 Int (columnSize/-289055874 var2185)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var485 String (toString/483301002 var2111)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3642 (Array Int Int) (s2b/-450202684 var2229 var485)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3528!7 (Array Int (Array Int Int)))
(assert (not (= var3528!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!7 7) var3642)) ; Statement: r0[7] = $r63 
(define-const var3673 Int (columnSize/-289055874 var2185)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3673 null-Int))) ; Cond: $r20 != null 
(define-const var254 Int (columnSize/-289055874 var2185)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var295 String (toString/483301002 var254)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1352 (Array Int Int) (s2b/-450202684 var2229 var295)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var3528!8 (Array Int (Array Int Int)))
(assert (not (= var3528!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!8 8) var1352)) ; Statement: r0[8] = $r64 
(define-const var1875 Int (decimalDigits/-289055874 var2185)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1875 null-Int))) ; Cond: $r23 != null 
(define-const var1270 Int (decimalDigits/-289055874 var2185)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1195 String (toString/483301002 var1270)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var77 (Array Int Int) (s2b/-450202684 var2229 var1195)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3528!9 (Array Int (Array Int Int)))
(assert (not (= var3528!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!9 9) var77)) ; Statement: r0[9] = $r65 
(define-const var1895 Int (numPrecRadix/-289055874 var2185)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2272 String (Int_toString/1350422511 var1895)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2594 (Array Int Int) (s2b/-450202684 var2229 var2272)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3528!10 (Array Int (Array Int Int)))
(assert (not (= var3528!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3528!10 10) var2594)) ; Statement: r0[10] = $r27 
(define-const var2273 Int (nullability/-289055874 var2185)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2273 2)) (and (not (= var2273 1)) (and (not (= var2273 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2076 String (var3205_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var618 var3465 (getExceptionInterceptor/-1244810802 var2229)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2120 var3546 (var489_createSQLException/-1268047242 var2076 "S1000" var618)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2572_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1010-to-var1669=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3205_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var489_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2878=com.mysql.cj.jdbc.DatabaseMetaData, var2229=r1, var2444=r9, var3907=r5, var3342=r10, var553=null_type, var1344=z1, var74=z2, var3627=z3, var572=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2185=r14, var1093=z0, var570=i4, var1162=$r54, var3528=r0, var256=$r53, var2572=com.mysql.cj.conf.RuntimeProperty, var3863=$r2, var1669=java.lang.Object, var2390=$r4, var1010=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1741=$r3, var6=$r55, var474=$r6, var164=$r8, var2021=$r7, var1317=$r56, var3357=$r11, var1849=$i0, var582=$r12, var2099=$r13, var2315=com.mysql.cj.MysqlType, var1399=$r16, var3486=$r15, var2101=$r17, var1291=$i1, var154=$s5, var866=$r57, var2281=$r58, var3966=$r59, var273=$r60, var1855=$r61, var2633=$r62, var2111=$r51, var485=$r52, var3642=$r63, var3673=$r20, var254=$r21, var295=$r22, var1352=$r64, var1875=$r23, var1270=$r24, var1195=$r25, var77=$r65, var1895=$i2, var2272=$r26, var2594=$r27, var2273=$i3, var3205=com.mysql.cj.Messages, var2076=$r49, var3465=com.mysql.cj.exceptions.ExceptionInterceptor, var618=$r48, var3546=java.sql.SQLException, var489=com.mysql.cj.jdbc.exceptions.SQLError, var2120=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2878, r1=var2229, r9=var2444, r5=var3907, r10=var3342, null_type=var553, z1=var1344, z2=var74, z3=var3627, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var572, r14=var2185, z0=var1093, i4=var570, $r54=var1162, r0=var3528, $r53=var256, com.mysql.cj.conf.RuntimeProperty=var2572, $r2=var3863, java.lang.Object=var1669, $r4=var2390, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1010, $r3=var1741, $r55=var6, $r6=var474, $r8=var164, $r7=var2021, $r56=var1317, $r11=var3357, $i0=var1849, $r12=var582, $r13=var2099, com.mysql.cj.MysqlType=var2315, $r16=var1399, $r15=var3486, $r17=var2101, $i1=var1291, $s5=var154, $r57=var866, $r58=var2281, $r59=var3966, $r60=var273, $r61=var1855, $r62=var2633, $r51=var2111, $r52=var485, $r63=var3642, $r20=var3673, $r21=var254, $r22=var295, $r64=var1352, $r23=var1875, $r24=var1270, $r25=var1195, $r65=var77, $i2=var1895, $r26=var2272, $r27=var2594, $i3=var2273, com.mysql.cj.Messages=var3205, $r49=var2076, com.mysql.cj.exceptions.ExceptionInterceptor=var3465, $r48=var618, java.sql.SQLException=var3546, com.mysql.cj.jdbc.exceptions.SQLError=var489, $r50=var2120}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16