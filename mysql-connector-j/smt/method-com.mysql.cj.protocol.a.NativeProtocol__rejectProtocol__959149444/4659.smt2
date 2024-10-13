(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var1625 0)
(declare-sort var3136 0)
(declare-sort var3951 0)
(declare-sort var5 0)
(declare-sort var3488 0)
(declare-sort var2887 0)
(declare-sort var99 0)
(declare-sort var1671 0)
(declare-sort var3507 0)
(declare-sort var2925 0)
(declare-sort var336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setPosition/1704955583 (var1625 Int) void)
(declare-fun readInteger/1930851926 (var1625 var3951) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun var3488_getString/-1547297038 (String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2887_mysqlToSqlstate/-1288803949 (Int) String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2887_get/-171766187 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getExceptionInterceptor/-547534533 (var1671) var99)
(declare-fun cast-from-var1387-to-var1671 (var1387) var1671)
(declare-fun var2925_createException/-1561813846 (String String Int Bool var336 var99) var3507)
(declare-const null-var1387 var1387)
(declare-const null-var1625 var1625)
(declare-const null-var3136 var3136)
(declare-const var3951-INT2 var3951)
(declare-const var5-STRING_TERM var5)
(declare-const null-var336 var336)
(declare-const var3592 var1387) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var3592 null-var1387)))
(declare-const var193 var1625) ; Statement: r3 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var193 null-var1625)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1444 var3136) ; Statement: $r19 := @caughtexception 
(assert (not (= var1444 null-var3136)))
(assert true) ; Non Conditional
(assert true)
;(assert (setPosition/1704955583 var193 1)) ; Statement: virtualinvoke r3.<com.mysql.cj.protocol.a.NativePacketPayload: void setPosition(int)>(1) 

