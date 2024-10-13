(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var577 0)
(declare-sort var2480 0)
(declare-sort var2297 0)
(declare-sort var948 0)
(declare-sort var1377 0)
(declare-sort var144 0)
(declare-sort var2617 0)
(declare-sort var3939 0)
(declare-sort var3828 0)
(declare-sort var3586 0)
(declare-sort var199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun databaseTerm/1074764847 (var577) var948)
(declare-fun var948_getValue/1633538672 (var948) var1377)
(declare-fun cast-from-var144-to-var1377 (var144) var1377)
(declare-fun s2b/-450202684 (var577 String) (Array Int Int))
(declare-fun getColumnType/800489773 (var577 Bool Bool Bool Bool) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun mysqlType/-289055874 (var2297) var2617)
(declare-fun getJdbcType/389098195 (var2617) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toString/-1770815874 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getName/1307715079 (var2617) String)
(declare-fun datetimePrecision/-289055874 (var2297) Int)
(declare-fun toString/483301002 (Int) String)
(declare-fun columnSize/-289055874 (var2297) Int)
(declare-fun decimalDigits/-289055874 (var2297) Int)
(declare-fun numPrecRadix/-289055874 (var2297) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun nullability/-289055874 (var2297) Int)
(declare-fun var3939_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-1244810802 (var577) var3828)
(declare-fun var199_createSQLException/-1268047242 (String String var3828) var3586)
(declare-const null-var577 var577)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2297 var2297)
(declare-const null-Int Int)
(declare-const var144-SCHEMA var144)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var2617-YEAR var2617)
(declare-const var61 var577) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var61 null-var577)))
(declare-const var2884 (Array Int Int)) ; Statement: r9 := @parameter0: byte[] 
(assert (not (= var2884 null-__Array__Int__Int__)))
(declare-const var318 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var318 null-__Array__Int__Int__)))
(declare-const var2890 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2890 null-String)))
(declare-const var74 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var74 null-Bool)))
(declare-const var3956 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3956 null-Bool)))
(declare-const var3757 Bool) ; Statement: z3 := @parameter5: boolean 
(assert (not (= var3757 null-Bool)))
(declare-const var1215 var2297) ; Statement: r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor 
(assert (not (= var1215 null-var2297)))
(declare-const var3418 Bool) ; Statement: z0 := @parameter7: boolean 
(assert (not (= var3418 null-Bool)))
(declare-const var3414 Int) ; Statement: i4 := @parameter8: int 
(assert (not (= var3414 null-Int)))
 ; Statement: if z0 == 0 goto $r54 = newarray (byte[])[20] 
