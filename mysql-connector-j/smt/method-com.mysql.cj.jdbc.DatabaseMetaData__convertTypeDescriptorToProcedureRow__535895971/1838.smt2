(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1459 0)
(declare-sort var14 0)
(declare-sort var3222 0)
(declare-sort var2087 0)
(declare-sort var1943 0)
(declare-sort var3627 0)
(declare-sort var1328 0)
(declare-sort var1583 0)
(declare-sort var3468 0)
(declare-sort var2170 0)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1459) var2087)
(declare-fun var2087_getValue/1633538672 (var2087) var1943)
(declare-fun cast-from-var3627-to-var1943 (var3627) var1943)
(declare-fun s2b/-450202684 (var1459 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1459 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3222) var1328)
(declare-fun getJdbcType/389098195 (var1328) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1328) String)
(declare-fun datetimePrecision/-289055874 (var3222) Int)
(declare-fun columnSize/-289055874 (var3222) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3222) Int)
(declare-fun numPrecRadix/-289055874 (var3222) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3222) Int)
(declare-fun var1583_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1459) var3468)
(declare-fun var2038_createSQLException/-1268047242 (String String var3468) var2170)
(declare-const null-var1459 var1459)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3222 var3222)
(declare-const null-Int Int)
(declare-const var3627-SCHEMA var3627)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1328-YEAR var1328)
(declare-const var3788 var1459) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3788 null-var1459)))
(declare-const var1696 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1696 null-__Array__Int__Int__)))
(declare-const var3237 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3237 null-__Array__Int__Int__)))
(declare-const var1342 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1342 null-String)))
(declare-const var3774 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3774 null-Bool)))
(declare-const var116 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var116 null-Bool)))
(declare-const var383 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var383 null-Bool)))
(declare-const var997 var3222) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var997 null-var3222)))
(declare-const var3087 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3087 null-Bool)))
(declare-const var1130 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var1130 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3087 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1796 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var193 (Array Int (Array Int Int)) var1796) ; Statement: r0 = $r54 
(define-const var3252 (Array Int (Array Int Int)) var1796) ; Statement: $r53 = $r54 
(define-const var1307 var2087 (databaseTerm/1074764847 var3788)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1505 var1943 (var2087_getValue/1633538672 var1307)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var813 var3627 var3627-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1505 (cast-from-var3627-to-var1943 var813))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1376 (Array Int Int) (s2b/-450202684 var3788 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var3252!1 (Array Int (Array Int Int)))
(assert (not (= var3252!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3252!1 0) var1376)) ; Statement: $r53[0] = $r55 
(define-const var1332 var2087 (databaseTerm/1074764847 var3788)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1292 var1943 (var2087_getValue/1633538672 var1332)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1251 var3627 var3627-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var1292 (cast-from-var3627-to-var1943 var1251)))) ; Cond: $r8 != $r7 
(define-const var1798 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var193!1 (Array Int (Array Int Int)))
(assert (not (= var193!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!1 1) var1798)) ; Statement: r0[1] = $r56 
(declare-const var193!2 (Array Int (Array Int Int)))
(assert (not (= var193!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!2 2) var1696)) ; Statement: r0[2] = r9 
(assert true)
(define-const var768 (Array Int Int) (s2b/-450202684 var3788 var1342)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var193!3 (Array Int (Array Int Int)))
(assert (not (= var193!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!3 3) var768)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var3746 Int (getColumnType/800489773 var3788 var3774 var116 var383 var3087)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3224 String (String_valueOf/1240665136 var3746)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3511 (Array Int Int) (s2b/-450202684 var3788 var3224)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var193!4 (Array Int (Array Int Int)))
(assert (not (= var193!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!4 4) var3511)) ; Statement: r0[4] = $r13 
(define-const var1404 var1328 (mysqlType/-289055874 var997)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var3611 var1328 var1328-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1404 var3611))) ; Cond: $r16 != $r15 
(define-const var1551 var1328 (mysqlType/-289055874 var997)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var780 Int (getJdbcType/389098195 var1551)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var308 Int (cast-from-Int-to-Int var780)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2414 String (Int_toString/-1770815874 var308)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var362 (Array Int Int) (getBytes/1068683673 var2414)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var193!5 (Array Int (Array Int Int)))
(assert (not (= var193!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!5 5) var362)) ; Statement: r0[5] = $r58 
(define-const var2634 var1328 (mysqlType/-289055874 var997)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3806 String (getName/1307715079 var2634)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var427 (Array Int Int) (s2b/-450202684 var3788 var3806)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var193!6 (Array Int (Array Int Int)))
(assert (not (= var193!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!6 6) var427)) ; Statement: r0[6] = $r61 
(define-const var2175 Int (datetimePrecision/-289055874 var997)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var2175 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3707 Int (columnSize/-289055874 var997)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var711 String (toString/483301002 var3707)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2050 (Array Int Int) (s2b/-450202684 var3788 var711)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var193!7 (Array Int (Array Int Int)))
(assert (not (= var193!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!7 7) var2050)) ; Statement: r0[7] = $r63 
(define-const var3482 Int (columnSize/-289055874 var997)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3482 null-Int))) ; Cond: $r20 != null 
(define-const var1884 Int (columnSize/-289055874 var997)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var967 String (toString/483301002 var1884)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var756 (Array Int Int) (s2b/-450202684 var3788 var967)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var193!8 (Array Int (Array Int Int)))
(assert (not (= var193!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!8 8) var756)) ; Statement: r0[8] = $r64 
(define-const var686 Int (decimalDigits/-289055874 var997)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var686 null-Int))) ; Cond: $r23 != null 
(define-const var1167 Int (decimalDigits/-289055874 var997)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var925 String (toString/483301002 var1167)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3316 (Array Int Int) (s2b/-450202684 var3788 var925)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var193!9 (Array Int (Array Int Int)))
(assert (not (= var193!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!9 9) var3316)) ; Statement: r0[9] = $r65 
(define-const var2445 Int (numPrecRadix/-289055874 var997)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2499 String (Int_toString/1350422511 var2445)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1996 (Array Int Int) (s2b/-450202684 var3788 var2499)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var193!10 (Array Int (Array Int Int)))
(assert (not (= var193!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var193!10 10) var1996)) ; Statement: r0[10] = $r27 
(define-const var1735 Int (nullability/-289055874 var997)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1735 2)) (and (not (= var1735 1)) (and (not (= var1735 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3155 String (var1583_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var759 var3468 (getExceptionInterceptor/-1244810802 var3788)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1085 var2170 (var2038_createSQLException/-1268047242 var3155 "S1000" var759)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var2087_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var3627-to-var1943=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var1583_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2038_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1459=com.mysql.cj.jdbc.DatabaseMetaData, var3788=r1, var1696=r9, var3237=r5, var1342=r10, var14=null_type, var3774=z1, var116=z2, var383=z3, var3222=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var997=r14, var3087=z0, var1130=i4, var1796=$r54, var193=r0, var3252=$r53, var2087=com.mysql.cj.conf.RuntimeProperty, var1307=$r2, var1943=java.lang.Object, var1505=$r4, var3627=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var813=$r3, var1376=$r55, var1332=$r6, var1292=$r8, var1251=$r7, var1798=$r56, var768=$r11, var3746=$i0, var3224=$r12, var3511=$r13, var1328=com.mysql.cj.MysqlType, var1404=$r16, var3611=$r15, var1551=$r17, var780=$i1, var308=$s5, var2414=$r57, var362=$r58, var2634=$r59, var3806=$r60, var427=$r61, var2175=$r62, var3707=$r51, var711=$r52, var2050=$r63, var3482=$r20, var1884=$r21, var967=$r22, var756=$r64, var686=$r23, var1167=$r24, var925=$r25, var3316=$r65, var2445=$i2, var2499=$r26, var1996=$r27, var1735=$i3, var1583=com.mysql.cj.Messages, var3155=$r49, var3468=com.mysql.cj.exceptions.ExceptionInterceptor, var759=$r48, var2170=java.sql.SQLException, var2038=com.mysql.cj.jdbc.exceptions.SQLError, var1085=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1459, r1=var3788, r9=var1696, r5=var3237, r10=var1342, null_type=var14, z1=var3774, z2=var116, z3=var383, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3222, r14=var997, z0=var3087, i4=var1130, $r54=var1796, r0=var193, $r53=var3252, com.mysql.cj.conf.RuntimeProperty=var2087, $r2=var1307, java.lang.Object=var1943, $r4=var1505, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var3627, $r3=var813, $r55=var1376, $r6=var1332, $r8=var1292, $r7=var1251, $r56=var1798, $r11=var768, $i0=var3746, $r12=var3224, $r13=var3511, com.mysql.cj.MysqlType=var1328, $r16=var1404, $r15=var3611, $r17=var1551, $i1=var780, $s5=var308, $r57=var2414, $r58=var362, $r59=var2634, $r60=var3806, $r61=var427, $r62=var2175, $r51=var3707, $r52=var711, $r63=var2050, $r20=var3482, $r21=var1884, $r22=var967, $r64=var756, $r23=var686, $r24=var1167, $r25=var925, $r65=var3316, $i2=var2445, $r26=var2499, $r27=var1996, $i3=var1735, com.mysql.cj.Messages=var1583, $r49=var3155, com.mysql.cj.exceptions.ExceptionInterceptor=var3468, $r48=var759, java.sql.SQLException=var2170, com.mysql.cj.jdbc.exceptions.SQLError=var2038, $r50=var1085}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16