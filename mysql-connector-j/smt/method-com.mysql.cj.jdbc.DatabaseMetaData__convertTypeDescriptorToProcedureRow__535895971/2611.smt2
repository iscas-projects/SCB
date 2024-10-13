(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1242 0)
(declare-sort var1675 0)
(declare-sort var142 0)
(declare-sort var1591 0)
(declare-sort var962 0)
(declare-sort var3749 0)
(declare-sort var2223 0)
(declare-sort var2999 0)
(declare-sort var2746 0)
(declare-sort var569 0)
(declare-sort var385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1242) var1591)
(declare-fun var1591_getValue/1633538672 (var1591) var962)
(declare-fun cast-from-var3749-to-var962 (var3749) var962)
(declare-fun s2b/-450202684 (var1242 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1242 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var142) var2223)
(declare-fun getJdbcType/389098195 (var2223) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2223) String)
(declare-fun datetimePrecision/-289055874 (var142) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var142) Int)
(declare-fun decimalDigits/-289055874 (var142) Int)
(declare-fun numPrecRadix/-289055874 (var142) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var142) Int)
(declare-fun var2999_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1242) var2746)
(declare-fun var385_createSQLException/-1268047242 (String String var2746) var569)
(declare-const null-var1242 var1242)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var142 var142)
(declare-const null-Int Int)
(declare-const var3749-SCHEMA var3749)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2223-YEAR var2223)
(declare-const var2273 var1242) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2273 null-var1242)))
(declare-const var1085 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1085 null-__Array__Int__Int__)))
(declare-const var2642 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2642 null-__Array__Int__Int__)))
(declare-const var174 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var174 null-String)))
(declare-const var1447 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1447 null-Bool)))
(declare-const var3025 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3025 null-Bool)))
(declare-const var460 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var460 null-Bool)))
(declare-const var353 var142) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var353 null-var142)))
(declare-const var971 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var971 null-Bool)))
(declare-const var1111 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1111 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var971 1 0) 0)) ; Cond: z0 == 0 
(define-const var622 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2198 (Array Int (Array Int Int)) var622) ; Statement: r0 = $r54 
(define-const var2443 (Array Int (Array Int Int)) var622) ; Statement: $r53 = $r54 
(define-const var520 var1591 (databaseTerm/1074764847 var2273)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3976 var962 (var1591_getValue/1633538672 var520)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1637 var3749 var3749-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3976 (cast-from-var3749-to-var962 var1637)))) ; Cond: $r4 != $r3 
(define-const var1008 (Array Int Int) var2642) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var2443!1 (Array Int (Array Int Int)))
(assert (not (= var2443!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2443!1 0) var1008)) ; Statement: $r53[0] = $r55 
(define-const var2753 var1591 (databaseTerm/1074764847 var2273)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2814 var962 (var1591_getValue/1633538672 var2753)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2742 var3749 var3749-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2814 (cast-from-var3749-to-var962 var2742)))) ; Cond: $r8 != $r7 
(define-const var1728 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2198!1 (Array Int (Array Int Int)))
(assert (not (= var2198!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!1 1) var1728)) ; Statement: r0[1] = $r56 
(declare-const var2198!2 (Array Int (Array Int Int)))
(assert (not (= var2198!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!2 2) var1085)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3621 (Array Int Int) (s2b/-450202684 var2273 var174)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2198!3 (Array Int (Array Int Int)))
(assert (not (= var2198!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!3 3) var3621)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1018 Int (getColumnType/800489773 var2273 var1447 var3025 var460 var971)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1153 String (String_valueOf/1240665136 var1018)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1255 (Array Int Int) (s2b/-450202684 var2273 var1153)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2198!4 (Array Int (Array Int Int)))
(assert (not (= var2198!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!4 4) var1255)) ; Statement: r0[4] = $r13 
(define-const var2202 var2223 (mysqlType/-289055874 var353)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2683 var2223 var2223-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2202 var2683))) ; Cond: $r16 != $r15 
(define-const var2260 var2223 (mysqlType/-289055874 var353)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1009 Int (getJdbcType/389098195 var2260)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1558 Int (cast-from-Int-to-Int var1009)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3008 String (Int_toString/-1770815874 var1558)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var195 (Array Int Int) (getBytes/1068683673 var3008)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2198!5 (Array Int (Array Int Int)))
(assert (not (= var2198!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!5 5) var195)) ; Statement: r0[5] = $r58 
(define-const var2247 var2223 (mysqlType/-289055874 var353)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2928 String (getName/1307715079 var2247)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3918 (Array Int Int) (s2b/-450202684 var2273 var2928)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2198!6 (Array Int (Array Int Int)))
(assert (not (= var2198!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!6 6) var3918)) ; Statement: r0[6] = $r61 
(define-const var3877 Int (datetimePrecision/-289055874 var353)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3877 null-Int))) ; Cond: $r62 != null 
(define-const var2518 Int (datetimePrecision/-289055874 var353)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3714 String (toString/483301002 var2518)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3830 (Array Int Int) (s2b/-450202684 var2273 var3714)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2198!7 (Array Int (Array Int Int)))
(assert (not (= var2198!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!7 7) var3830)) ; Statement: r0[7] = $r63 
(define-const var3999 Int (columnSize/-289055874 var353)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3999 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var447 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2198!8 (Array Int (Array Int Int)))
(assert (not (= var2198!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!8 8) var447)) ; Statement: r0[8] = $r64 
(define-const var582 Int (decimalDigits/-289055874 var353)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var582 null-Int))) ; Cond: $r23 != null 
(define-const var1023 Int (decimalDigits/-289055874 var353)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var3475 String (toString/483301002 var1023)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var310 (Array Int Int) (s2b/-450202684 var2273 var3475)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var2198!9 (Array Int (Array Int Int)))
(assert (not (= var2198!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!9 9) var310)) ; Statement: r0[9] = $r65 
(define-const var3373 Int (numPrecRadix/-289055874 var353)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2798 String (Int_toString/1350422511 var3373)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3592 (Array Int Int) (s2b/-450202684 var2273 var2798)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2198!10 (Array Int (Array Int Int)))
(assert (not (= var2198!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2198!10 10) var3592)) ; Statement: r0[10] = $r27 
(define-const var3992 Int (nullability/-289055874 var353)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3992 2)) (and (not (= var3992 1)) (and (not (= var3992 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var753 String (var2999_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var322 var2746 (getExceptionInterceptor/-1244810802 var2273)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3257 var569 (var385_createSQLException/-1268047242 var753 "S1000" var322)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1591_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3749-to-var962=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2999_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var385_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1242=com.mysql.cj.jdbc.DatabaseMetaData, var2273=r1, var1085=r9, var2642=r5, var174=r10, var1675=null_type, var1447=z1, var3025=z2, var460=z3, var142=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var353=r14, var971=z0, var1111=i4, var622=$r54, var2198=r0, var2443=$r53, var1591=com.mysql.cj.conf.RuntimeProperty, var520=$r2, var962=java.lang.Object, var3976=$r4, var3749=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1637=$r3, var1008=$r55, var2753=$r6, var2814=$r8, var2742=$r7, var1728=$r56, var3621=$r11, var1018=$i0, var1153=$r12, var1255=$r13, var2223=com.mysql.cj.MysqlType, var2202=$r16, var2683=$r15, var2260=$r17, var1009=$i1, var1558=$s5, var3008=$r57, var195=$r58, var2247=$r59, var2928=$r60, var3918=$r61, var3877=$r62, var2518=$r18, var3714=$r19, var3830=$r63, var3999=$r20, var447=$r64, var582=$r23, var1023=$r24, var3475=$r25, var310=$r65, var3373=$i2, var2798=$r26, var3592=$r27, var3992=$i3, var2999=com.mysql.cj.Messages, var753=$r49, var2746=com.mysql.cj.exceptions.ExceptionInterceptor, var322=$r48, var569=java.sql.SQLException, var385=com.mysql.cj.jdbc.exceptions.SQLError, var3257=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1242, r1=var2273, r9=var1085, r5=var2642, r10=var174, null_type=var1675, z1=var1447, z2=var3025, z3=var460, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var142, r14=var353, z0=var971, i4=var1111, $r54=var622, r0=var2198, $r53=var2443, com.mysql.cj.conf.RuntimeProperty=var1591, $r2=var520, java.lang.Object=var962, $r4=var3976, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3749, $r3=var1637, $r55=var1008, $r6=var2753, $r8=var2814, $r7=var2742, $r56=var1728, $r11=var3621, $i0=var1018, $r12=var1153, $r13=var1255, com.mysql.cj.MysqlType=var2223, $r16=var2202, $r15=var2683, $r17=var2260, $i1=var1009, $s5=var1558, $r57=var3008, $r58=var195, $r59=var2247, $r60=var2928, $r61=var3918, $r62=var3877, $r18=var2518, $r19=var3714, $r63=var3830, $r20=var3999, $r64=var447, $r23=var582, $r24=var1023, $r25=var3475, $r65=var310, $i2=var3373, $r26=var2798, $r27=var3592, $i3=var3992, com.mysql.cj.Messages=var2999, $r49=var753, com.mysql.cj.exceptions.ExceptionInterceptor=var2746, $r48=var322, java.sql.SQLException=var569, com.mysql.cj.jdbc.exceptions.SQLError=var385, $r50=var3257}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16