(assert (not (= (ite var3418 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3533 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r54 = newarray (byte[])[17] 
 ; Statement: goto [?= r0 = $r54] 
(assert true) ; Non Conditional
(define-const var1995 (Array Int (Array Int Int)) var3533) ; Statement: r0 = $r54 
(define-const var3129 (Array Int (Array Int Int)) var3533) ; Statement: $r53 = $r54 
(define-const var2836 var948 (databaseTerm/1074764847 var61)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var3612 var1377 (var948_getValue/1633538672 var2836)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var196 var144 var144-SCHEMA) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r4 != $r3 goto $r55 = r5 
(assert (not (= var3612 (cast-from-var144-to-var1377 var196)))) ; Cond: $r4 != $r3 
(define-const var697 (Array Int Int) var318) ; Statement: $r55 = r5 
(assert true) ; Non Conditional
(declare-const var3129!1 (Array Int (Array Int Int)))
(assert (not (= var3129!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3129!1 0) var697)) ; Statement: $r53[0] = $r55 
(define-const var1911 var948 (databaseTerm/1074764847 var61)) ; Statement: $r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm> 
(define-const var1267 var1377 (var948_getValue/1633538672 var1911)) ; Statement: $r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var887 var144 var144-SCHEMA) ; Statement: $r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA> 
 ; Statement: if $r8 != $r7 goto $r56 = null 
(assert (not (not (= var1267 (cast-from-var144-to-var1377 var887))))) ; Negate: Cond: $r8 != $r7  
(define-const var3778 (Array Int Int) var318) ; Statement: $r56 = r5 
 ; Statement: goto [?= r0[1] = $r56] 
(assert true) ; Non Conditional
(declare-const var1995!1 (Array Int (Array Int Int)))
(assert (not (= var1995!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!1 1) var3778)) ; Statement: r0[1] = $r56 
(declare-const var1995!2 (Array Int (Array Int Int)))
(assert (not (= var1995!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!2 2) var2884)) ; Statement: r0[2] = r9 
(assert true)
(define-const var2321 (Array Int Int) (s2b/-450202684 var61 var2890)) ; Statement: $r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10) 
(declare-const var1995!3 (Array Int (Array Int Int)))
(assert (not (= var1995!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!3 3) var2321)) ; Statement: r0[3] = $r11 
(assert true)
(define-const var2626 Int (getColumnType/800489773 var61 var74 var3956 var3757 var3418)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0) 
(define-const var3760 String (String_valueOf/1240665136 var2626)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
(define-const var266 (Array Int Int) (s2b/-450202684 var61 var3760)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var1995!4 (Array Int (Array Int Int)))
(assert (not (= var1995!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!4 4) var266)) ; Statement: r0[4] = $r13 
(define-const var1365 var2617 (mysqlType/-289055874 var1215)) ; Statement: $r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(define-const var2469 var2617 var2617-YEAR) ; Statement: $r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert (not (= var1365 var2469))) ; Cond: $r16 != $r15 
(define-const var2267 var2617 (mysqlType/-289055874 var1215)) ; Statement: $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3643 Int (getJdbcType/389098195 var2267)) ; Statement: $i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(define-const var3296 Int (cast-from-Int-to-Int var3643)) ; Statement: $s5 = (short) $i1 
(assert true) ; Non Conditional
(define-const var681 String (Int_toString/-1770815874 var3296)) ; Statement: $r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5) 
(assert true)
(define-const var957 (Array Int Int) (getBytes/1068683673 var681)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>() 
(declare-const var1995!5 (Array Int (Array Int Int)))
(assert (not (= var1995!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!5 5) var957)) ; Statement: r0[5] = $r58 
(define-const var793 var2617 (mysqlType/-289055874 var1215)) ; Statement: $r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType> 
(assert true)
(define-const var3516 String (getName/1307715079 var793)) ; Statement: $r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var2108 (Array Int Int) (s2b/-450202684 var61 var3516)) ; Statement: $r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60) 
(declare-const var1995!6 (Array Int (Array Int Int)))
(assert (not (= var1995!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!6 6) var2108)) ; Statement: r0[6] = $r61 
(define-const var3182 Int (datetimePrecision/-289055874 var1215)) ; Statement: $r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
 ; Statement: if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert (not (= var3182 null-Int))) ; Cond: $r62 != null 
(define-const var385 Int (datetimePrecision/-289055874 var1215)) ; Statement: $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision> 
(assert true)
(define-const var2571 String (toString/483301002 var385)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>() 
(assert true)
(define-const var3964 (Array Int Int) (s2b/-450202684 var61 var2571)) ; Statement: $r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19) 
(assert true) ; Non Conditional
(declare-const var1995!7 (Array Int (Array Int Int)))
(assert (not (= var1995!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!7 7) var3964)) ; Statement: r0[7] = $r63 
(define-const var1441 Int (columnSize/-289055874 var1215)) ; Statement: $r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
 ; Statement: if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize> 
