(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1922 0)
(declare-sort var2430 0)
(declare-sort var7 0)
(declare-sort var2891 0)
(declare-sort var2003 0)
(declare-sort var978 0)
(declare-sort var3723 0)
(declare-sort var12 0)
(declare-sort var436 0)
(declare-sort var1475 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1922) var2891)
(declare-fun var2891_getValue/1633538672 (var2891) var2003)
(declare-fun cast-from-var978-to-var2003 (var978) var2003)
(declare-fun s2b/-450202684 (var1922 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1922 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var7) var3723)
(declare-fun getJdbcType/389098195 (var3723) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3723) String)
(declare-fun datetimePrecision/-289055874 (var7) Int)
(declare-fun columnSize/-289055874 (var7) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var7) Int)
(declare-fun numPrecRadix/-289055874 (var7) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var7) Int)
(declare-fun var12_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1922) var436)
(declare-fun var132_createSQLException/-1268047242 (String String var436) var1475)
(declare-const null-var1922 var1922)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var7 var7)
(declare-const null-Int Int)
(declare-const var978-SCHEMA var978)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3723-YEAR var3723)
(declare-const var2560 var1922) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2560 null-var1922)))
(declare-const var2321 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2321 null-__Array__Int__Int__)))
(declare-const var1286 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1286 null-__Array__Int__Int__)))
(declare-const var2703 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2703 null-String)))
(declare-const var354 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var354 null-Bool)))
(declare-const var517 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var517 null-Bool)))
(declare-const var1136 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1136 null-Bool)))
(declare-const var2348 var7) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2348 null-var7)))
(declare-const var995 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var995 null-Bool)))
(declare-const var2594 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2594 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var995 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1930 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var351 (Array Int (Array Int Int)) var1930) ; Statement: r0 = $r54 
(define-const var865 (Array Int (Array Int Int)) var1930) ; Statement: $r53 = $r54 
(define-const var230 var2891 (databaseTerm/1074764847 var2560)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var264 var2003 (var2891_getValue/1633538672 var230)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1463 var978 var978-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var264 (cast-from-var978-to-var2003 var1463)))) ; Cond: $r4 != $r3 
(define-const var3013 (Array Int Int) var1286) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var865!1 (Array Int (Array Int Int)))
(assert (not (= var865!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var865!1 0) var3013)) ; Statement: $r53[0] = $r55 
(define-const var1535 var2891 (databaseTerm/1074764847 var2560)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2264 var2003 (var2891_getValue/1633538672 var1535)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3896 var978 var978-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var2264 (cast-from-var978-to-var2003 var3896)))) ; Cond: $r8 != $r7 
(define-const var2668 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var351!1 (Array Int (Array Int Int)))
(assert (not (= var351!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!1 1) var2668)) ; Statement: r0[1] = $r56 
(declare-const var351!2 (Array Int (Array Int Int)))
(assert (not (= var351!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!2 2) var2321)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3731 (Array Int Int) (s2b/-450202684 var2560 var2703)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var351!3 (Array Int (Array Int Int)))
(assert (not (= var351!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!3 3) var3731)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3262 Int (getColumnType/800489773 var2560 var354 var517 var1136 var995)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2720 String (String_valueOf/1240665136 var3262)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2610 (Array Int Int) (s2b/-450202684 var2560 var2720)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var351!4 (Array Int (Array Int Int)))
(assert (not (= var351!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!4 4) var2610)) ; Statement: r0[4] = $r13 
(define-const var3094 var3723 (mysqlType/-289055874 var2348)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var953 var3723 var3723-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3094 var953))) ; Cond: $r16 != $r15 
(define-const var3973 var3723 (mysqlType/-289055874 var2348)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var506 Int (getJdbcType/389098195 var3973)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3305 Int (cast-from-Int-to-Int var506)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3588 String (Int_toString/-1770815874 var3305)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3998 (Array Int Int) (getBytes/1068683673 var3588)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var351!5 (Array Int (Array Int Int)))
(assert (not (= var351!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!5 5) var3998)) ; Statement: r0[5] = $r58 
(define-const var3712 var3723 (mysqlType/-289055874 var2348)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2533 String (getName/1307715079 var3712)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2467 (Array Int Int) (s2b/-450202684 var2560 var2533)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var351!6 (Array Int (Array Int Int)))
(assert (not (= var351!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!6 6) var2467)) ; Statement: r0[6] = $r61 
(define-const var2349 Int (datetimePrecision/-289055874 var2348)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2349 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3845 Int (columnSize/-289055874 var2348)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2741 String (toString/483301002 var3845)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3498 (Array Int Int) (s2b/-450202684 var2560 var2741)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var351!7 (Array Int (Array Int Int)))
(assert (not (= var351!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!7 7) var3498)) ; Statement: r0[7] = $r63 
(define-const var3631 Int (columnSize/-289055874 var2348)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3631 null-Int))) ; Cond: $r20 != null 
(define-const var2466 Int (columnSize/-289055874 var2348)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3053 String (toString/483301002 var2466)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2040 (Array Int Int) (s2b/-450202684 var2560 var3053)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var351!8 (Array Int (Array Int Int)))
(assert (not (= var351!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!8 8) var2040)) ; Statement: r0[8] = $r64 
(define-const var1967 Int (decimalDigits/-289055874 var2348)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var1967 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var1277 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var351!9 (Array Int (Array Int Int)))
(assert (not (= var351!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!9 9) var1277)) ; Statement: r0[9] = $r65 
(define-const var1687 Int (numPrecRadix/-289055874 var2348)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var613 String (Int_toString/1350422511 var1687)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var18 (Array Int Int) (s2b/-450202684 var2560 var613)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var351!10 (Array Int (Array Int Int)))
(assert (not (= var351!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var351!10 10) var18)) ; Statement: r0[10] = $r27 
(define-const var2031 Int (nullability/-289055874 var2348)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var2031 2)) (and (not (= var2031 1)) (and (not (= var2031 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var1594 String (var12_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2166 var436 (getExceptionInterceptor/-1244810802 var2560)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var516 var1475 (var132_createSQLException/-1268047242 var1594 "S1000" var2166)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2891_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var978-to-var2003=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var12_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var132_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1922=com.mysql.cj.jdbc.DatabaseMetaData, var2560=r1, var2321=r9, var1286=r5, var2703=r10, var2430=null_type, var354=z1, var517=z2, var1136=z3, var7=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2348=r14, var995=z0, var2594=i4, var1930=$r54, var351=r0, var865=$r53, var2891=com.mysql.cj.conf.RuntimeProperty, var230=$r2, var2003=java.lang.Object, var264=$r4, var978=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1463=$r3, var3013=$r55, var1535=$r6, var2264=$r8, var3896=$r7, var2668=$r56, var3731=$r11, var3262=$i0, var2720=$r12, var2610=$r13, var3723=com.mysql.cj.MysqlType, var3094=$r16, var953=$r15, var3973=$r17, var506=$i1, var3305=$s5, var3588=$r57, var3998=$r58, var3712=$r59, var2533=$r60, var2467=$r61, var2349=$r62, var3845=$r51, var2741=$r52, var3498=$r63, var3631=$r20, var2466=$r21, var3053=$r22, var2040=$r64, var1967=$r23, var1277=$r65, var1687=$i2, var613=$r26, var18=$r27, var2031=$i3, var12=com.mysql.cj.Messages, var1594=$r49, var436=com.mysql.cj.exceptions.ExceptionInterceptor, var2166=$r48, var1475=java.sql.SQLException, var132=com.mysql.cj.jdbc.exceptions.SQLError, var516=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1922, r1=var2560, r9=var2321, r5=var1286, r10=var2703, null_type=var2430, z1=var354, z2=var517, z3=var1136, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var7, r14=var2348, z0=var995, i4=var2594, $r54=var1930, r0=var351, $r53=var865, com.mysql.cj.conf.RuntimeProperty=var2891, $r2=var230, java.lang.Object=var2003, $r4=var264, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var978, $r3=var1463, $r55=var3013, $r6=var1535, $r8=var2264, $r7=var3896, $r56=var2668, $r11=var3731, $i0=var3262, $r12=var2720, $r13=var2610, com.mysql.cj.MysqlType=var3723, $r16=var3094, $r15=var953, $r17=var3973, $i1=var506, $s5=var3305, $r57=var3588, $r58=var3998, $r59=var3712, $r60=var2533, $r61=var2467, $r62=var2349, $r51=var3845, $r52=var2741, $r63=var3498, $r20=var3631, $r21=var2466, $r22=var3053, $r64=var2040, $r23=var1967, $r65=var1277, $i2=var1687, $r26=var613, $r27=var18, $i3=var2031, com.mysql.cj.Messages=var12, $r49=var1594, com.mysql.cj.exceptions.ExceptionInterceptor=var436, $r48=var2166, java.sql.SQLException=var1475, com.mysql.cj.jdbc.exceptions.SQLError=var132, $r50=var516}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16