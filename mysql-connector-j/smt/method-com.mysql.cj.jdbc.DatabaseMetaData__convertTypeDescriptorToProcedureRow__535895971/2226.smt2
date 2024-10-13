(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2239 0)
(declare-sort var2214 0)
(declare-sort var1373 0)
(declare-sort var3684 0)
(declare-sort var1252 0)
(declare-sort var1534 0)
(declare-sort var430 0)
(declare-sort var887 0)
(declare-sort var19 0)
(declare-sort var998 0)
(declare-sort var3148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2239) var3684)
(declare-fun var3684_getValue/1633538672 (var3684) var1252)
(declare-fun cast-from-var1534-to-var1252 (var1534) var1252)
(declare-fun s2b/-450202684 (var2239 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2239 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1373) var430)
(declare-fun getJdbcType/389098195 (var430) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var430) String)
(declare-fun datetimePrecision/-289055874 (var1373) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1373) Int)
(declare-fun decimalDigits/-289055874 (var1373) Int)
(declare-fun numPrecRadix/-289055874 (var1373) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1373) Int)
(declare-fun var887_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2239) var19)
(declare-fun var3148_createSQLException/-1268047242 (String String var19) var998)
(declare-const null-var2239 var2239)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1373 var1373)
(declare-const null-Int Int)
(declare-const var1534-SCHEMA var1534)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var430-YEAR var430)
(declare-const var1330 var2239) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1330 null-var2239)))
(declare-const var1982 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1982 null-__Array__Int__Int__)))
(declare-const var1048 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1048 null-__Array__Int__Int__)))
(declare-const var37 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var37 null-String)))
(declare-const var715 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var715 null-Bool)))
(declare-const var2731 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2731 null-Bool)))
(declare-const var1573 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1573 null-Bool)))
(declare-const var1538 var1373) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1538 null-var1373)))
(declare-const var1553 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1553 null-Bool)))
(declare-const var988 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var988 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1553 1 0) 0)) ; Cond: z0 == 0 
(define-const var104 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2960 (Array Int (Array Int Int)) var104) ; Statement: r0 = $r54 
(define-const var2229 (Array Int (Array Int Int)) var104) ; Statement: $r53 = $r54 
(define-const var2294 var3684 (databaseTerm/1074764847 var1330)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var590 var1252 (var3684_getValue/1633538672 var2294)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var129 var1534 var1534-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var590 (cast-from-var1534-to-var1252 var129))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1643 (Array Int Int) (s2b/-450202684 var1330 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2229!1 (Array Int (Array Int Int)))
(assert (not (= var2229!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2229!1 0) var1643)) ; Statement: $r53[0] = $r55 
(define-const var57 var3684 (databaseTerm/1074764847 var1330)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2625 var1252 (var3684_getValue/1633538672 var57)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1008 var1534 var1534-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2625 (cast-from-var1534-to-var1252 var1008))))) ; Negate: Cond: $r8 != $r7  
(define-const var2838 (Array Int Int) var1048) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2960!1 (Array Int (Array Int Int)))
(assert (not (= var2960!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!1 1) var2838)) ; Statement: r0[1] = $r56 
(declare-const var2960!2 (Array Int (Array Int Int)))
(assert (not (= var2960!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!2 2) var1982)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3935 (Array Int Int) (s2b/-450202684 var1330 var37)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2960!3 (Array Int (Array Int Int)))
(assert (not (= var2960!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!3 3) var3935)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2155 Int (getColumnType/800489773 var1330 var715 var2731 var1573 var1553)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1409 String (String_valueOf/1240665136 var2155)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var84 (Array Int Int) (s2b/-450202684 var1330 var1409)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2960!4 (Array Int (Array Int Int)))
(assert (not (= var2960!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!4 4) var84)) ; Statement: r0[4] = $r13 
(define-const var3594 var430 (mysqlType/-289055874 var1538)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2318 var430 var430-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3594 var2318))) ; Cond: $r16 != $r15 
(define-const var1574 var430 (mysqlType/-289055874 var1538)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3803 Int (getJdbcType/389098195 var1574)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var877 Int (cast-from-Int-to-Int var3803)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1940 String (Int_toString/-1770815874 var877)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3689 (Array Int Int) (getBytes/1068683673 var1940)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2960!5 (Array Int (Array Int Int)))
(assert (not (= var2960!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!5 5) var3689)) ; Statement: r0[5] = $r58 
(define-const var3640 var430 (mysqlType/-289055874 var1538)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1125 String (getName/1307715079 var3640)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2491 (Array Int Int) (s2b/-450202684 var1330 var1125)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2960!6 (Array Int (Array Int Int)))
(assert (not (= var2960!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!6 6) var2491)) ; Statement: r0[6] = $r61 
(define-const var2371 Int (datetimePrecision/-289055874 var1538)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2371 null-Int))) ; Cond: $r62 != null 
(define-const var958 Int (datetimePrecision/-289055874 var1538)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3276 String (toString/483301002 var958)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1220 (Array Int Int) (s2b/-450202684 var1330 var3276)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2960!7 (Array Int (Array Int Int)))
(assert (not (= var2960!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!7 7) var1220)) ; Statement: r0[7] = $r63 
(define-const var2871 Int (columnSize/-289055874 var1538)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2871 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2704 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2960!8 (Array Int (Array Int Int)))
(assert (not (= var2960!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!8 8) var2704)) ; Statement: r0[8] = $r64 
(define-const var3018 Int (decimalDigits/-289055874 var1538)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3018 null-Int))) ; Cond: $r23 != null 
(define-const var1186 Int (decimalDigits/-289055874 var1538)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var199 String (toString/483301002 var1186)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1200 (Array Int Int) (s2b/-450202684 var1330 var199)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var2960!9 (Array Int (Array Int Int)))
(assert (not (= var2960!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!9 9) var1200)) ; Statement: r0[9] = $r65 
(define-const var544 Int (numPrecRadix/-289055874 var1538)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2852 String (Int_toString/1350422511 var544)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1764 (Array Int Int) (s2b/-450202684 var1330 var2852)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2960!10 (Array Int (Array Int Int)))
(assert (not (= var2960!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2960!10 10) var1764)) ; Statement: r0[10] = $r27 
(define-const var2140 Int (nullability/-289055874 var1538)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2140 2)) (and (not (= var2140 1)) (and (not (= var2140 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3241 String (var887_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var14 var19 (getExceptionInterceptor/-1244810802 var1330)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var400 var998 (var3148_createSQLException/-1268047242 var3241 "S1000" var14)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3684_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1534-to-var1252=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var887_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3148_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2239=com.mysql.cj.jdbc.DatabaseMetaData, var1330=r1, var1982=r9, var1048=r5, var37=r10, var2214=null_type, var715=z1, var2731=z2, var1573=z3, var1373=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1538=r14, var1553=z0, var988=i4, var104=$r54, var2960=r0, var2229=$r53, var3684=com.mysql.cj.conf.RuntimeProperty, var2294=$r2, var1252=java.lang.Object, var590=$r4, var1534=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var129=$r3, var1643=$r55, var57=$r6, var2625=$r8, var1008=$r7, var2838=$r56, var3935=$r11, var2155=$i0, var1409=$r12, var84=$r13, var430=com.mysql.cj.MysqlType, var3594=$r16, var2318=$r15, var1574=$r17, var3803=$i1, var877=$s5, var1940=$r57, var3689=$r58, var3640=$r59, var1125=$r60, var2491=$r61, var2371=$r62, var958=$r18, var3276=$r19, var1220=$r63, var2871=$r20, var2704=$r64, var3018=$r23, var1186=$r24, var199=$r25, var1200=$r65, var544=$i2, var2852=$r26, var1764=$r27, var2140=$i3, var887=com.mysql.cj.Messages, var3241=$r49, var19=com.mysql.cj.exceptions.ExceptionInterceptor, var14=$r48, var998=java.sql.SQLException, var3148=com.mysql.cj.jdbc.exceptions.SQLError, var400=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2239, r1=var1330, r9=var1982, r5=var1048, r10=var37, null_type=var2214, z1=var715, z2=var2731, z3=var1573, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1373, r14=var1538, z0=var1553, i4=var988, $r54=var104, r0=var2960, $r53=var2229, com.mysql.cj.conf.RuntimeProperty=var3684, $r2=var2294, java.lang.Object=var1252, $r4=var590, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1534, $r3=var129, $r55=var1643, $r6=var57, $r8=var2625, $r7=var1008, $r56=var2838, $r11=var3935, $i0=var2155, $r12=var1409, $r13=var84, com.mysql.cj.MysqlType=var430, $r16=var3594, $r15=var2318, $r17=var1574, $i1=var3803, $s5=var877, $r57=var1940, $r58=var3689, $r59=var3640, $r60=var1125, $r61=var2491, $r62=var2371, $r18=var958, $r19=var3276, $r63=var1220, $r20=var2871, $r64=var2704, $r23=var3018, $r24=var1186, $r25=var199, $r65=var1200, $i2=var544, $r26=var2852, $r27=var1764, $i3=var2140, com.mysql.cj.Messages=var887, $r49=var3241, com.mysql.cj.exceptions.ExceptionInterceptor=var19, $r48=var14, java.sql.SQLException=var998, com.mysql.cj.jdbc.exceptions.SQLError=var3148, $r50=var400}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16