(assert (not (not (= var1441 null-Int)))) ; Negate: Cond: $r20 != null  
(define-const var3527 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r64 = null 
 ; Statement: goto [?= r0[8] = $r64] 
(assert true) ; Non Conditional
(declare-const var1995!8 (Array Int (Array Int Int)))
(assert (not (= var1995!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!8 8) var3527)) ; Statement: r0[8] = $r64 
(define-const var3699 Int (decimalDigits/-289055874 var1215)) ; Statement: $r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
 ; Statement: if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits> 
(assert (not (not (= var3699 null-Int)))) ; Negate: Cond: $r23 != null  
(define-const var3969 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r65 = null 
 ; Statement: goto [?= r0[9] = $r65] 
(assert true) ; Non Conditional
(declare-const var1995!9 (Array Int (Array Int Int)))
(assert (not (= var1995!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!9 9) var3969)) ; Statement: r0[9] = $r65 
(define-const var1486 Int (numPrecRadix/-289055874 var1215)) ; Statement: $i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix> 
(define-const var2323 String (Int_toString/1350422511 var1486)) ; Statement: $r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2) 
(assert true)
(define-const var3120 (Array Int Int) (s2b/-450202684 var61 var2323)) ; Statement: $r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26) 
(declare-const var1995!10 (Array Int (Array Int Int)))
(assert (not (= var1995!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1995!10 10) var3120)) ; Statement: r0[10] = $r27 
(define-const var1402 Int (nullability/-289055874 var1215)) ; Statement: $i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability> 
 ; Statement: tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); } 
