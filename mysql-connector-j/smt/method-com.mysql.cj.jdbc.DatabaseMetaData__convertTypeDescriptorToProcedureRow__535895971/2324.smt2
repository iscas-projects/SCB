(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2401 0)
(declare-sort var3031 0)
(declare-sort var3175 0)
(declare-sort var1356 0)
(declare-sort var3145 0)
(declare-sort var1746 0)
(declare-sort var1262 0)
(declare-sort var2872 0)
(declare-sort var1384 0)
(declare-sort var1469 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2401) var1356)
(declare-fun var1356_getValue/1633538672 (var1356) var3145)
(declare-fun cast-from-var1746-to-var3145 (var1746) var3145)
(declare-fun s2b/-450202684 (var2401 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2401 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var3175) var1262)
(declare-fun getJdbcType/389098195 (var1262) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var1262) String)
(declare-fun datetimePrecision/-289055874 (var3175) Int)
(declare-fun columnSize/-289055874 (var3175) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun decimalDigits/-289055874 (var3175) Int)
(declare-fun numPrecRadix/-289055874 (var3175) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var3175) Int)
(declare-fun var2872_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2401) var1384)
(declare-fun var1441_createSQLException/-1268047242 (String String var1384) var1469)
(declare-const null-var2401 var2401)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3175 var3175)
(declare-const null-Int Int)
(declare-const var1746-SCHEMA var1746)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1262-YEAR var1262)
(declare-const var360 var2401) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var360 null-var2401)))
(declare-const var1627 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var1627 null-__Array__Int__Int__)))
(declare-const var1456 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var1456 null-__Array__Int__Int__)))
(declare-const var2615 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2615 null-String)))
(declare-const var1932 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1932 null-Bool)))
(declare-const var2816 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2816 null-Bool)))
(declare-const var1263 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var1263 null-Bool)))
(declare-const var3889 var3175) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var3889 null-var3175)))
(declare-const var1475 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var1475 null-Bool)))
(declare-const var133 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var133 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (= (ite var1475 1 0) 0)) ; Cond: z0 == 0 
(define-const var1672 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[20] 
(assert true) ; Non Conditional
(define-const var967 (Array Int (Array Int Int)) var1672) ; Statement: r0 = $r54 
(define-const var1615 (Array Int (Array Int Int)) var1672) ; Statement: $r53 = $r54 
(define-const var193 var1356 (databaseTerm/1074764847 var360)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1437 var3145 (var1356_getValue/1633538672 var193)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2227 var1746 var1746-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (not (= var1437 (cast-from-var1746-to-var3145 var2227))))) ; Negate: Cond: $r4 != $r3  
(assert true)
(define-const var1423 (Array Int Int) (s2b/-450202684 var360 "def")) ; Statement: $r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def") 
 ; Statement: goto [?= $r53[0] = $r55] 
(assert true) ; Non Conditional
(declare-const var1615!1 (Array Int (Array Int Int)))
(assert (not (= var1615!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1615!1 0) var1423)) ; Statement: $r53[0] = $r55 
(define-const var3697 var1356 (databaseTerm/1074764847 var360)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3985 var3145 (var1356_getValue/1633538672 var3697)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var2977 var1746 var1746-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (= var3985 (cast-from-var1746-to-var3145 var2977)))) ; Cond: $r8 != $r7 
(define-const var2304 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r56 = null 
(assert true) ; Non Conditional
(declare-const var967!1 (Array Int (Array Int Int)))
(assert (not (= var967!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!1 1) var2304)) ; Statement: r0[1] = $r56 
(declare-const var967!2 (Array Int (Array Int Int)))
(assert (not (= var967!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!2 2) var1627)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1203 (Array Int Int) (s2b/-450202684 var360 var2615)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var967!3 (Array Int (Array Int Int)))
(assert (not (= var967!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!3 3) var1203)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var1697 Int (getColumnType/800489773 var360 var1932 var2816 var1263 var1475)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var2954 String (String_valueOf/1240665136 var1697)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var3125 (Array Int Int) (s2b/-450202684 var360 var2954)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var967!4 (Array Int (Array Int Int)))
(assert (not (= var967!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!4 4) var3125)) ; Statement: r0[4] = $r13 
(define-const var3899 var1262 (mysqlType/-289055874 var3889)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var434 var1262 var1262-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var3899 var434))) ; Cond: $r16 != $r15 
(define-const var1611 var1262 (mysqlType/-289055874 var3889)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1964 Int (getJdbcType/389098195 var1611)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var1849 Int (cast-from-Int-to-Int var1964)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var425 String (Int_toString/-1770815874 var1849)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var2638 (Array Int Int) (getBytes/1068683673 var425)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var967!5 (Array Int (Array Int Int)))
(assert (not (= var967!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!5 5) var2638)) ; Statement: r0[5] = $r58 
(define-const var2235 var1262 (mysqlType/-289055874 var3889)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var60 String (getName/1307715079 var2235)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2396 (Array Int Int) (s2b/-450202684 var360 var60)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var967!6 (Array Int (Array Int Int)))
(assert (not (= var967!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!6 6) var2396)) ; Statement: r0[6] = $r61 
(define-const var1981 Int (datetimePrecision/-289055874 var3889)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (not (= var1981 null-Int)))) ; Negate: Cond: $r62 != null  
(define-const var752 Int (columnSize/-289055874 var3889)) ; Statement: $r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var1011 String (toString/483301002 var752)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3706 (Array Int Int) (s2b/-450202684 var360 var1011)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52) 
 ; Statement: goto [?= r0[7] = $r63] 
