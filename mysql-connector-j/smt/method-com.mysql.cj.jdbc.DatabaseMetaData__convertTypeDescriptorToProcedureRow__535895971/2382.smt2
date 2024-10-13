(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1384 0)
(declare-sort var673 0)
(declare-sort var2935 0)
(declare-sort var1769 0)
(declare-sort var3704 0)
(declare-sort var3858 0)
(declare-sort var1760 0)
(declare-sort var2770 0)
(declare-sort var3025 0)
(declare-sort var1499 0)
(declare-sort var1093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1384) var1769)
(declare-fun var1769_getValue/1633538672 (var1769) var3704)
(declare-fun cast-from-var3858-to-var3704 (var3858) var3704)
(declare-fun s2b/-450202684 (var1384 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1384 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2935) var1760)
(declare-fun getJdbcType/389098195 (var1760) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1760) String)
(declare-fun datetimePrecision/-289055874 (var2935) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2935) Int)
(declare-fun decimalDigits/-289055874 (var2935) Int)
(declare-fun numPrecRadix/-289055874 (var2935) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2935) Int)
(declare-fun var2770_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1384) var3025)
(declare-fun var1093_createSQLException/-1268047242 (String String var3025) var1499)
(declare-const null-var1384 var1384)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2935 var2935)
(declare-const null-Int Int)
(declare-const var3858-SCHEMA var3858)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1760-YEAR var1760)
(declare-const var2097 var1384) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2097 null-var1384)))
(declare-const var412 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var412 null-__Array__Int__Int__)))
(declare-const var270 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var270 null-__Array__Int__Int__)))
(declare-const var3294 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3294 null-String)))
(declare-const var1855 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1855 null-Bool)))
(declare-const var311 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var311 null-Bool)))
(declare-const var3234 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3234 null-Bool)))
(declare-const var2671 var2935) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2671 null-var2935)))
(declare-const var1539 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1539 null-Bool)))
(declare-const var3844 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3844 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1539 1 0) 0)) ; Cond: z0 == 0 
(define-const var2742 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var3562 (Array Int (Array Int Int)) var2742) ; Statement: r0 = $r54 
(define-const var488 (Array Int (Array Int Int)) var2742) ; Statement: $r53 = $r54 
(define-const var3782 var1769 (databaseTerm/1074764847 var2097)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3854 var3704 (var1769_getValue/1633538672 var3782)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var501 var3858 var3858-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3854 (cast-from-var3858-to-var3704 var501))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2481 (Array Int Int) (s2b/-450202684 var2097 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var488!1 (Array Int (Array Int Int)))
(assert (not (= var488!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var488!1 0) var2481)) ; Statement: $r53[0] = $r55 
(define-const var2376 var1769 (databaseTerm/1074764847 var2097)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1951 var3704 (var1769_getValue/1633538672 var2376)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1103 var3858 var3858-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var1951 (cast-from-var3858-to-var3704 var1103)))) ; Cond: $r8 != $r7 
(define-const var3995 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var3562!1 (Array Int (Array Int Int)))
(assert (not (= var3562!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!1 1) var3995)) ; Statement: r0[1] = $r56 
(declare-const var3562!2 (Array Int (Array Int Int)))
(assert (not (= var3562!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!2 2) var412)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2542 (Array Int Int) (s2b/-450202684 var2097 var3294)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var3562!3 (Array Int (Array Int Int)))
(assert (not (= var3562!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!3 3) var2542)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2781 Int (getColumnType/800489773 var2097 var1855 var311 var3234 var1539)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var657 String (String_valueOf/1240665136 var2781)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1025 (Array Int Int) (s2b/-450202684 var2097 var657)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3562!4 (Array Int (Array Int Int)))
(assert (not (= var3562!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!4 4) var1025)) ; Statement: r0[4] = $r13 
(define-const var3833 var1760 (mysqlType/-289055874 var2671)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var890 var1760 var1760-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3833 var890))) ; Cond: $r16 != $r15 
(define-const var2034 var1760 (mysqlType/-289055874 var2671)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var264 Int (getJdbcType/389098195 var2034)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var2508 Int (cast-from-Int-to-Int var264)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var844 String (Int_toString/-1770815874 var2508)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3810 (Array Int Int) (getBytes/1068683673 var844)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var3562!5 (Array Int (Array Int Int)))
(assert (not (= var3562!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!5 5) var3810)) ; Statement: r0[5] = $r58 
(define-const var3644 var1760 (mysqlType/-289055874 var2671)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var508 String (getName/1307715079 var3644)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1337 (Array Int Int) (s2b/-450202684 var2097 var508)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var3562!6 (Array Int (Array Int Int)))
(assert (not (= var3562!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!6 6) var1337)) ; Statement: r0[6] = $r61 
(define-const var3543 Int (datetimePrecision/-289055874 var2671)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3543 null-Int))) ; Cond: $r62 != null 
(define-const var3775 Int (datetimePrecision/-289055874 var2671)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var2109 String (toString/483301002 var3775)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var61 (Array Int Int) (s2b/-450202684 var2097 var2109)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var3562!7 (Array Int (Array Int Int)))
(assert (not (= var3562!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!7 7) var61)) ; Statement: r0[7] = $r63 
(define-const var3379 Int (columnSize/-289055874 var2671)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3379 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var802 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var3562!8 (Array Int (Array Int Int)))
(assert (not (= var3562!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!8 8) var802)) ; Statement: r0[8] = $r64 
(define-const var3807 Int (decimalDigits/-289055874 var2671)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3807 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3126 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var3562!9 (Array Int (Array Int Int)))
(assert (not (= var3562!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!9 9) var3126)) ; Statement: r0[9] = $r65 
(define-const var3934 Int (numPrecRadix/-289055874 var2671)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var938 String (Int_toString/1350422511 var3934)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1823 (Array Int Int) (s2b/-450202684 var2097 var938)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var3562!10 (Array Int (Array Int Int)))
(assert (not (= var3562!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3562!10 10) var1823)) ; Statement: r0[10] = $r27 
(define-const var3026 Int (nullability/-289055874 var2671)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3026 2)) (and (not (= var3026 1)) (and (not (= var3026 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2023 String (var2770_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var208 var3025 (getExceptionInterceptor/-1244810802 var2097)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2074 var1499 (var1093_createSQLException/-1268047242 var2023 "S1000" var208)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1769_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3858-to-var3704=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2770_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1093_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1384=com.mysql.cj.jdbc.DatabaseMetaData, var2097=r1, var412=r9, var270=r5, var3294=r10, var673=null_type, var1855=z1, var311=z2, var3234=z3, var2935=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2671=r14, var1539=z0, var3844=i4, var2742=$r54, var3562=r0, var488=$r53, var1769=com.mysql.cj.conf.RuntimeProperty, var3782=$r2, var3704=java.lang.Object, var3854=$r4, var3858=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var501=$r3, var2481=$r55, var2376=$r6, var1951=$r8, var1103=$r7, var3995=$r56, var2542=$r11, var2781=$i0, var657=$r12, var1025=$r13, var1760=com.mysql.cj.MysqlType, var3833=$r16, var890=$r15, var2034=$r17, var264=$i1, var2508=$s5, var844=$r57, var3810=$r58, var3644=$r59, var508=$r60, var1337=$r61, var3543=$r62, var3775=$r18, var2109=$r19, var61=$r63, var3379=$r20, var802=$r64, var3807=$r23, var3126=$r65, var3934=$i2, var938=$r26, var1823=$r27, var3026=$i3, var2770=com.mysql.cj.Messages, var2023=$r49, var3025=com.mysql.cj.exceptions.ExceptionInterceptor, var208=$r48, var1499=java.sql.SQLException, var1093=com.mysql.cj.jdbc.exceptions.SQLError, var2074=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1384, r1=var2097, r9=var412, r5=var270, r10=var3294, null_type=var673, z1=var1855, z2=var311, z3=var3234, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2935, r14=var2671, z0=var1539, i4=var3844, $r54=var2742, r0=var3562, $r53=var488, com.mysql.cj.conf.RuntimeProperty=var1769, $r2=var3782, java.lang.Object=var3704, $r4=var3854, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3858, $r3=var501, $r55=var2481, $r6=var2376, $r8=var1951, $r7=var1103, $r56=var3995, $r11=var2542, $i0=var2781, $r12=var657, $r13=var1025, com.mysql.cj.MysqlType=var1760, $r16=var3833, $r15=var890, $r17=var2034, $i1=var264, $s5=var2508, $r57=var844, $r58=var3810, $r59=var3644, $r60=var508, $r61=var1337, $r62=var3543, $r18=var3775, $r19=var2109, $r63=var61, $r20=var3379, $r64=var802, $r23=var3807, $r65=var3126, $i2=var3934, $r26=var938, $r27=var1823, $i3=var3026, com.mysql.cj.Messages=var2770, $r49=var2023, com.mysql.cj.exceptions.ExceptionInterceptor=var3025, $r48=var208, java.sql.SQLException=var1499, com.mysql.cj.jdbc.exceptions.SQLError=var1093, $r50=var2074}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16