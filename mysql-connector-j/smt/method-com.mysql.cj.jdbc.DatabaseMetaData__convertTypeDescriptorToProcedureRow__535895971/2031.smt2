(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2350 0)
(declare-sort var1803 0)
(declare-sort var810 0)
(declare-sort var2499 0)
(declare-sort var2088 0)
(declare-sort var2444 0)
(declare-sort var457 0)
(declare-sort var3704 0)
(declare-sort var1295 0)
(declare-sort var3931 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2350) var2499)
(declare-fun var2499_getValue/1633538672 (var2499) var2088)
(declare-fun cast-from-var2444-to-var2088 (var2444) var2088)
(declare-fun s2b/-450202684 (var2350 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2350 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var810) var457)
(declare-fun getJdbcType/389098195 (var457) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var457) String)
(declare-fun datetimePrecision/-289055874 (var810) Int)
(declare-fun columnSize/-289055874 (var810) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var810) Int)
(declare-fun numPrecRadix/-289055874 (var810) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var810) Int)
(declare-fun var3704_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2350) var1295)
(declare-fun var2366_createSQLException/-1268047242 (String String var1295) var3931)
(declare-const null-var2350 var2350)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var810 var810)
(declare-const null-Int Int)
(declare-const var2444-SCHEMA var2444)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var457-YEAR var457)
(declare-const var2504 var2350) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2504 null-var2350)))
(declare-const var2160 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2160 null-__Array__Int__Int__)))
(declare-const var2573 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2573 null-__Array__Int__Int__)))
(declare-const var3313 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3313 null-String)))
(declare-const var1151 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1151 null-Bool)))
(declare-const var2395 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2395 null-Bool)))
(declare-const var1402 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1402 null-Bool)))
(declare-const var128 var810) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var128 null-var810)))
(declare-const var3250 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3250 null-Bool)))
(declare-const var1401 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1401 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3250 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2700 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3926 (Array Int (Array Int Int)) var2700) ; Statement: r0 = $r54 
(define-const var1172 (Array Int (Array Int Int)) var2700) ; Statement: $r53 = $r54 
(define-const var898 var2499 (databaseTerm/1074764847 var2504)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2615 var2088 (var2499_getValue/1633538672 var898)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1531 var2444 var2444-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2615 (cast-from-var2444-to-var2088 var1531)))) ; Cond: $r4 != $r3 
(define-const var2724 (Array Int Int) var2573) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1172!1 (Array Int (Array Int Int)))
(assert (not (= var1172!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1172!1 0) var2724)) ; Statement: $r53[0] = $r55 
(define-const var682 var2499 (databaseTerm/1074764847 var2504)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2693 var2088 (var2499_getValue/1633538672 var682)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1328 var2444 var2444-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2693 (cast-from-var2444-to-var2088 var1328)))) ; Cond: $r8 != $r7 
(define-const var2036 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3926!1 (Array Int (Array Int Int)))
(assert (not (= var3926!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!1 1) var2036)) ; Statement: r0[1] = $r56 
(declare-const var3926!2 (Array Int (Array Int Int)))
(assert (not (= var3926!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!2 2) var2160)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3965 (Array Int Int) (s2b/-450202684 var2504 var3313)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3926!3 (Array Int (Array Int Int)))
(assert (not (= var3926!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!3 3) var3965)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1634 Int (getColumnType/800489773 var2504 var1151 var2395 var1402 var3250)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3139 String (String_valueOf/1240665136 var1634)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3890 (Array Int Int) (s2b/-450202684 var2504 var3139)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3926!4 (Array Int (Array Int Int)))
(assert (not (= var3926!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!4 4) var3890)) ; Statement: r0[4] = $r13 
(define-const var2328 var457 (mysqlType/-289055874 var128)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3005 var457 var457-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2328 var3005))) ; Cond: $r16 != $r15 
(define-const var3419 var457 (mysqlType/-289055874 var128)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var203 Int (getJdbcType/389098195 var3419)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3307 Int (cast-from-Int-to-Int var203)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2043 String (Int_toString/-1770815874 var3307)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3368 (Array Int Int) (getBytes/1068683673 var2043)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3926!5 (Array Int (Array Int Int)))
(assert (not (= var3926!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!5 5) var3368)) ; Statement: r0[5] = $r58 
(define-const var3588 var457 (mysqlType/-289055874 var128)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1155 String (getName/1307715079 var3588)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2725 (Array Int Int) (s2b/-450202684 var2504 var1155)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3926!6 (Array Int (Array Int Int)))
(assert (not (= var3926!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!6 6) var2725)) ; Statement: r0[6] = $r61 
(define-const var814 Int (datetimePrecision/-289055874 var128)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var814 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3927 Int (columnSize/-289055874 var128)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var94 String (toString/483301002 var3927)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2390 (Array Int Int) (s2b/-450202684 var2504 var94)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3926!7 (Array Int (Array Int Int)))
(assert (not (= var3926!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!7 7) var2390)) ; Statement: r0[7] = $r63 
(define-const var2170 Int (columnSize/-289055874 var128)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2170 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var1982 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3926!8 (Array Int (Array Int Int)))
(assert (not (= var3926!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!8 8) var1982)) ; Statement: r0[8] = $r64 
(define-const var2732 Int (decimalDigits/-289055874 var128)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var2732 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1373 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3926!9 (Array Int (Array Int Int)))
(assert (not (= var3926!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!9 9) var1373)) ; Statement: r0[9] = $r65 
(define-const var1016 Int (numPrecRadix/-289055874 var128)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var413 String (Int_toString/1350422511 var1016)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2331 (Array Int Int) (s2b/-450202684 var2504 var413)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3926!10 (Array Int (Array Int Int)))
(assert (not (= var3926!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3926!10 10) var2331)) ; Statement: r0[10] = $r27 
(define-const var2728 Int (nullability/-289055874 var128)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2728 2)) (and (not (= var2728 1)) (and (not (= var2728 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var676 String (var3704_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var855 var1295 (getExceptionInterceptor/-1244810802 var2504)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var282 var3931 (var2366_createSQLException/-1268047242 var676 "S1000" var855)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2499_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2444-to-var2088=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3704_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2366_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2350=com.mysql.cj.jdbc.DatabaseMetaData, var2504=r1, var2160=r9, var2573=r5, var3313=r10, var1803=null_type, var1151=z1, var2395=z2, var1402=z3, var810=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var128=r14, var3250=z0, var1401=i4, var2700=$r54, var3926=r0, var1172=$r53, var2499=com.mysql.cj.conf.RuntimeProperty, var898=$r2, var2088=java.lang.Object, var2615=$r4, var2444=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1531=$r3, var2724=$r55, var682=$r6, var2693=$r8, var1328=$r7, var2036=$r56, var3965=$r11, var1634=$i0, var3139=$r12, var3890=$r13, var457=com.mysql.cj.MysqlType, var2328=$r16, var3005=$r15, var3419=$r17, var203=$i1, var3307=$s5, var2043=$r57, var3368=$r58, var3588=$r59, var1155=$r60, var2725=$r61, var814=$r62, var3927=$r51, var94=$r52, var2390=$r63, var2170=$r20, var1982=$r64, var2732=$r23, var1373=$r65, var1016=$i2, var413=$r26, var2331=$r27, var2728=$i3, var3704=com.mysql.cj.Messages, var676=$r49, var1295=com.mysql.cj.exceptions.ExceptionInterceptor, var855=$r48, var3931=java.sql.SQLException, var2366=com.mysql.cj.jdbc.exceptions.SQLError, var282=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2350, r1=var2504, r9=var2160, r5=var2573, r10=var3313, null_type=var1803, z1=var1151, z2=var2395, z3=var1402, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var810, r14=var128, z0=var3250, i4=var1401, $r54=var2700, r0=var3926, $r53=var1172, com.mysql.cj.conf.RuntimeProperty=var2499, $r2=var898, java.lang.Object=var2088, $r4=var2615, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2444, $r3=var1531, $r55=var2724, $r6=var682, $r8=var2693, $r7=var1328, $r56=var2036, $r11=var3965, $i0=var1634, $r12=var3139, $r13=var3890, com.mysql.cj.MysqlType=var457, $r16=var2328, $r15=var3005, $r17=var3419, $i1=var203, $s5=var3307, $r57=var2043, $r58=var3368, $r59=var3588, $r60=var1155, $r61=var2725, $r62=var814, $r51=var3927, $r52=var94, $r63=var2390, $r20=var2170, $r64=var1982, $r23=var2732, $r65=var1373, $i2=var1016, $r26=var413, $r27=var2331, $i3=var2728, com.mysql.cj.Messages=var3704, $r49=var676, com.mysql.cj.exceptions.ExceptionInterceptor=var1295, $r48=var855, java.sql.SQLException=var3931, com.mysql.cj.jdbc.exceptions.SQLError=var2366, $r50=var282}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16