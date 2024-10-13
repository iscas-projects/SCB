(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3364 0)
(declare-sort var1880 0)
(declare-sort var19 0)
(declare-sort var874 0)
(declare-sort var2387 0)
(declare-sort var2571 0)
(declare-sort var2047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2047!class ClassObject)
(declare-fun <init>/-279557996 (var19) void)
(declare-fun cast-from-var3364-to-var19 (var3364) var19)
(declare-fun var3364_getNormalizedAlgorithmName/-2139151165 (String) String)
(declare-fun algorithmIdentifier/1108554407 (var3364) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var19-init () (Array Int var19))
(declare-fun cast-from-String-to-var19 (String) var19)
(declare-fun var874_getString/1500902777 (String (Array Int var19)) String)
(declare-fun var2571_createException/361149092 (ClassObject String) var2387)
(declare-fun cast-from-var2387-to-var2047 (var2387) var2047)
(declare-const null-var3364 var3364)
(declare-const null-String String)
(declare-const null-__Array__Int__var19__ (Array Int var19))
(declare-const var750 var3364) ; Statement: r0 := @this: com.mysql.cj.protocol.x.CompressionAlgorithm 
(assert (not (= var750 null-var3364)))
(declare-const var3382 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3382 null-String)))
(declare-const var3557 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3557 null-String)))
(declare-const var2421 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2421 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3364-to-var19 var750))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var750!1 var3364)
(define-const var3775 String (var3364_getNormalizedAlgorithmName/-2139151165 var3382)) ; Statement: $r2 = staticinvoke <com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String getNormalizedAlgorithmName(java.lang.String)>(r1) 
(declare-const var750!2 var3364)
(assert (not (= var750!2 null-var3364)))
(assert (= (algorithmIdentifier/1108554407 var750!2) var3775)) ; Statement: r0.<com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String algorithmIdentifier> = $r2 
(define-const var1888 String (algorithmIdentifier/1108554407 var750!2)) ; Statement: $r3 = r0.<com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String algorithmIdentifier> 
(assert true)
(define-const var3578 (Array Int String) (split/-636890950 var1888 "_")) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("_") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1888 "_") i) (re.++ (re.* re.all) (str.to_re "_") (re.* re.all))))))
(define-const var2877 Int (getLength-Arr-String-1 var3578)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 == 2 goto $r5 = r4[1] 
(assert (not (= var2877 2))) ; Negate: Cond: $i0 == 2  
(define-const var2437 (Array Int var19) arr-var19-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var2437!1 (Array Int var19))
(assert (not (= var2437!1 null-__Array__Int__var19__)))
(assert (= (select var2437!1 0) (cast-from-String-to-var19 var3382))) ; Statement: $r13[0] = r1 
(define-const var406 String (var874_getString/1500902777 "Protocol.Compression.3" var2437!1)) ; Statement: $r14 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("Protocol.Compression.3", $r13) 
(define-const var320 var2387 (var2571_createException/361149092 var2047!class var406)) ; Statement: $r15 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r14) 
(define-const var975 var2047 (cast-from-var2387-to-var2047 var320)) ; Statement: $r16 = (com.mysql.cj.exceptions.WrongArgumentException) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3364-to-var19=([com.mysql.cj.protocol.x.CompressionAlgorithm], java.lang.Object), var3364_getNormalizedAlgorithmName/-2139151165=([java.lang.String], java.lang.String), algorithmIdentifier/1108554407=([com.mysql.cj.protocol.x.CompressionAlgorithm], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-var19-init=([], java.lang.Object[]), cast-from-String-to-var19=([java.lang.String], java.lang.Object), var874_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), var2571_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var2387-to-var2047=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3364=com.mysql.cj.protocol.x.CompressionAlgorithm, var750=r0, var3382=r1, var1880=null_type, var3557=r7, var2421=r10, var19=java.lang.Object, var3775=$r2, var1888=$r3, var3578=r4, var2877=$i0, var2437=$r13, var874=com.mysql.cj.Messages, var406=$r14, var2387=com.mysql.cj.exceptions.CJException, var2571=com.mysql.cj.exceptions.ExceptionFactory, var2047=com.mysql.cj.exceptions.WrongArgumentException, var320=$r15, var975=$r16}
; {com.mysql.cj.protocol.x.CompressionAlgorithm=var3364, r0=var750, r1=var3382, null_type=var1880, r7=var3557, r10=var2421, java.lang.Object=var19, $r2=var3775, $r3=var1888, r4=var3578, $i0=var2877, $r13=var2437, com.mysql.cj.Messages=var874, $r14=var406, com.mysql.cj.exceptions.CJException=var2387, com.mysql.cj.exceptions.ExceptionFactory=var2571, com.mysql.cj.exceptions.WrongArgumentException=var2047, $r15=var320, $r16=var975}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.x.CompressionAlgorithm;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = staticinvoke <com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String getNormalizedAlgorithmName(java.lang.String)>(r1);	r0.<com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String algorithmIdentifier> = $r2;	$r3 = r0.<com.mysql.cj.protocol.x.CompressionAlgorithm: java.lang.String algorithmIdentifier>;	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("_");	$i0 = lengthof r4;	if $i0 == 2 goto $r5 = r4[1];	$r13 = newarray (java.lang.Object)[1];	$r13[0] = r1;	$r14 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("Protocol.Compression.3", $r13);	$r15 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r14);	$r16 = (com.mysql.cj.exceptions.WrongArgumentException) $r15;	throw $r16
;block_num 2