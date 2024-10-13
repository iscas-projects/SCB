(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1873 0)
(declare-sort var1832 0)
(declare-sort var2714 0)
(declare-sort var497 0)
(declare-sort var594 0)
(declare-sort var2761 0)
(declare-sort var932 0)
(declare-sort var493 0)
(declare-sort var1699 0)
(declare-sort var1706 0)
(declare-sort var1892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1873) var497)
(declare-fun var497_getValue/1633538672 (var497) var594)
(declare-fun cast-from-var2761-to-var594 (var2761) var594)
(declare-fun s2b/-450202684 (var1873 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1873 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2714) var932)
(declare-fun getJdbcType/389098195 (var932) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var932) String)
(declare-fun datetimePrecision/-289055874 (var2714) Int)
(declare-fun columnSize/-289055874 (var2714) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2714) Int)
(declare-fun numPrecRadix/-289055874 (var2714) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2714) Int)
(declare-fun var493_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1873) var1699)
(declare-fun var1892_createSQLException/-1268047242 (String String var1699) var1706)
(declare-const null-var1873 var1873)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2714 var2714)
(declare-const null-Int Int)
(declare-const var2761-SCHEMA var2761)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var932-YEAR var932)
(declare-const var2793 var1873) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2793 null-var1873)))
(declare-const var1259 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1259 null-__Array__Int__Int__)))
(declare-const var3342 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3342 null-__Array__Int__Int__)))
(declare-const var3427 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3427 null-String)))
(declare-const var3705 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3705 null-Bool)))
(declare-const var2482 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2482 null-Bool)))
(declare-const var591 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var591 null-Bool)))
(declare-const var565 var2714) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var565 null-var2714)))
(declare-const var324 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var324 null-Bool)))
(declare-const var1611 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1611 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var324 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var441 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1549 (Array Int (Array Int Int)) var441) ; Statement: r0 = $r54 
(define-const var1764 (Array Int (Array Int Int)) var441) ; Statement: $r53 = $r54 
(define-const var1363 var497 (databaseTerm/1074764847 var2793)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3044 var594 (var497_getValue/1633538672 var1363)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var775 var2761 var2761-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3044 (cast-from-var2761-to-var594 var775)))) ; Cond: $r4 != $r3 
(define-const var828 (Array Int Int) var3342) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var1764!1 (Array Int (Array Int Int)))
(assert (not (= var1764!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1764!1 0) var828)) ; Statement: $r53[0] = $r55 
(define-const var1177 var497 (databaseTerm/1074764847 var2793)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var119 var594 (var497_getValue/1633538672 var1177)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1504 var2761 var2761-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var119 (cast-from-var2761-to-var594 var1504)))) ; Cond: $r8 != $r7 
(define-const var1702 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var1549!1 (Array Int (Array Int Int)))
(assert (not (= var1549!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!1 1) var1702)) ; Statement: r0[1] = $r56 
(declare-const var1549!2 (Array Int (Array Int Int)))
(assert (not (= var1549!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!2 2) var1259)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2375 (Array Int Int) (s2b/-450202684 var2793 var3427)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1549!3 (Array Int (Array Int Int)))
(assert (not (= var1549!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!3 3) var2375)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3560 Int (getColumnType/800489773 var2793 var3705 var2482 var591 var324)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var643 String (String_valueOf/1240665136 var3560)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1045 (Array Int Int) (s2b/-450202684 var2793 var643)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1549!4 (Array Int (Array Int Int)))
(assert (not (= var1549!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!4 4) var1045)) ; Statement: r0[4] = $r13 
(define-const var3887 var932 (mysqlType/-289055874 var565)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var486 var932 var932-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3887 var486))) ; Cond: $r16 != $r15 
(define-const var3058 var932 (mysqlType/-289055874 var565)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1971 Int (getJdbcType/389098195 var3058)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2709 Int (cast-from-Int-to-Int var1971)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3687 String (Int_toString/-1770815874 var2709)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1696 (Array Int Int) (getBytes/1068683673 var3687)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1549!5 (Array Int (Array Int Int)))
(assert (not (= var1549!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!5 5) var1696)) ; Statement: r0[5] = $r58 
(define-const var523 var932 (mysqlType/-289055874 var565)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var829 String (getName/1307715079 var523)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3832 (Array Int Int) (s2b/-450202684 var2793 var829)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1549!6 (Array Int (Array Int Int)))
(assert (not (= var1549!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!6 6) var3832)) ; Statement: r0[6] = $r61 
(define-const var3408 Int (datetimePrecision/-289055874 var565)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var3408 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var1586 Int (columnSize/-289055874 var565)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1059 String (toString/483301002 var1586)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var853 (Array Int Int) (s2b/-450202684 var2793 var1059)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var1549!7 (Array Int (Array Int Int)))
(assert (not (= var1549!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!7 7) var853)) ; Statement: r0[7] = $r63 
(define-const var3872 Int (columnSize/-289055874 var565)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3872 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3161 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1549!8 (Array Int (Array Int Int)))
(assert (not (= var1549!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!8 8) var3161)) ; Statement: r0[8] = $r64 
(define-const var2726 Int (decimalDigits/-289055874 var565)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var2726 null-Int))) ; Cond: $r23 != null 
(define-const var71 Int (decimalDigits/-289055874 var565)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var144 String (toString/483301002 var71)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2656 (Array Int Int) (s2b/-450202684 var2793 var144)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var1549!9 (Array Int (Array Int Int)))
(assert (not (= var1549!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!9 9) var2656)) ; Statement: r0[9] = $r65 
(define-const var3481 Int (numPrecRadix/-289055874 var565)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2197 String (Int_toString/1350422511 var3481)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2552 (Array Int Int) (s2b/-450202684 var2793 var2197)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1549!10 (Array Int (Array Int Int)))
(assert (not (= var1549!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1549!10 10) var2552)) ; Statement: r0[10] = $r27 
(define-const var2662 Int (nullability/-289055874 var565)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2662 2)) (and (not (= var2662 1)) (and (not (= var2662 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3223 String (var493_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var772 var1699 (getExceptionInterceptor/-1244810802 var2793)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1104 var1706 (var1892_createSQLException/-1268047242 var3223 "S1000" var772)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var497_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2761-to-var594=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var493_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1892_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1873=com.mysql.cj.jdbc.DatabaseMetaData, var2793=r1, var1259=r9, var3342=r5, var3427=r10, var1832=null_type, var3705=z1, var2482=z2, var591=z3, var2714=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var565=r14, var324=z0, var1611=i4, var441=$r54, var1549=r0, var1764=$r53, var497=com.mysql.cj.conf.RuntimeProperty, var1363=$r2, var594=java.lang.Object, var3044=$r4, var2761=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var775=$r3, var828=$r55, var1177=$r6, var119=$r8, var1504=$r7, var1702=$r56, var2375=$r11, var3560=$i0, var643=$r12, var1045=$r13, var932=com.mysql.cj.MysqlType, var3887=$r16, var486=$r15, var3058=$r17, var1971=$i1, var2709=$s5, var3687=$r57, var1696=$r58, var523=$r59, var829=$r60, var3832=$r61, var3408=$r62, var1586=$r51, var1059=$r52, var853=$r63, var3872=$r20, var3161=$r64, var2726=$r23, var71=$r24, var144=$r25, var2656=$r65, var3481=$i2, var2197=$r26, var2552=$r27, var2662=$i3, var493=com.mysql.cj.Messages, var3223=$r49, var1699=com.mysql.cj.exceptions.ExceptionInterceptor, var772=$r48, var1706=java.sql.SQLException, var1892=com.mysql.cj.jdbc.exceptions.SQLError, var1104=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1873, r1=var2793, r9=var1259, r5=var3342, r10=var3427, null_type=var1832, z1=var3705, z2=var2482, z3=var591, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2714, r14=var565, z0=var324, i4=var1611, $r54=var441, r0=var1549, $r53=var1764, com.mysql.cj.conf.RuntimeProperty=var497, $r2=var1363, java.lang.Object=var594, $r4=var3044, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2761, $r3=var775, $r55=var828, $r6=var1177, $r8=var119, $r7=var1504, $r56=var1702, $r11=var2375, $i0=var3560, $r12=var643, $r13=var1045, com.mysql.cj.MysqlType=var932, $r16=var3887, $r15=var486, $r17=var3058, $i1=var1971, $s5=var2709, $r57=var3687, $r58=var1696, $r59=var523, $r60=var829, $r61=var3832, $r62=var3408, $r51=var1586, $r52=var1059, $r63=var853, $r20=var3872, $r64=var3161, $r23=var2726, $r24=var71, $r25=var144, $r65=var2656, $i2=var3481, $r26=var2197, $r27=var2552, $i3=var2662, com.mysql.cj.Messages=var493, $r49=var3223, com.mysql.cj.exceptions.ExceptionInterceptor=var1699, $r48=var772, java.sql.SQLException=var1706, com.mysql.cj.jdbc.exceptions.SQLError=var1892, $r50=var1104}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16