(declare-const var193!1 var1625)
(declare-const var1316 Int)
(define-const var1494 var3951 var3951-INT2) ; Statement: $r4 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2> 
(assert true)
(define-const var3186 Int (readInteger/1930851926 var193!1 var1494)) ; Statement: $l0 = virtualinvoke r3.<com.mysql.cj.protocol.a.NativePacketPayload: long readInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType)>($r4) 
(define-const var1090 Int (cast-from-Int-to-Int var3186)) ; Statement: $i1 = (int) $l0 
(define-const var1164 String "") ; Statement: r20 = "" 
(define-const var3254 var5 var5-STRING_TERM) ; Statement: $r5 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var792 var3136) ; Statement: $r17 := @caughtexception 
(assert (not (= var792 null-var3136)))
(assert true) ; Non Conditional
(define-const var343 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(define-const var2092 String (var3488_getString/-1547297038 "Protocol.0")) ; Statement: $r7 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Protocol.0") 
(assert true)
;(assert (<init>/-1061048412 var343 var2092)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7) 
(declare-const var343!1 String)
(assert (= var343!1 var2092))
(assert true)
;(assert (append/672562846 var343!1 var1164)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var343!2 String)
(assert (= var343!2 (str.++ var343!1 var1164)))
(assert true)
;(assert (append/672562846 var343!2 "\u0022")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var343!3 String)
(assert (= var343!3 (str.++ var343!2 "\u0022")))
(define-const var3627 String (var2887_mysqlToSqlstate/-1288803949 var1090)) ; Statement: $r18 = staticinvoke <com.mysql.cj.exceptions.MysqlErrorNumbers: java.lang.String mysqlToSqlstate(int)>($i1) 
(define-const var3437 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3437)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3437!1 String)
(assert (= var3437!1 ""))
(define-const var2290 String (var2887_get/-171766187 var3627)) ; Statement: $r9 = staticinvoke <com.mysql.cj.exceptions.MysqlErrorNumbers: java.lang.String get(java.lang.String)>($r18) 
(assert true)
(define-const var3589 String (append/672562846 var3437!1 var2290)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3437!2 String)
(assert (= var3437!2 (str.++ var3437!1 var2290)))
(assert true)
(define-const var1921 String (append/672562846 var3589 ", ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3589!1 String)
(assert (= var3589!1 (str.++ var3589 ", ")))
(assert true)
(define-const var353 String (toString/-2075883882 var343!3)) ; Statement: $r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1224 String (append/672562846 var1921 var353)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1921!1 String)
(assert (= var1921!1 (str.++ var1921 var353)))
(assert true)
(define-const var809 String (toString/-2075883882 var1224)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2247 var99 (getExceptionInterceptor/-547534533 (cast-from-var1387-to-var1671 var3592))) ; Statement: $r14 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1495 var3507 (var2925_createException/-1561813846 var809 var3627 var1090 (ite (= 1 0) true false) null-var336 var2247)) ; Statement: $r16 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r15, $r18, $i1, 0, null, $r14) 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {setPosition/1704955583=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), readInteger/1930851926=([com.mysql.cj.protocol.a.NativePacketPayload, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType], long), cast-from-Int-to-Int=([long], int), String-init=([], java.lang.StringBuilder), var3488_getString/-1547297038=([java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2887_mysqlToSqlstate/-1288803949=([int], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), var2887_get/-171766187=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getExceptionInterceptor/-547534533=([com.mysql.cj.protocol.AbstractProtocol], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var1387-to-var1671=([com.mysql.cj.protocol.a.NativeProtocol], com.mysql.cj.protocol.AbstractProtocol), var2925_createException/-1561813846=([java.lang.String, java.lang.String, int, boolean, java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var1387=com.mysql.cj.protocol.a.NativeProtocol, var3592=r0, var1625=com.mysql.cj.protocol.a.NativePacketPayload, var193=r3, var3136=java.lang.Exception, var1444=$r19, var1316=1, var3951=com.mysql.cj.protocol.a.NativeConstants$IntegerDataType, var1494=$r4, var3186=$l0, var1090=$i1, var1164=r20, var5=com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType, var3254=$r5, var792=$r17, var343=$r6, var3488=com.mysql.cj.Messages, var2092=$r7, var2887=com.mysql.cj.exceptions.MysqlErrorNumbers, var3627=$r18, var3437=$r8, var2290=$r9, var3589=$r10, var1921=$r12, var353=$r11, var1224=$r13, var809=$r15, var99=com.mysql.cj.exceptions.ExceptionInterceptor, var1671=com.mysql.cj.protocol.AbstractProtocol, var2247=$r14, var3507=com.mysql.cj.exceptions.CJException, var2925=com.mysql.cj.exceptions.ExceptionFactory, var336=java.lang.Throwable, var1495=$r16}
; {com.mysql.cj.protocol.a.NativeProtocol=var1387, r0=var3592, com.mysql.cj.protocol.a.NativePacketPayload=var1625, r3=var193, java.lang.Exception=var3136, $r19=var1444, 1=var1316, com.mysql.cj.protocol.a.NativeConstants$IntegerDataType=var3951, $r4=var1494, $l0=var3186, $i1=var1090, r20=var1164, com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType=var5, $r5=var3254, $r17=var792, $r6=var343, com.mysql.cj.Messages=var3488, $r7=var2092, com.mysql.cj.exceptions.MysqlErrorNumbers=var2887, $r18=var3627, $r8=var3437, $r9=var2290, $r10=var3589, $r12=var1921, $r11=var353, $r13=var1224, $r15=var809, com.mysql.cj.exceptions.ExceptionInterceptor=var99, com.mysql.cj.protocol.AbstractProtocol=var1671, $r14=var2247, com.mysql.cj.exceptions.CJException=var3507, com.mysql.cj.exceptions.ExceptionFactory=var2925, java.lang.Throwable=var336, $r16=var1495}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r3 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	$r19 := @caughtexception;	virtualinvoke r3.<com.mysql.cj.protocol.a.NativePacketPayload: void setPosition(int)>(1);	$r4 = <com.mysql.cj.protocol.a.NativeConstants$IntegerDataType: com.mysql.cj.protocol.a.NativeConstants$IntegerDataType INT2>;	$l0 = virtualinvoke r3.<com.mysql.cj.protocol.a.NativePacketPayload: long readInteger(com.mysql.cj.protocol.a.NativeConstants$IntegerDataType)>($r4);	$i1 = (int) $l0;	r20 = "";	$r5 = <com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType: com.mysql.cj.protocol.a.NativeConstants$StringSelfDataType STRING_TERM>;	$r17 := @caughtexception;	$r6 = new java.lang.StringBuilder;	$r7 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Protocol.0");	specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r18 = staticinvoke <com.mysql.cj.exceptions.MysqlErrorNumbers: java.lang.String mysqlToSqlstate(int)>($i1);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = staticinvoke <com.mysql.cj.exceptions.MysqlErrorNumbers: java.lang.String get(java.lang.String)>($r18);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r16 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r15, $r18, $i1, 0, null, $r14);	throw $r16
;block_num 5