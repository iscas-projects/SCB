(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var529 0)
(declare-sort var877 0)
(declare-sort var3446 0)
(declare-sort var3470 0)
(declare-sort var3530 0)
(declare-sort var3058 0)
(declare-sort var3209 0)
(declare-sort var3239 0)
(declare-sort var1551 0)
(declare-sort var3669 0)
(declare-sort var846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var529) var3470)
(declare-fun var3470_getValue/1633538672 (var3470) var3530)
(declare-fun cast-from-var3058-to-var3530 (var3058) var3530)
(declare-fun s2b/-450202684 (var529 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var529 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3446) var3209)
(declare-fun getJdbcType/389098195 (var3209) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3209) String)
(declare-fun datetimePrecision/-289055874 (var3446) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var3446) Int)
(declare-fun decimalDigits/-289055874 (var3446) Int)
(declare-fun numPrecRadix/-289055874 (var3446) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3446) Int)
(declare-fun var3239_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var529) var1551)
(declare-fun var846_createSQLException/-1268047242 (String String var1551) var3669)
(declare-const null-var529 var529)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3446 var3446)
(declare-const null-Int Int)
(declare-const var3058-SCHEMA var3058)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3209-YEAR var3209)
(declare-const var627 var529) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var627 null-var529)))
(declare-const var3712 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3712 null-__Array__Int__Int__)))
(declare-const var1460 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1460 null-__Array__Int__Int__)))
(declare-const var447 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var447 null-String)))
(declare-const var1067 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1067 null-Bool)))
(declare-const var1810 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1810 null-Bool)))
(declare-const var3724 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3724 null-Bool)))
(declare-const var790 var3446) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var790 null-var3446)))
(declare-const var962 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var962 null-Bool)))
(declare-const var194 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var194 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var962 1 0) 0)) ; Cond: z0 == 0 
(define-const var940 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var2681 (Array Int (Array Int Int)) var940) ; Statement: r0 = $r54 
(define-const var3547 (Array Int (Array Int Int)) var940) ; Statement: $r53 = $r54 
(define-const var339 var3470 (databaseTerm/1074764847 var627)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3208 var3530 (var3470_getValue/1633538672 var339)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3505 var3058 var3058-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3208 (cast-from-var3058-to-var3530 var3505))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1220 (Array Int Int) (s2b/-450202684 var627 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var3547!1 (Array Int (Array Int Int)))
(assert (not (= var3547!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3547!1 0) var1220)) ; Statement: $r53[0] = $r55 
(define-const var1409 var3470 (databaseTerm/1074764847 var627)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1799 var3530 (var3470_getValue/1633538672 var1409)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1561 var3058 var3058-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1799 (cast-from-var3058-to-var3530 var1561))))) ; Negate: Cond: $r8 != $r7  
(define-const var2947 (Array Int Int) var1460) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2681!1 (Array Int (Array Int Int)))
(assert (not (= var2681!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!1 1) var2947)) ; Statement: r0[1] = $r56 
(declare-const var2681!2 (Array Int (Array Int Int)))
(assert (not (= var2681!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!2 2) var3712)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3022 (Array Int Int) (s2b/-450202684 var627 var447)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2681!3 (Array Int (Array Int Int)))
(assert (not (= var2681!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!3 3) var3022)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1034 Int (getColumnType/800489773 var627 var1067 var1810 var3724 var962)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3358 String (String_valueOf/1240665136 var1034)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1776 (Array Int Int) (s2b/-450202684 var627 var3358)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2681!4 (Array Int (Array Int Int)))
(assert (not (= var2681!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!4 4) var1776)) ; Statement: r0[4] = $r13 
(define-const var456 var3209 (mysqlType/-289055874 var790)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var1544 var3209 var3209-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var456 var1544))) ; Cond: $r16 != $r15 
(define-const var988 var3209 (mysqlType/-289055874 var790)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1414 Int (getJdbcType/389098195 var988)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var645 Int (cast-from-Int-to-Int var1414)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2742 String (Int_toString/-1770815874 var645)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2827 (Array Int Int) (getBytes/1068683673 var2742)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2681!5 (Array Int (Array Int Int)))
(assert (not (= var2681!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!5 5) var2827)) ; Statement: r0[5] = $r58 
(define-const var2133 var3209 (mysqlType/-289055874 var790)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var127 String (getName/1307715079 var2133)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var291 (Array Int Int) (s2b/-450202684 var627 var127)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2681!6 (Array Int (Array Int Int)))
(assert (not (= var2681!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!6 6) var291)) ; Statement: r0[6] = $r61 
(define-const var1768 Int (datetimePrecision/-289055874 var790)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var1768 null-Int))) ; Cond: $r62 != null 
(define-const var2167 Int (datetimePrecision/-289055874 var790)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1063 String (toString/483301002 var2167)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3002 (Array Int Int) (s2b/-450202684 var627 var1063)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2681!7 (Array Int (Array Int Int)))
(assert (not (= var2681!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!7 7) var3002)) ; Statement: r0[7] = $r63 
(define-const var3759 Int (columnSize/-289055874 var790)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var3759 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var2787 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var2681!8 (Array Int (Array Int Int)))
(assert (not (= var2681!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!8 8) var2787)) ; Statement: r0[8] = $r64 
(define-const var845 Int (decimalDigits/-289055874 var790)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var845 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3146 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2681!9 (Array Int (Array Int Int)))
(assert (not (= var2681!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!9 9) var3146)) ; Statement: r0[9] = $r65 
(define-const var1565 Int (numPrecRadix/-289055874 var790)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3138 String (Int_toString/1350422511 var1565)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2172 (Array Int Int) (s2b/-450202684 var627 var3138)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2681!10 (Array Int (Array Int Int)))
(assert (not (= var2681!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2681!10 10) var2172)) ; Statement: r0[10] = $r27 
(define-const var1870 Int (nullability/-289055874 var790)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1870 2)) (and (not (= var1870 1)) (and (not (= var1870 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var215 String (var3239_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2286 var1551 (getExceptionInterceptor/-1244810802 var627)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3758 var3669 (var846_createSQLException/-1268047242 var215 "S1000" var2286)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3470_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3058-to-var3530=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3239_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var846_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var529=com.mysql.cj.jdbc.DatabaseMetaData, var627=r1, var3712=r9, var1460=r5, var447=r10, var877=null_type, var1067=z1, var1810=z2, var3724=z3, var3446=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var790=r14, var962=z0, var194=i4, var940=$r54, var2681=r0, var3547=$r53, var3470=com.mysql.cj.conf.RuntimeProperty, var339=$r2, var3530=java.lang.Object, var3208=$r4, var3058=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var3505=$r3, var1220=$r55, var1409=$r6, var1799=$r8, var1561=$r7, var2947=$r56, var3022=$r11, var1034=$i0, var3358=$r12, var1776=$r13, var3209=com.mysql.cj.MysqlType, var456=$r16, var1544=$r15, var988=$r17, var1414=$i1, var645=$s5, var2742=$r57, var2827=$r58, var2133=$r59, var127=$r60, var291=$r61, var1768=$r62, var2167=$r18, var1063=$r19, var3002=$r63, var3759=$r20, var2787=$r64, var845=$r23, var3146=$r65, var1565=$i2, var3138=$r26, var2172=$r27, var1870=$i3, var3239=com.mysql.cj.Messages, var215=$r49, var1551=com.mysql.cj.exceptions.ExceptionInterceptor, var2286=$r48, var3669=java.sql.SQLException, var846=com.mysql.cj.jdbc.exceptions.SQLError, var3758=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var529, r1=var627, r9=var3712, r5=var1460, r10=var447, null_type=var877, z1=var1067, z2=var1810, z3=var3724, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3446, r14=var790, z0=var962, i4=var194, $r54=var940, r0=var2681, $r53=var3547, com.mysql.cj.conf.RuntimeProperty=var3470, $r2=var339, java.lang.Object=var3530, $r4=var3208, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3058, $r3=var3505, $r55=var1220, $r6=var1409, $r8=var1799, $r7=var1561, $r56=var2947, $r11=var3022, $i0=var1034, $r12=var3358, $r13=var1776, com.mysql.cj.MysqlType=var3209, $r16=var456, $r15=var1544, $r17=var988, $i1=var1414, $s5=var645, $r57=var2742, $r58=var2827, $r59=var2133, $r60=var127, $r61=var291, $r62=var1768, $r18=var2167, $r19=var1063, $r63=var3002, $r20=var3759, $r64=var2787, $r23=var845, $r65=var3146, $i2=var1565, $r26=var3138, $r27=var2172, $i3=var1870, com.mysql.cj.Messages=var3239, $r49=var215, com.mysql.cj.exceptions.ExceptionInterceptor=var1551, $r48=var2286, java.sql.SQLException=var3669, com.mysql.cj.jdbc.exceptions.SQLError=var846, $r50=var3758}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16