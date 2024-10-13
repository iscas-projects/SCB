(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var2475 0)
(declare-sort var2525 0)
(declare-sort var3599 0)
(declare-sort var3649 0)
(declare-sort var2363 0)
(declare-sort var2287 0)
(declare-sort var2336 0)
(declare-sort var3807 0)
(declare-sort var1973 0)
(declare-sort var2395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var1678) var3599)
(declare-fun var3599_getValue/1633538672 (var3599) var3649)
(declare-fun cast-from-var2363-to-var3649 (var2363) var3649)
(declare-fun s2b/-450202684 (var1678 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var1678 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2525) var2287)
(declare-fun getJdbcType/389098195 (var2287) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2287) String)
(declare-fun datetimePrecision/-289055874 (var2525) Int)
(declare-fun columnSize/-289055874 (var2525) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var2525) Int)
(declare-fun numPrecRadix/-289055874 (var2525) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2525) Int)
(declare-fun var2336_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var1678) var3807)
(declare-fun var2395_createSQLException/-1268047242 (String String var3807) var1973)
(declare-const null-var1678 var1678)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2525 var2525)
(declare-const null-Int Int)
(declare-const var2363-SCHEMA var2363)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2287-YEAR var2287)
(declare-const var1723 var1678) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1723 null-var1678)))
(declare-const var3127 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var3127 null-__Array__Int__Int__)))
(declare-const var3148 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3148 null-__Array__Int__Int__)))
(declare-const var1501 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1501 null-String)))
(declare-const var3299 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3299 null-Bool)))
(declare-const var2955 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2955 null-Bool)))
(declare-const var1443 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1443 null-Bool)))
(declare-const var3849 var2525) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3849 null-var2525)))
(declare-const var500 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var500 null-Bool)))
(declare-const var2422 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var2422 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var500 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1230 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2405 (Array Int (Array Int Int)) var1230) ; Statement: r0 = $r54 
(define-const var2871 (Array Int (Array Int Int)) var1230) ; Statement: $r53 = $r54 
(define-const var3255 var3599 (databaseTerm/1074764847 var1723)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1160 var3649 (var3599_getValue/1633538672 var3255)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1857 var2363 var2363-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1160 (cast-from-var2363-to-var3649 var1857))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var3586 (Array Int Int) (s2b/-450202684 var1723 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var2871!1 (Array Int (Array Int Int)))
(assert (not (= var2871!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2871!1 0) var3586)) ; Statement: $r53[0] = $r55 
(define-const var2913 var3599 (databaseTerm/1074764847 var1723)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1593 var3649 (var3599_getValue/1633538672 var2913)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var3672 var2363 var2363-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1593 (cast-from-var2363-to-var3649 var3672))))) ; Negate: Cond: $r8 != $r7  
(define-const var193 (Array Int Int) var3148) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2405!1 (Array Int (Array Int Int)))
(assert (not (= var2405!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!1 1) var193)) ; Statement: r0[1] = $r56 
(declare-const var2405!2 (Array Int (Array Int Int)))
(assert (not (= var2405!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!2 2) var3127)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2136 (Array Int Int) (s2b/-450202684 var1723 var1501)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2405!3 (Array Int (Array Int Int)))
(assert (not (= var2405!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!3 3) var2136)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1859 Int (getColumnType/800489773 var1723 var3299 var2955 var1443 var500)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var1916 String (String_valueOf/1240665136 var1859)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var2328 (Array Int Int) (s2b/-450202684 var1723 var1916)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2405!4 (Array Int (Array Int Int)))
(assert (not (= var2405!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!4 4) var2328)) ; Statement: r0[4] = $r13 
(define-const var3474 var2287 (mysqlType/-289055874 var3849)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2007 var2287 var2287-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3474 var2007))) ; Cond: $r16 != $r15 
(define-const var2059 var2287 (mysqlType/-289055874 var3849)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1361 Int (getJdbcType/389098195 var2059)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3549 Int (cast-from-Int-to-Int var1361)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var2838 String (Int_toString/-1770815874 var3549)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var3921 (Array Int Int) (getBytes/1068683673 var2838)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2405!5 (Array Int (Array Int Int)))
(assert (not (= var2405!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!5 5) var3921)) ; Statement: r0[5] = $r58 
(define-const var1968 var2287 (mysqlType/-289055874 var3849)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2730 String (getName/1307715079 var1968)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2286 (Array Int Int) (s2b/-450202684 var1723 var2730)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2405!6 (Array Int (Array Int Int)))
(assert (not (= var2405!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!6 6) var2286)) ; Statement: r0[6] = $r61 
(define-const var149 Int (datetimePrecision/-289055874 var3849)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var149 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var3184 Int (columnSize/-289055874 var3849)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var2788 String (toString/483301002 var3184)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2994 (Array Int Int) (s2b/-450202684 var1723 var2788)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var2405!7 (Array Int (Array Int Int)))
(assert (not (= var2405!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!7 7) var2994)) ; Statement: r0[7] = $r63 
(define-const var3525 Int (columnSize/-289055874 var3849)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var3525 null-Int))) ; Cond: $r20 != null 
(define-const var1022 Int (columnSize/-289055874 var3849)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var3262 String (toString/483301002 var1022)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var2516 (Array Int Int) (s2b/-450202684 var1723 var3262)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2405!8 (Array Int (Array Int Int)))
(assert (not (= var2405!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!8 8) var2516)) ; Statement: r0[8] = $r64 
(define-const var3792 Int (decimalDigits/-289055874 var3849)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3792 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var696 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var2405!9 (Array Int (Array Int Int)))
(assert (not (= var2405!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!9 9) var696)) ; Statement: r0[9] = $r65 
(define-const var2989 Int (numPrecRadix/-289055874 var3849)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var1697 String (Int_toString/1350422511 var2989)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var411 (Array Int Int) (s2b/-450202684 var1723 var1697)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2405!10 (Array Int (Array Int Int)))
(assert (not (= var2405!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2405!10 10) var411)) ; Statement: r0[10] = $r27 
(define-const var3371 Int (nullability/-289055874 var3849)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3371 2)) (and (not (= var3371 1)) (and (not (= var3371 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var2952 String (var2336_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2667 var3807 (getExceptionInterceptor/-1244810802 var1723)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2860 var1973 (var2395_createSQLException/-1268047242 var2952 "S1000" var2667)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var3599_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2363-to-var3649=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2336_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var2395_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1678=com.mysql.cj.jdbc.DatabaseMetaData, var1723=r1, var3127=r9, var3148=r5, var1501=r10, var2475=null_type, var3299=z1, var2955=z2, var1443=z3, var2525=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3849=r14, var500=z0, var2422=i4, var1230=$r54, var2405=r0, var2871=$r53, var3599=com.mysql.cj.conf.RuntimeProperty, var3255=$r2, var3649=java.lang.Object, var1160=$r4, var2363=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var1857=$r3, var3586=$r55, var2913=$r6, var1593=$r8, var3672=$r7, var193=$r56, var2136=$r11, var1859=$i0, var1916=$r12, var2328=$r13, var2287=com.mysql.cj.MysqlType, var3474=$r16, var2007=$r15, var2059=$r17, var1361=$i1, var3549=$s5, var2838=$r57, var3921=$r58, var1968=$r59, var2730=$r60, var2286=$r61, var149=$r62, var3184=$r51, var2788=$r52, var2994=$r63, var3525=$r20, var1022=$r21, var3262=$r22, var2516=$r64, var3792=$r23, var696=$r65, var2989=$i2, var1697=$r26, var411=$r27, var3371=$i3, var2336=com.mysql.cj.Messages, var2952=$r49, var3807=com.mysql.cj.exceptions.ExceptionInterceptor, var2667=$r48, var1973=java.sql.SQLException, var2395=com.mysql.cj.jdbc.exceptions.SQLError, var2860=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1678, r1=var1723, r9=var3127, r5=var3148, r10=var1501, null_type=var2475, z1=var3299, z2=var2955, z3=var1443, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2525, r14=var3849, z0=var500, i4=var2422, $r54=var1230, r0=var2405, $r53=var2871, com.mysql.cj.conf.RuntimeProperty=var3599, $r2=var3255, java.lang.Object=var3649, $r4=var1160, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2363, $r3=var1857, $r55=var3586, $r6=var2913, $r8=var1593, $r7=var3672, $r56=var193, $r11=var2136, $i0=var1859, $r12=var1916, $r13=var2328, com.mysql.cj.MysqlType=var2287, $r16=var3474, $r15=var2007, $r17=var2059, $i1=var1361, $s5=var3549, $r57=var2838, $r58=var3921, $r59=var1968, $r60=var2730, $r61=var2286, $r62=var149, $r51=var3184, $r52=var2788, $r63=var2994, $r20=var3525, $r21=var1022, $r22=var3262, $r64=var2516, $r23=var3792, $r65=var696, $i2=var2989, $r26=var1697, $r27=var411, $i3=var3371, com.mysql.cj.Messages=var2336, $r49=var2952, com.mysql.cj.exceptions.ExceptionInterceptor=var3807, $r48=var2667, java.sql.SQLException=var1973, com.mysql.cj.jdbc.exceptions.SQLError=var2395, $r50=var2860}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16