(assert (and (not (= var1402 2)) (and (not (= var1402 1)) (and (not (= var1402 0)) true)))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Intersect: Negate: Cond: $i3 == 0   and Non Conditional   
(define-const var776 String (var3939_getString/-1547297038 "DatabaseMetaData.1")) ; Statement: $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1") 
(assert true)
(define-const var3302 var3828 (getExceptionInterceptor/-1244810802 var61)) ; Statement: $r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1838 var3586 (var199_createSQLException/-1268047242 var776 "S1000" var3302)) ; Statement: $r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48) 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), databaseTerm/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.conf.RuntimeProperty), var948_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var144-to-var1377=([com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm], java.lang.Object), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getColumnType/800489773=([com.mysql.cj.jdbc.DatabaseMetaData, boolean, boolean, boolean, boolean], int), String_valueOf/1240665136=([int], java.lang.String), mysqlType/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], com.mysql.cj.MysqlType), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), cast-from-Int-to-Int=([int], short), Int_toString/-1770815874=([short], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String), datetimePrecision/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), toString/483301002=([java.lang.Integer], java.lang.String), columnSize/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), decimalDigits/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], java.lang.Integer), numPrecRadix/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), Int_toString/1350422511=([int], java.lang.String), nullability/-289055874=([com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor], int), var3939_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), var199_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var577=com.mysql.cj.jdbc.DatabaseMetaData, var61=r1, var2884=r9, var318=r5, var2890=r10, var2480=null_type, var74=z1, var3956=z2, var3757=z3, var2297=com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor, var1215=r14, var3418=z0, var3414=i4, var3533=$r54, var1995=r0, var3129=$r53, var948=com.mysql.cj.conf.RuntimeProperty, var2836=$r2, var1377=java.lang.Object, var3612=$r4, var144=com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm, var196=$r3, var697=$r55, var1911=$r6, var1267=$r8, var887=$r7, var3778=$r56, var2321=$r11, var2626=$i0, var3760=$r12, var266=$r13, var2617=com.mysql.cj.MysqlType, var1365=$r16, var2469=$r15, var2267=$r17, var3643=$i1, var3296=$s5, var681=$r57, var957=$r58, var793=$r59, var3516=$r60, var2108=$r61, var3182=$r62, var385=$r18, var2571=$r19, var3964=$r63, var1441=$r20, var3527=$r64, var3699=$r23, var3969=$r65, var1486=$i2, var2323=$r26, var3120=$r27, var1402=$i3, var3939=com.mysql.cj.Messages, var776=$r49, var3828=com.mysql.cj.exceptions.ExceptionInterceptor, var3302=$r48, var3586=java.sql.SQLException, var199=com.mysql.cj.jdbc.exceptions.SQLError, var1838=$r50}
; {com.mysql.cj.jdbc.DatabaseMetaData=var577, r1=var61, r9=var2884, r5=var318, r10=var2890, null_type=var2480, z1=var74, z2=var3956, z3=var3757, com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor=var2297, r14=var1215, z0=var3418, i4=var3414, $r54=var3533, r0=var1995, $r53=var3129, com.mysql.cj.conf.RuntimeProperty=var948, $r2=var2836, java.lang.Object=var1377, $r4=var3612, com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm=var144, $r3=var196, $r55=var697, $r6=var1911, $r8=var1267, $r7=var887, $r56=var3778, $r11=var2321, $i0=var2626, $r12=var3760, $r13=var266, com.mysql.cj.MysqlType=var2617, $r16=var1365, $r15=var2469, $r17=var2267, $i1=var3643, $s5=var3296, $r57=var681, $r58=var957, $r59=var793, $r60=var3516, $r61=var2108, $r62=var3182, $r18=var385, $r19=var2571, $r63=var3964, $r20=var1441, $r64=var3527, $r23=var3699, $r65=var3969, $i2=var1486, $r26=var2323, $r27=var3120, $i3=var1402, com.mysql.cj.Messages=var3939, $r49=var776, com.mysql.cj.exceptions.ExceptionInterceptor=var3828, $r48=var3302, java.sql.SQLException=var3586, com.mysql.cj.jdbc.exceptions.SQLError=var199, $r50=var1838}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.Short: java.lang.String toString(short)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r9 := @parameter0: byte[];	r5 := @parameter1: byte[];	r10 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	z3 := @parameter5: boolean;	r14 := @parameter6: com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor;	z0 := @parameter7: boolean;	i4 := @parameter8: int;	if z0 == 0 goto $r54 = newarray (byte[])[20];	$r54 = newarray (byte[])[17];	goto [?= r0 = $r54];	r0 = $r54;	$r53 = $r54;	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r4 != $r3 goto $r55 = r5;	$r55 = r5;	$r53[0] = $r55;	$r6 = r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.conf.RuntimeProperty databaseTerm>;	$r8 = interfaceinvoke $r6.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	$r7 = <com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm: com.mysql.cj.conf.PropertyDefinitions$DatabaseTerm SCHEMA>;	if $r8 != $r7 goto $r56 = null;	$r56 = r5;	goto [?= r0[1] = $r56];	r0[1] = $r56;	r0[2] = r9;	$r11 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r10);	r0[3] = $r11;	$i0 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: int getColumnType(boolean,boolean,boolean,boolean)>(z1, z2, z3, z0);	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	$r13 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r0[4] = $r13;	$r16 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r15 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if $r16 != $r15 goto $r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r17 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$i1 = virtualinvoke $r17.<com.mysql.cj.MysqlType: int getJdbcType()>();	$s5 = (short) $i1;	$r57 = staticinvoke <java.lang.Short: java.lang.String toString(short)>($s5);	$r58 = virtualinvoke $r57.<java.lang.String: byte[] getBytes()>();	r0[5] = $r58;	$r59 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: com.mysql.cj.MysqlType mysqlType>;	$r60 = virtualinvoke $r59.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r61 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r60);	r0[6] = $r61;	$r62 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	if $r62 != null goto $r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r18 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer datetimePrecision>;	$r19 = virtualinvoke $r18.<java.lang.Integer: java.lang.String toString()>();	$r63 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r19);	r0[7] = $r63;	$r20 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	if $r20 != null goto $r21 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer columnSize>;	$r64 = null;	goto [?= r0[8] = $r64];	r0[8] = $r64;	$r23 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	if $r23 != null goto $r24 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: java.lang.Integer decimalDigits>;	$r65 = null;	goto [?= r0[9] = $r65];	r0[9] = $r65;	$i2 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int numPrecRadix>;	$r26 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i2);	$r27 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r26);	r0[10] = $r27;	$i3 = r14.<com.mysql.cj.jdbc.DatabaseMetaData$TypeDescriptor: int nullability>;	tableswitch($i3) {     case 0: goto $r46 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(0);     case 1: goto $r44 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(1);     case 2: goto $r28 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(2);     default: goto $r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1"); };	$r49 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("DatabaseMetaData.1");	$r48 = virtualinvoke r1.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r50 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r49, "S1000", $r48);	throw $r50
;block_num 16