(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1472 0)
(declare-sort var612 0)
(declare-sort var262 0)
(declare-sort var178 0)
(declare-sort var1975 0)
(declare-sort var3805 0)
(declare-sort var3410 0)
(declare-sort var1222 0)
(declare-sort var1573 0)
(declare-sort var2296 0)
(declare-sort var2054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1472) var178)
(declare-fun var178_getValue/1633538672 (var178) var1975)
(declare-fun cast-from-var3805-to-var1975 (var3805) var1975)
(declare-fun s2b/-450202684 (var1472 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1472 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var262) var3410)
(declare-fun getJdbcType/389098195 (var3410) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var3410) String)
(declare-fun datetimePrecision/-289055874 (var262) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var262) Int)
(declare-fun decimalDigits/-289055874 (var262) Int)
(declare-fun numPrecRadix/-289055874 (var262) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var262) Int)
(declare-fun var1222_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1472) var1573)
(declare-fun var2054_createSQLException/-1268047242 (String String var1573) var2296)
(declare-const null-var1472 var1472)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var262 var262)
(declare-const null-Int Int)
(declare-const var3805-SCHEMA var3805)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3410-YEAR var3410)
(declare-const var2771 var1472) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2771 null-var1472)))
(declare-const var3820 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3820 null-__Array__Int__Int__)))
(declare-const var326 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var326 null-__Array__Int__Int__)))
(declare-const var288 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var288 null-String)))
(declare-const var2787 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2787 null-Bool)))
(declare-const var3183 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3183 null-Bool)))
(declare-const var2640 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var2640 null-Bool)))
(declare-const var1954 var262) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1954 null-var262)))
(declare-const var2559 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var2559 null-Bool)))
(declare-const var960 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var960 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var2559 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var456 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2086 (Array Int (Array Int Int)) var456) ; Statement: r0 = $r54 
(define-const var2746 (Array Int (Array Int Int)) var456) ; Statement: $r53 = $r54 
(define-const var1139 var178 (databaseTerm/1074764847 var2771)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3589 var1975 (var178_getValue/1633538672 var1139)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1863 var3805 var3805-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var3589 (cast-from-var3805-to-var1975 var1863))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var2592 (Array Int Int) (s2b/-450202684 var2771 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2746!1 (Array Int (Array Int Int)))
(assert (not (= var2746!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2746!1 0) var2592)) ; Statement: $r53[0] = $r55 
(define-const var2553 var178 (databaseTerm/1074764847 var2771)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var69 var1975 (var178_getValue/1633538672 var2553)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2744 var3805 var3805-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var69 (cast-from-var3805-to-var1975 var2744)))) ; Cond: $r8 != $r7 
(define-const var684 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var2086!1 (Array Int (Array Int Int)))
(assert (not (= var2086!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!1 1) var684)) ; Statement: r0[1] = $r56 
(declare-const var2086!2 (Array Int (Array Int Int)))
(assert (not (= var2086!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!2 2) var3820)) ; Statement: r0[2] = r9 
(assert true)
(define-const var3942 (Array Int Int) (s2b/-450202684 var2771 var288)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2086!3 (Array Int (Array Int Int)))
(assert (not (= var2086!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!3 3) var3942)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1693 Int (getColumnType/800489773 var2771 var2787 var3183 var2640 var2559)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1441 String (String_valueOf/1240665136 var1693)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3520 (Array Int Int) (s2b/-450202684 var2771 var1441)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2086!4 (Array Int (Array Int Int)))
(assert (not (= var2086!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!4 4) var3520)) ; Statement: r0[4] = $r13 
(define-const var2410 var3410 (mysqlType/-289055874 var1954)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3515 var3410 var3410-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var2410 var3515))) ; Cond: $r16 != $r15 
(define-const var1048 var3410 (mysqlType/-289055874 var1954)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1383 Int (getJdbcType/389098195 var1048)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1922 Int (cast-from-Int-to-Int var1383)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var3557 String (Int_toString/-1770815874 var1922)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1427 (Array Int Int) (getBytes/1068683673 var3557)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2086!5 (Array Int (Array Int Int)))
(assert (not (= var2086!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!5 5) var1427)) ; Statement: r0[5] = $r58 
(define-const var2604 var3410 (mysqlType/-289055874 var1954)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2796 String (getName/1307715079 var2604)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2652 (Array Int Int) (s2b/-450202684 var2771 var2796)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2086!6 (Array Int (Array Int Int)))
(assert (not (= var2086!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!6 6) var2652)) ; Statement: r0[6] = $r61 
(define-const var2690 Int (datetimePrecision/-289055874 var1954)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var2690 null-Int))) ; Cond: $r62 != null 
(define-const var719 Int (datetimePrecision/-289055874 var1954)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var1631 String (toString/483301002 var719)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var15 (Array Int Int) (s2b/-450202684 var2771 var1631)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2086!7 (Array Int (Array Int Int)))
(assert (not (= var2086!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!7 7) var15)) ; Statement: r0[7] = $r63 
(define-const var1272 Int (columnSize/-289055874 var1954)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1272 null-Int))) ; Cond: $r20 != null 
(define-const var2712 Int (columnSize/-289055874 var1954)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2866 String (toString/483301002 var2712)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1056 (Array Int Int) (s2b/-450202684 var2771 var2866)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2086!8 (Array Int (Array Int Int)))
(assert (not (= var2086!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!8 8) var1056)) ; Statement: r0[8] = $r64 
(define-const var3172 Int (decimalDigits/-289055874 var1954)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var3172 null-Int))) ; Cond: $r23 != null 
(define-const var1918 Int (decimalDigits/-289055874 var1954)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var707 String (toString/483301002 var1918)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var654 (Array Int Int) (s2b/-450202684 var2771 var707)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var2086!9 (Array Int (Array Int Int)))
(assert (not (= var2086!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!9 9) var654)) ; Statement: r0[9] = $r65 
(define-const var1715 Int (numPrecRadix/-289055874 var1954)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var480 String (Int_toString/1350422511 var1715)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var2915 (Array Int Int) (s2b/-450202684 var2771 var480)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2086!10 (Array Int (Array Int Int)))
(assert (not (= var2086!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2086!10 10) var2915)) ; Statement: r0[10] = $r27 
(define-const var1090 Int (nullability/-289055874 var1954)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1090 2)) (and (not (= var1090 1)) (and (not (= var1090 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var322 String (var1222_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var881 var1573 (getExceptionInterceptor/-1244810802 var2771)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2454 var2296 (var2054_createSQLException/-1268047242 var322 "S1000" var881)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var178_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3805-to-var1975=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1222_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2054_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1472=com.mysql.cj.jdbc.DatabaseMetaData, var2771=r1, var3820=r9, var326=r5, var288=r10, var612=null_type, var2787=z1, var3183=z2, var2640=z3, var262=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1954=r14, var2559=z0, var960=i4, var456=$r54, var2086=r0, var2746=$r53, var178=com.mysql.cj.conf.RuntimeProperty, var1139=$r2, var1975=java.lang.Object, var3589=$r4, var3805=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1863=$r3, var2592=$r55, var2553=$r6, var69=$r8, var2744=$r7, var684=$r56, var3942=$r11, var1693=$i0, var1441=$r12, var3520=$r13, var3410=com.mysql.cj.MysqlType, var2410=$r16, var3515=$r15, var1048=$r17, var1383=$i1, var1922=$s5, var3557=$r57, var1427=$r58, var2604=$r59, var2796=$r60, var2652=$r61, var2690=$r62, var719=$r18, var1631=$r19, var15=$r63, var1272=$r20, var2712=$r21, var2866=$r22, var1056=$r64, var3172=$r23, var1918=$r24, var707=$r25, var654=$r65, var1715=$i2, var480=$r26, var2915=$r27, var1090=$i3, var1222=com.mysql.cj.Messages, var322=$r49, var1573=com.mysql.cj.exceptions.ExceptionInterceptor, var881=$r48, var2296=java.sql.SQLException, var2054=com.mysql.cj.jdbc.exceptions.SQLError, var2454=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1472, r1=var2771, r9=var3820, r5=var326, r10=var288, null_type=var612, z1=var2787, z2=var3183, z3=var2640, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var262, r14=var1954, z0=var2559, i4=var960, $r54=var456, r0=var2086, $r53=var2746, com.mysql.cj.conf.RuntimeProperty=var178, $r2=var1139, java.lang.Object=var1975, $r4=var3589, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3805, $r3=var1863, $r55=var2592, $r6=var2553, $r8=var69, $r7=var2744, $r56=var684, $r11=var3942, $i0=var1693, $r12=var1441, $r13=var3520, com.mysql.cj.MysqlType=var3410, $r16=var2410, $r15=var3515, $r17=var1048, $i1=var1383, $s5=var1922, $r57=var3557, $r58=var1427, $r59=var2604, $r60=var2796, $r61=var2652, $r62=var2690, $r18=var719, $r19=var1631, $r63=var15, $r20=var1272, $r21=var2712, $r22=var2866, $r64=var1056, $r23=var3172, $r24=var1918, $r25=var707, $r65=var654, $i2=var1715, $r26=var480, $r27=var2915, $i3=var1090, com.mysql.cj.Messages=var1222, $r49=var322, com.mysql.cj.exceptions.ExceptionInterceptor=var1573, $r48=var881, java.sql.SQLException=var2296, com.mysql.cj.jdbc.exceptions.SQLError=var2054, $r50=var2454}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16