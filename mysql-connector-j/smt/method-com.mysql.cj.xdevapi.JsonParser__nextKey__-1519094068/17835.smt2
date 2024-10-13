(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3020 0)
(declare-sort var3762 0)
(declare-sort var3692 0)
(declare-sort var1351 0)
(declare-sort var878 0)
(declare-sort var2108 0)
(declare-sort var220 0)
(declare-sort var2844 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2253!class ClassObject)
(declare-fun mark/422674531 (var3020 Int) void)
(declare-fun var3692_parseString/1690285217 (var3020) var3762)
(declare-fun read/-959402780 (var3020) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun CHAR/1789999486 (var1351) Int)
(declare-fun getString/1135773839 (var3762) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun var878_getString/1500902777 (String (Array Int var2108)) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2108__ ((Array Int String)) (Array Int var2108))
(declare-fun var2844_createException/361149092 (ClassObject String) var220)
(declare-fun cast-from-var220-to-var2253 (var220) var2253)
(declare-const null-var3020 var3020)
(declare-const null-var3762 var3762)
(declare-const var1351-COLON var1351)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var525 var3020) ; Statement: r0 := @parameter0: java.io.StringReader 
(assert (not (= var525 null-var3020)))
(assert true)
;(assert (mark/422674531 var525 1)) ; Statement: virtualinvoke r0.<java.io.StringReader: void mark(int)>(1) 

(declare-const var525!1 var3020)
(declare-const var3586 Int)
(define-const var3057 var3762 (var3692_parseString/1690285217 var525!1)) ; Statement: r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0) 
 ; Statement: if r1 != null goto c3 = 32 
(assert (not (= var3057 null-var3762))) ; Cond: r1 != null 
(define-const var2676 Int 32) ; Statement: c3 = 32 
(assert true) ; Non Conditional
(assert true)
(define-const var1045 Int (read/-959402780 var525!1)) ; Statement: $i4 = virtualinvoke r0.<java.io.StringReader: int read()>() 
(define-const var3411 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(assert (= var1045 var3411)) ; Cond: $i4 == $i7 
(define-const var3781 var1351 var1351-COLON) ; Statement: $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(define-const var1064 Int (CHAR/1789999486 var3781)) ; Statement: $c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR> 
(define-const var1347 Int (cast-from-Int-to-Int var1064)) ; Statement: $i10 = (int) $c5 
 ; Statement: if c3 == $i10 goto (branch) 
(assert (not (= var2676 var1347))) ; Negate: Cond: c3 == $i10  
 ; Statement: if r1 == null goto (branch) 
(assert (not (= var3057 null-var3762))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var458 String (getString/1135773839 var3057)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>() 
(assert true)
(define-const var1588 Int (length/-134980193 var458)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (not (<= var1588 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2838 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[1] 
(assert true)
(define-const var2224 String (getString/1135773839 var3057)) ; Statement: $r4 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>() 
(declare-const var2838!1 (Array Int String))
(assert (not (= var2838!1 null-__Array__Int__String__)))
(assert (= (select var2838!1 0) var2224)) ; Statement: $r3[0] = $r4 
(define-const var2427 String (var878_getString/1500902777 "JsonParser.4" (cast-from-__Array__Int__String__-to-__Array__Int__var2108__ var2838!1))) ; Statement: $r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("JsonParser.4", $r3) 
(define-const var3882 var220 (var2844_createException/361149092 var2253!class var2427)) ; Statement: $r6 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r5) 
(define-const var397 var2253 (cast-from-var220-to-var2253 var3882)) ; Statement: $r7 = (com.mysql.cj.exceptions.WrongArgumentException) $r6 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {mark/422674531=([java.io.StringReader, int], void), var3692_parseString/1690285217=([java.io.StringReader], com.mysql.cj.xdevapi.JsonString), read/-959402780=([java.io.StringReader], int), cast-from-Int-to-Int=([int], int), CHAR/1789999486=([com.mysql.cj.xdevapi.JsonParser$StructuralToken], char), getString/1135773839=([com.mysql.cj.xdevapi.JsonString], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var878_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var2108__=([java.lang.String[]], java.lang.Object[]), var2844_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var220-to-var2253=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3020=java.io.StringReader, var525=r0, var3586=1, var3762=com.mysql.cj.xdevapi.JsonString, var3692=com.mysql.cj.xdevapi.JsonParser, var3057=r1, var2676=c3, var1045=$i4, var3411=$i7, var1351=com.mysql.cj.xdevapi.JsonParser$StructuralToken, var3781=$r17, var1064=$c5, var1347=$i10, var458=$r2, var1588=$i0, var2838=$r3, var2224=$r4, var878=com.mysql.cj.Messages, var2108=java.lang.Object, var2427=$r5, var220=com.mysql.cj.exceptions.CJException, var2844=com.mysql.cj.exceptions.ExceptionFactory, var2253=com.mysql.cj.exceptions.WrongArgumentException, var3882=$r6, var397=$r7}
; {java.io.StringReader=var3020, r0=var525, 1=var3586, com.mysql.cj.xdevapi.JsonString=var3762, com.mysql.cj.xdevapi.JsonParser=var3692, r1=var3057, c3=var2676, $i4=var1045, $i7=var3411, com.mysql.cj.xdevapi.JsonParser$StructuralToken=var1351, $r17=var3781, $c5=var1064, $i10=var1347, $r2=var458, $i0=var1588, $r3=var2838, $r4=var2224, com.mysql.cj.Messages=var878, java.lang.Object=var2108, $r5=var2427, com.mysql.cj.exceptions.CJException=var220, com.mysql.cj.exceptions.ExceptionFactory=var2844, com.mysql.cj.exceptions.WrongArgumentException=var2253, $r6=var3882, $r7=var397}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.io.StringReader;	virtualinvoke r0.<java.io.StringReader: void mark(int)>(1);	r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0);	if r1 != null goto c3 = 32;	c3 = 32;	$i4 = virtualinvoke r0.<java.io.StringReader: int read()>();	$i7 = (int) -1;	if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR>;	$i10 = (int) $c5;	if c3 == $i10 goto (branch);	if r1 == null goto (branch);	$r2 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 <= 0 goto (branch);	$r3 = newarray (java.lang.String)[1];	$r4 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>();	$r3[0] = $r4;	$r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("JsonParser.4", $r3);	$r6 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r5);	$r7 = (com.mysql.cj.exceptions.WrongArgumentException) $r6;	throw $r7
;block_num 7