(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2771 0)
(declare-sort var3585 0)
(declare-sort var1955 0)
(declare-sort var1000 0)
(declare-sort var3354 0)
(declare-sort var2059 0)
(declare-sort var2673 0)
(declare-sort var505 0)
(declare-sort var1634 0)
(declare-sort var1785 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var2771) var1000)
(declare-fun var1000_getValue/1633538672 (var1000) var3354)
(declare-fun cast-from-var2059-to-var3354 (var2059) var3354)
(declare-fun s2b/-450202684 (var2771 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var2771 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var1955) var2673)
(declare-fun getJdbcType/389098195 (var2673) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2673) String)
(declare-fun datetimePrecision/-289055874 (var1955) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var1955) Int)
(declare-fun decimalDigits/-289055874 (var1955) Int)
(declare-fun numPrecRadix/-289055874 (var1955) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var1955) Int)
(declare-fun var505_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var2771) var1634)
(declare-fun var3014_createSQLException/-1268047242 (String String var1634) var1785)
(declare-const null-var2771 var2771)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1955 var1955)
(declare-const null-Int Int)
(declare-const var2059-SCHEMA var2059)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2673-YEAR var2673)
(declare-const var3060 var2771) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3060 null-var2771)))
(declare-const var2638 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2638 null-__Array__Int__Int__)))
(declare-const var3182 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var3182 null-__Array__Int__Int__)))
(declare-const var2694 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2694 null-String)))
(declare-const var2654 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2654 null-Bool)))
(declare-const var2399 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2399 null-Bool)))
(declare-const var864 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var864 null-Bool)))
(declare-const var2368 var1955) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var2368 null-var1955)))
(declare-const var3490 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3490 null-Bool)))
(declare-const var3915 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3915 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3490 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1216 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var2494 (Array Int (Array Int Int)) var1216) ; Statement: r0 = $r54 
(define-const var3266 (Array Int (Array Int Int)) var1216) ; Statement: $r53 = $r54 
(define-const var615 var1000 (databaseTerm/1074764847 var3060)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2564 var3354 (var1000_getValue/1633538672 var615)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var119 var2059 var2059-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var2564 (cast-from-var2059-to-var3354 var119)))) ; Cond: $r4 != $r3 
(define-const var1918 (Array Int Int) var3182) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3266!1 (Array Int (Array Int Int)))
(assert (not (= var3266!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3266!1 0) var1918)) ; Statement: $r53[0] = $r55 
(define-const var3555 var1000 (databaseTerm/1074764847 var3060)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var2879 var3354 (var1000_getValue/1633538672 var3555)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var1852 var2059 var2059-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var2879 (cast-from-var2059-to-var3354 var1852))))) ; Negate: Cond: $r8 != $r7  
(define-const var2871 (Array Int Int) var3182) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var2494!1 (Array Int (Array Int Int)))
(assert (not (= var2494!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!1 1) var2871)) ; Statement: r0[1] = $r56 
(declare-const var2494!2 (Array Int (Array Int Int)))
(assert (not (= var2494!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!2 2) var2638)) ; Statement: r0[2] = r9 
(assert true)
(define-const var1871 (Array Int Int) (s2b/-450202684 var3060 var2694)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var2494!3 (Array Int (Array Int Int)))
(assert (not (= var2494!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!3 3) var1871)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2671 Int (getColumnType/800489773 var3060 var2654 var2399 var864 var3490)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3261 String (String_valueOf/1240665136 var2671)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var1581 (Array Int Int) (s2b/-450202684 var3060 var3261)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2494!4 (Array Int (Array Int Int)))
(assert (not (= var2494!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!4 4) var1581)) ; Statement: r0[4] = $r13 
(define-const var1686 var2673 (mysqlType/-289055874 var2368)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2279 var2673 var2673-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1686 var2279))) ; Cond: $r16 != $r15 
(define-const var2154 var2673 (mysqlType/-289055874 var2368)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var1344 Int (getJdbcType/389098195 var2154)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var283 Int (cast-from-Int-to-Int var1344)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var1309 String (Int_toString/-1770815874 var283)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var1255 (Array Int Int) (getBytes/1068683673 var1309)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var2494!5 (Array Int (Array Int Int)))
(assert (not (= var2494!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!5 5) var1255)) ; Statement: r0[5] = $r58 
(define-const var61 var2673 (mysqlType/-289055874 var2368)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var2925 String (getName/1307715079 var61)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var541 (Array Int Int) (s2b/-450202684 var3060 var2925)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var2494!6 (Array Int (Array Int Int)))
(assert (not (= var2494!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!6 6) var541)) ; Statement: r0[6] = $r61 
(define-const var1985 Int (datetimePrecision/-289055874 var2368)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var1985 null-Int))) ; Cond: $r62 != null 
(define-const var1307 Int (datetimePrecision/-289055874 var2368)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var698 String (toString/483301002 var1307)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3953 (Array Int Int) (s2b/-450202684 var3060 var698)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var2494!7 (Array Int (Array Int Int)))
(assert (not (= var2494!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!7 7) var3953)) ; Statement: r0[7] = $r63 
(define-const var1782 Int (columnSize/-289055874 var2368)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (= var1782 null-Int))) ; Cond: $r20 != null 
(define-const var219 Int (columnSize/-289055874 var2368)) ; Statement: $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert true)
(define-const var286 String (toString/483301002 var219)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3258 (Array Int Int) (s2b/-450202684 var3060 var286)) ; Statement: $r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22) 
(assert true) ; Non Conditional
(declare-const var2494!8 (Array Int (Array Int Int)))
(assert (not (= var2494!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!8 8) var3258)) ; Statement: r0[8] = $r64 
(define-const var217 Int (decimalDigits/-289055874 var2368)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (= var217 null-Int))) ; Cond: $r23 != null 
(define-const var1702 Int (decimalDigits/-289055874 var2368)) ; Statement: $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert true)
(define-const var1691 String (toString/483301002 var1702)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var144 (Array Int Int) (s2b/-450202684 var3060 var1691)) ; Statement: $r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25) 
(assert true) ; Non Conditional
(declare-const var2494!9 (Array Int (Array Int Int)))
(assert (not (= var2494!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!9 9) var144)) ; Statement: r0[9] = $r65 
(define-const var485 Int (numPrecRadix/-289055874 var2368)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var3352 String (Int_toString/1350422511 var485)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var1560 (Array Int Int) (s2b/-450202684 var3060 var3352)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var2494!10 (Array Int (Array Int Int)))
(assert (not (= var2494!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2494!10 10) var1560)) ; Statement: r0[10] = $r27 
(define-const var3347 Int (nullability/-289055874 var2368)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var3347 2)) (and (not (= var3347 1)) (and (not (= var3347 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var3495 String (var505_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var2400 var1634 (getExceptionInterceptor/-1244810802 var3060)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var603 var1785 (var3014_createSQLException/-1268047242 var3495 "S1000" var2400)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var1000_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var2059-to-var3354=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var505_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var3014_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2771=com.mysql.cj.jdbc.DatabaseMetaData, var3060=r1, var2638=r9, var3182=r5, var2694=r10, var3585=null_type, var2654=z1, var2399=z2, var864=z3, var1955=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var2368=r14, var3490=z0, var3915=i4, var1216=$r54, var2494=r0, var3266=$r53, var1000=com.mysql.cj.conf.RuntimeProperty, var615=$r2, var3354=java.lang.Object, var2564=$r4, var2059=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var119=$r3, var1918=$r55, var3555=$r6, var2879=$r8, var1852=$r7, var2871=$r56, var1871=$r11, var2671=$i0, var3261=$r12, var1581=$r13, var2673=com.mysql.cj.MysqlType, var1686=$r16, var2279=$r15, var2154=$r17, var1344=$i1, var283=$s5, var1309=$r57, var1255=$r58, var61=$r59, var2925=$r60, var541=$r61, var1985=$r62, var1307=$r18, var698=$r19, var3953=$r63, var1782=$r20, var219=$r21, var286=$r22, var3258=$r64, var217=$r23, var1702=$r24, var1691=$r25, var144=$r65, var485=$i2, var3352=$r26, var1560=$r27, var3347=$i3, var505=com.mysql.cj.Messages, var3495=$r49, var1634=com.mysql.cj.exceptions.ExceptionInterceptor, var2400=$r48, var1785=java.sql.SQLException, var3014=com.mysql.cj.jdbc.exceptions.SQLError, var603=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2771, r1=var3060, r9=var2638, r5=var3182, r10=var2694, null_type=var3585, z1=var2654, z2=var2399, z3=var864, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var1955, r14=var2368, z0=var3490, i4=var3915, $r54=var1216, r0=var2494, $r53=var3266, com.mysql.cj.conf.RuntimeProperty=var1000, $r2=var615, java.lang.Object=var3354, $r4=var2564, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var2059, $r3=var119, $r55=var1918, $r6=var3555, $r8=var2879, $r7=var1852, $r56=var2871, $r11=var1871, $i0=var2671, $r12=var3261, $r13=var1581, com.mysql.cj.MysqlType=var2673, $r16=var1686, $r15=var2279, $r17=var2154, $i1=var1344, $s5=var283, $r57=var1309, $r58=var1255, $r59=var61, $r60=var2925, $r61=var541, $r62=var1985, $r18=var1307, $r19=var698, $r63=var3953, $r20=var1782, $r21=var219, $r22=var286, $r64=var3258, $r23=var217, $r24=var1702, $r25=var1691, $r65=var144, $i2=var485, $r26=var3352, $r27=var1560, $i3=var3347, com.mysql.cj.Messages=var505, $r49=var3495, com.mysql.cj.exceptions.ExceptionInterceptor=var1634, $r48=var2400, java.sql.SQLException=var1785, com.mysql.cj.jdbc.exceptions.SQLError=var3014, $r50=var603}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r22 = virtualinvoke $r21.<java.lang.Integer: java.lang.String toString()>();	$r64 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r22);	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r25 = virtualinvoke $r24.<java.lang.Integer: java.lang.String toString()>();	$r65 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r25);	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16