(assert true) ; Non Conditional
(declare-const var967!7 (Array Int (Array Int Int)))
(assert (not (= var967!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!7 7) var3706)) ; Statement: r0[7] = $r63 
(define-const var2663 Int (columnSize/-289055874 var3889)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var2663 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var78 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var967!8 (Array Int (Array Int Int)))
(assert (not (= var967!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!8 8) var78)) ; Statement: r0[8] = $r64 
(define-const var2063 Int (decimalDigits/-289055874 var3889)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var2063 null-Int))) ; Cond: $r23 != null 
(define-const var586 Int (decimalDigits/-289055874 var3889)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var2555 String (toString/483301002 var586)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var1818 (Array Int Int) (s2b/-450202684 var360 var2555)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var967!9 (Array Int (Array Int Int)))
(assert (not (= var967!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!9 9) var1818)) ; Statement: r0[9] = $r65 
(define-const var1130 Int (numPrecRadix/-289055874 var3889)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3416 String (Int_toString/1350422511 var1130)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1986 (Array Int Int) (s2b/-450202684 var360 var3416)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var967!10 (Array Int (Array Int Int)))
(assert (not (= var967!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var967!10 10) var1986)) ; Statement: r0[10] = $r27 
(define-const var99 Int (nullability/-289055874 var3889)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var99 2)) (and (not (= var99 1)) (and (not (= var99 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var218 String (var2872_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2365 var1384 (getExceptionInterceptor/-1244810802 var360)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3359 var1469 (var1441_createSQLException/-1268047242 var218 "S1000" var2365)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1356_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var1746-to-var3145=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var2872_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var1441_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2401=com.mysql.cj.jdbc.DatabaseMetaData, var360=r1, var1627=r9, var1456=r5, var2615=r10, var3031=null_type, var1932=z1, var2816=z2, var1263=z3, var3175=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var3889=r14, var1475=z0, var133=i4, var1672=$r54, var967=r0, var1615=$r53, var1356=com.mysql.cj.conf.RuntimeProperty, var193=$r2, var3145=java.lang.Object, var1437=$r4, var1746=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var2227=$r3, var1423=$r55, var3697=$r6, var3985=$r8, var2977=$r7, var2304=$r56, var1203=$r11, var1697=$i0, var2954=$r12, var3125=$r13, var1262=com.mysql.cj.MysqlType, var3899=$r16, var434=$r15, var1611=$r17, var1964=$i1, var1849=$s5, var425=$r57, var2638=$r58, var2235=$r59, var60=$r60, var2396=$r61, var1981=$r62, var752=$r51, var1011=$r52, var3706=$r63, var2663=$r20, var78=$r64, var2063=$r23, var586=$r24, var2555=$r25, var1818=$r65, var1130=$i2, var3416=$r26, var1986=$r27, var99=$i3, var2872=com.mysql.cj.Messages, var218=$r49, var1384=com.mysql.cj.exceptions.ExceptionInterceptor, var2365=$r48, var1469=java.sql.SQLException, var1441=com.mysql.cj.jdbc.exceptions.SQLError, var3359=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2401, r1=var360, r9=var1627, r5=var1456, r10=var2615, null_type=var3031, z1=var1932, z2=var2816, z3=var1263, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var3175, r14=var3889, z0=var1475, i4=var133, $r54=var1672, r0=var967, $r53=var1615, com.mysql.cj.conf.RuntimeProperty=var1356, $r2=var193, java.lang.Object=var3145, $r4=var1437, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var1746, $r3=var2227, $r55=var1423, $r6=var3697, $r8=var3985, $r7=var2977, $r56=var2304, $r11=var1203, $i0=var1697, $r12=var2954, $r13=var3125, com.mysql.cj.MysqlType=var1262, $r16=var3899, $r15=var434, $r17=var1611, $i1=var1964, $s5=var1849, $r57=var425, $r58=var2638, $r59=var2235, $r60=var60, $r61=var2396, $r62=var1981, $r51=var752, $r52=var1011, $r63=var3706, $r20=var2663, $r64=var78, $r23=var2063, $r24=var586, $r25=var2555, $r65=var1818, $i2=var1130, $r26=var3416, $r27=var1986, $i3=var99, com.mysql.cj.Messages=var2872, $r49=var218, com.mysql.cj.exceptions.ExceptionInterceptor=var1384, $r48=var2365, java.sql.SQLException=var1469, com.mysql.cj.jdbc.exceptions.SQLError=var1441, $r50=var3359}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[20];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("def");	goto [?= $r53[0] = $r55];	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = null;	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r51 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r52 = virtualinvoke $r51.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r52);	goto [?= r0[7] = $r63];	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16