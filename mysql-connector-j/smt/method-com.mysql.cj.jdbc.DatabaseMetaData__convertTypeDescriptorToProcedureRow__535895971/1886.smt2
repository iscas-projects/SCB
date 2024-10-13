(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var2945 0)
(declare-sort var337 0)
(declare-sort var2428 0)
(declare-sort var3168 0)
(declare-sort var2793 0)
(declare-sort var1493 0)
(declare-sort var1534 0)
(declare-sort var1355 0)
(declare-sort var3715 0)
(declare-sort var3364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1146) var2428)
(declare-fun var2428_getValue/1633538672 (var2428) var3168)
(declare-fun cast-from-var2793-to-var3168 (var2793) var3168)
(declare-fun s2b/-450202684 (var1146 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1146 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var337) var1493)
(declare-fun getJdbcType/389098195 (var1493) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1493) String)
(declare-fun datetimePrecision/-289055874 (var337) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var337) Int)
(declare-fun decimalDigits/-289055874 (var337) Int)
(declare-fun numPrecRadix/-289055874 (var337) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var337) Int)
(declare-fun var1534_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1146) var1355)
(declare-fun var3364_createSQLException/-1268047242 (String String var1355) var3715)
(declare-const null-var1146 var1146)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var337 var337)
(declare-const null-Int Int)
(declare-const var2793-SCHEMA var2793)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1493-YEAR var1493)
(declare-const var1098 var1146) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1098 null-var1146)))
(declare-const var1790 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1790 null-__Array__Int__Int__)))
(declare-const var1771 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1771 null-__Array__Int__Int__)))
(declare-const var3094 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3094 null-String)))
(declare-const var2640 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2640 null-Bool)))
(declare-const var3711 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3711 null-Bool)))
(declare-const var2425 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2425 null-Bool)))
(declare-const var1273 var337) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1273 null-var337)))
(declare-const var1982 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1982 null-Bool)))
(declare-const var1744 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1744 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var1982 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3963 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var352 (Array Int (Array Int Int)) var3963) ; Statement: r0 = $r54 
(define-const var655 (Array Int (Array Int Int)) var3963) ; Statement: $r53 = $r54 
(define-const var3207 var2428 (databaseTerm/1074764847 var1098)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3985 var3168 (var2428_getValue/1633538672 var3207)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3426 var2793 var2793-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3985 (cast-from-var2793-to-var3168 var3426))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2512 (Array Int Int) (s2b/-450202684 var1098 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var655!1 (Array Int (Array Int Int)))
(assert (not (= var655!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var655!1 0) var2512)) ; Statement: $r53[0] = $r55 
(define-const var1710 var2428 (databaseTerm/1074764847 var1098)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3929 var3168 (var2428_getValue/1633538672 var1710)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var40 var2793 var2793-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var3929 (cast-from-var2793-to-var3168 var40)))) ; Cond: $r8 != $r7 
(define-const var1299 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var352!1 (Array Int (Array Int Int)))
(assert (not (= var352!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!1 1) var1299)) ; Statement: r0[1] = $r56 
(declare-const var352!2 (Array Int (Array Int Int)))
(assert (not (= var352!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!2 2) var1790)) ; Statement: r0[2] = r9 
(assert true)
(define-const var508 (Array Int Int) (s2b/-450202684 var1098 var3094)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var352!3 (Array Int (Array Int Int)))
(assert (not (= var352!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!3 3) var508)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2875 Int (getColumnType/800489773 var1098 var2640 var3711 var2425 var1982)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2658 String (String_valueOf/1240665136 var2875)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1059 (Array Int Int) (s2b/-450202684 var1098 var2658)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var352!4 (Array Int (Array Int Int)))
(assert (not (= var352!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!4 4) var1059)) ; Statement: r0[4] = $r13 
(define-const var1631 var1493 (mysqlType/-289055874 var1273)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var571 var1493 var1493-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1631 var571))) ; Cond: $r16 != $r15 
(define-const var1581 var1493 (mysqlType/-289055874 var1273)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3525 Int (getJdbcType/389098195 var1581)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2569 Int (cast-from-Int-to-Int var3525)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2883 String (Int_toString/-1770815874 var2569)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1591 (Array Int Int) (getBytes/1068683673 var2883)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var352!5 (Array Int (Array Int Int)))
(assert (not (= var352!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!5 5) var1591)) ; Statement: r0[5] = $r58 
(define-const var2980 var1493 (mysqlType/-289055874 var1273)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var664 String (getName/1307715079 var2980)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3294 (Array Int Int) (s2b/-450202684 var1098 var664)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var352!6 (Array Int (Array Int Int)))
(assert (not (= var352!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!6 6) var3294)) ; Statement: r0[6] = $r61 
(define-const var3178 Int (datetimePrecision/-289055874 var1273)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3178 null-Int))) ; Cond: $r62 != null 
(define-const var357 Int (datetimePrecision/-289055874 var1273)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var3824 String (toString/483301002 var357)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1798 (Array Int Int) (s2b/-450202684 var1098 var3824)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var352!7 (Array Int (Array Int Int)))
(assert (not (= var352!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!7 7) var1798)) ; Statement: r0[7] = $r63 
(define-const var624 Int (columnSize/-289055874 var1273)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var624 null-Int))) ; Cond: $r20 != null 
(define-const var1933 Int (columnSize/-289055874 var1273)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var632 String (toString/483301002 var1933)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1998 (Array Int Int) (s2b/-450202684 var1098 var632)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var352!8 (Array Int (Array Int Int)))
(assert (not (= var352!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!8 8) var1998)) ; Statement: r0[8] = $r64 
(define-const var1348 Int (decimalDigits/-289055874 var1273)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1348 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var658 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var352!9 (Array Int (Array Int Int)))
(assert (not (= var352!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!9 9) var658)) ; Statement: r0[9] = $r65 
(define-const var1894 Int (numPrecRadix/-289055874 var1273)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1250 String (Int_toString/1350422511 var1894)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2587 (Array Int Int) (s2b/-450202684 var1098 var1250)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var352!10 (Array Int (Array Int Int)))
(assert (not (= var352!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var352!10 10) var2587)) ; Statement: r0[10] = $r27 
(define-const var697 Int (nullability/-289055874 var1273)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var697 2)) (and (not (= var697 1)) (and (not (= var697 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3102 String (var1534_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var1023 var1355 (getExceptionInterceptor/-1244810802 var1098)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1550 var3715 (var3364_createSQLException/-1268047242 var3102 "S1000" var1023)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2428_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2793-to-var3168=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1534_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3364_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1146=com.mysql.cj.jdbc.DatabaseMetaData, var1098=r1, var1790=r9, var1771=r5, var3094=r10, var2945=null_type, var2640=z1, var3711=z2, var2425=z3, var337=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1273=r14, var1982=z0, var1744=i4, var3963=$r54, var352=r0, var655=$r53, var2428=com.mysql.cj.conf.RuntimeProperty, var3207=$r2, var3168=java.lang.Object, var3985=$r4, var2793=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3426=$r3, var2512=$r55, var1710=$r6, var3929=$r8, var40=$r7, var1299=$r56, var508=$r11, var2875=$i0, var2658=$r12, var1059=$r13, var1493=com.mysql.cj.MysqlType, var1631=$r16, var571=$r15, var1581=$r17, var3525=$i1, var2569=$s5, var2883=$r57, var1591=$r58, var2980=$r59, var664=$r60, var3294=$r61, var3178=$r62, var357=$r18, var3824=$r19, var1798=$r63, var624=$r20, var1933=$r21, var632=$r22, var1998=$r64, var1348=$r23, var658=$r65, var1894=$i2, var1250=$r26, var2587=$r27, var697=$i3, var1534=com.mysql.cj.Messages, var3102=$r49, var1355=com.mysql.cj.exceptions.ExceptionInterceptor, var1023=$r48, var3715=java.sql.SQLException, var3364=com.mysql.cj.jdbc.exceptions.SQLError, var1550=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1146, r1=var1098, r9=var1790, r5=var1771, r10=var3094, null_type=var2945, z1=var2640, z2=var3711, z3=var2425, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var337, r14=var1273, z0=var1982, i4=var1744, $r54=var3963, r0=var352, $r53=var655, com.mysql.cj.conf.RuntimeProperty=var2428, $r2=var3207, java.lang.Object=var3168, $r4=var3985, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2793, $r3=var3426, $r55=var2512, $r6=var1710, $r8=var3929, $r7=var40, $r56=var1299, $r11=var508, $i0=var2875, $r12=var2658, $r13=var1059, com.mysql.cj.MysqlType=var1493, $r16=var1631, $r15=var571, $r17=var1581, $i1=var3525, $s5=var2569, $r57=var2883, $r58=var1591, $r59=var2980, $r60=var664, $r61=var3294, $r62=var3178, $r18=var357, $r19=var3824, $r63=var1798, $r20=var624, $r21=var1933, $r22=var632, $r64=var1998, $r23=var1348, $r65=var658, $i2=var1894, $r26=var1250, $r27=var2587, $i3=var697, com.mysql.cj.Messages=var1534, $r49=var3102, com.mysql.cj.exceptions.ExceptionInterceptor=var1355, $r48=var1023, java.sql.SQLException=var3715, com.mysql.cj.jdbc.exceptions.SQLError=var3364, $r50=var1550}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16