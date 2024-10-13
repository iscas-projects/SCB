(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var1272 0)
(declare-sort var1785 0)
(declare-sort var2059 0)
(declare-sort var2561 0)
(declare-sort var3135 0)
(declare-sort var359 0)
(declare-sort var2886 0)
(declare-sort var929 0)
(declare-sort var70 0)
(declare-sort var2130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var3199) var2059)
(declare-fun var2059_getValue/1633538672 (var2059) var2561)
(declare-fun cast-from-var3135-to-var2561 (var3135) var2561)
(declare-fun s2b/-450202684 (var3199 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var3199 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1785) var359)
(declare-fun getJdbcType/389098195 (var359) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var359) String)
(declare-fun datetimePrecision/-289055874 (var1785) Int)
(declare-fun columnSize/-289055874 (var1785) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var1785) Int)
(declare-fun numPrecRadix/-289055874 (var1785) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1785) Int)
(declare-fun var2886_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var3199) var929)
(declare-fun var2130_createSQLException/-1268047242 (String String var929) var70)
(declare-const null-var3199 var3199)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1785 var1785)
(declare-const null-Int Int)
(declare-const var3135-SCHEMA var3135)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var359-YEAR var359)
(declare-const var2452 var3199) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2452 null-var3199)))
(declare-const var540 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var540 null-__Array__Int__Int__)))
(declare-const var1174 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1174 null-__Array__Int__Int__)))
(declare-const var2060 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2060 null-String)))
(declare-const var571 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var571 null-Bool)))
(declare-const var617 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var617 null-Bool)))
(declare-const var3186 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3186 null-Bool)))
(declare-const var1064 var1785) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1064 null-var1785)))
(declare-const var3364 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3364 null-Bool)))
(declare-const var1146 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1146 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3364 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var340 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var3519 (Array Int (Array Int Int)) var340) ; Statement: r0 = $r54 
(define-const var3533 (Array Int (Array Int Int)) var340) ; Statement: $r53 = $r54 
(define-const var2245 var2059 (databaseTerm/1074764847 var2452)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1030 var2561 (var2059_getValue/1633538672 var2245)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1503 var3135 var3135-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var1030 (cast-from-var3135-to-var2561 var1503)))) ; Cond: $r4 != $r3 
(define-const var1845 (Array Int Int) var1174) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3533!1 (Array Int (Array Int Int)))
(assert (not (= var3533!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3533!1 0) var1845)) ; Statement: $r53[0] = $r55 
(define-const var267 var2059 (databaseTerm/1074764847 var2452)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3246 var2561 (var2059_getValue/1633538672 var267)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var988 var3135 var3135-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var3246 (cast-from-var3135-to-var2561 var988))))) ; Negate: Cond: $r8 != $r7  
(define-const var3118 (Array Int Int) var1174) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var3519!1 (Array Int (Array Int Int)))
(assert (not (= var3519!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!1 1) var3118)) ; Statement: r0[1] = $r56 
(declare-const var3519!2 (Array Int (Array Int Int)))
(assert (not (= var3519!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!2 2) var540)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3586 (Array Int Int) (s2b/-450202684 var2452 var2060)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3519!3 (Array Int (Array Int Int)))
(assert (not (= var3519!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!3 3) var3586)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1419 Int (getColumnType/800489773 var2452 var571 var617 var3186 var3364)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1105 String (String_valueOf/1240665136 var1419)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var904 (Array Int Int) (s2b/-450202684 var2452 var1105)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3519!4 (Array Int (Array Int Int)))
(assert (not (= var3519!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!4 4) var904)) ; Statement: r0[4] = $r13 
(define-const var98 var359 (mysqlType/-289055874 var1064)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var867 var359 var359-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var98 var867))) ; Cond: $r16 != $r15 
(define-const var1299 var359 (mysqlType/-289055874 var1064)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1147 Int (getJdbcType/389098195 var1299)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3074 Int (cast-from-Int-to-Int var1147)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1236 String (Int_toString/-1770815874 var3074)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var486 (Array Int Int) (getBytes/1068683673 var1236)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3519!5 (Array Int (Array Int Int)))
(assert (not (= var3519!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!5 5) var486)) ; Statement: r0[5] = $r58 
(define-const var2826 var359 (mysqlType/-289055874 var1064)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var188 String (getName/1307715079 var2826)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var731 (Array Int Int) (s2b/-450202684 var2452 var188)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3519!6 (Array Int (Array Int Int)))
(assert (not (= var3519!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!6 6) var731)) ; Statement: r0[6] = $r61 
(define-const var2827 Int (datetimePrecision/-289055874 var1064)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2827 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3247 Int (columnSize/-289055874 var1064)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2208 String (toString/483301002 var3247)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3485 (Array Int Int) (s2b/-450202684 var2452 var2208)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var3519!7 (Array Int (Array Int Int)))
(assert (not (= var3519!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!7 7) var3485)) ; Statement: r0[7] = $r63 
(define-const var1792 Int (columnSize/-289055874 var1064)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var1792 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var799 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3519!8 (Array Int (Array Int Int)))
(assert (not (= var3519!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!8 8) var799)) ; Statement: r0[8] = $r64 
(define-const var1749 Int (decimalDigits/-289055874 var1064)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var1749 null-Int))) ; Cond: $r23 != null 
(define-const var310 Int (decimalDigits/-289055874 var1064)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1454 String (toString/483301002 var310)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3132 (Array Int Int) (s2b/-450202684 var2452 var1454)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var3519!9 (Array Int (Array Int Int)))
(assert (not (= var3519!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!9 9) var3132)) ; Statement: r0[9] = $r65 
(define-const var1643 Int (numPrecRadix/-289055874 var1064)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1783 String (Int_toString/1350422511 var1643)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1933 (Array Int Int) (s2b/-450202684 var2452 var1783)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3519!10 (Array Int (Array Int Int)))
(assert (not (= var3519!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3519!10 10) var1933)) ; Statement: r0[10] = $r27 
(define-const var2351 Int (nullability/-289055874 var1064)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2351 2)) (and (not (= var2351 1)) (and (not (= var2351 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2969 String (var2886_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3136 var929 (getExceptionInterceptor/-1244810802 var2452)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3333 var70 (var2130_createSQLException/-1268047242 var2969 "S1000" var3136)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2059_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3135-to-var2561=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2886_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2130_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var3199=com.mysql.cj.jdbc.DatabaseMetaData, var2452=r1, var540=r9, var1174=r5, var2060=r10, var1272=null_type, var571=z1, var617=z2, var3186=z3, var1785=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1064=r14, var3364=z0, var1146=i4, var340=$r54, var3519=r0, var3533=$r53, var2059=com.mysql.cj.conf.RuntimeProperty, var2245=$r2, var2561=java.lang.Object, var1030=$r4, var3135=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1503=$r3, var1845=$r55, var267=$r6, var3246=$r8, var988=$r7, var3118=$r56, var3586=$r11, var1419=$i0, var1105=$r12, var904=$r13, var359=com.mysql.cj.MysqlType, var98=$r16, var867=$r15, var1299=$r17, var1147=$i1, var3074=$s5, var1236=$r57, var486=$r58, var2826=$r59, var188=$r60, var731=$r61, var2827=$r62, var3247=$r51, var2208=$r52, var3485=$r63, var1792=$r20, var799=$r64, var1749=$r23, var310=$r24, var1454=$r25, var3132=$r65, var1643=$i2, var1783=$r26, var1933=$r27, var2351=$i3, var2886=com.mysql.cj.Messages, var2969=$r49, var929=com.mysql.cj.exceptions.ExceptionInterceptor, var3136=$r48, var70=java.sql.SQLException, var2130=com.mysql.cj.jdbc.exceptions.SQLError, var3333=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3199, r1=var2452, r9=var540, r5=var1174, r10=var2060, null_type=var1272, z1=var571, z2=var617, z3=var3186, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1785, r14=var1064, z0=var3364, i4=var1146, $r54=var340, r0=var3519, $r53=var3533, com.mysql.cj.conf.RuntimeProperty=var2059, $r2=var2245, java.lang.Object=var2561, $r4=var1030, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3135, $r3=var1503, $r55=var1845, $r6=var267, $r8=var3246, $r7=var988, $r56=var3118, $r11=var3586, $i0=var1419, $r12=var1105, $r13=var904, com.mysql.cj.MysqlType=var359, $r16=var98, $r15=var867, $r17=var1299, $i1=var1147, $s5=var3074, $r57=var1236, $r58=var486, $r59=var2826, $r60=var188, $r61=var731, $r62=var2827, $r51=var3247, $r52=var2208, $r63=var3485, $r20=var1792, $r64=var799, $r23=var1749, $r24=var310, $r25=var1454, $r65=var3132, $i2=var1643, $r26=var1783, $r27=var1933, $i3=var2351, com.mysql.cj.Messages=var2886, $r49=var2969, com.mysql.cj.exceptions.ExceptionInterceptor=var929, $r48=var3136, java.sql.SQLException=var70, com.mysql.cj.jdbc.exceptions.SQLError=var2130, $r50=var3333}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16