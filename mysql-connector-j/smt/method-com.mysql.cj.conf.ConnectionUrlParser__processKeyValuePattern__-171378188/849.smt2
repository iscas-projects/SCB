(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var2970 0)
(declare-sort var3659 0)
(declare-sort var3193 0)
(declare-sort var877 0)
(declare-sort var371 0)
(declare-sort var814 0)
(declare-sort var2761 0)
(declare-sort var3265 0)
(declare-sort var2522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2522!class ClassObject)
(declare-fun matcher/468719934 (var2970 String) var3193)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var877-init () var877)
(declare-fun <init>/-201242697 (var877) void)
(declare-fun find/1809080823 (var3193) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-var371-init () (Array Int var371))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun cast-from-String-to-var371 (String) var371)
(declare-fun var814_getString/1500902777 (String (Array Int var371)) String)
(declare-fun var3265_createException/361149092 (ClassObject String) var2761)
(declare-fun cast-from-var2761-to-var2522 (var2761) var2522)
(declare-const null-var76 var76)
(declare-const null-var2970 var2970)
(declare-const null-String String)
(declare-const null-__Array__Int__var371__ (Array Int var371))
(declare-const var1328 var76) ; Statement: r25 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var1328 null-var76)))
(declare-const var1003 var2970) ; Statement: r0 := @parameter0: java.util.regex.Pattern 
(assert (not (= var1003 null-var2970)))
(declare-const var1236 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1236 null-String)))
(assert true)
(define-const var3470 var3193 (matcher/468719934 var1003 (cast-from-String-to-String var1236))) ; Statement: r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(define-const var1339 Int 0) ; Statement: i2 = 0 
(define-const var3536 var877 var877-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3536)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var3536!1 var877)
(assert true) ; Non Conditional
(assert true)
(define-const var3435 Bool (find/1809080823 var3470)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var3435 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1429 Int (length/-134980193 var1236)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 == $i0 goto return $r3 
(assert (not (= var1339 var1429))) ; Negate: Cond: i2 == $i0  
(define-const var3881 (Array Int var371) arr-var371-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(assert (and true (and (>= var1339 0) (>= (str.len var1236) var1339))))
(define-const var1141 String (substring/850833817 var1236 var1339)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(declare-const var3881!1 (Array Int var371))
(assert (not (= var3881!1 null-__Array__Int__var371__)))
(assert (= (select var3881!1 0) (cast-from-String-to-var371 var1141))) ; Statement: $r4[0] = $r5 
(define-const var890 String (var814_getString/1500902777 "ConnectionString.4" var3881!1)) ; Statement: $r6 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionString.4", $r4) 
(define-const var1122 var2761 (var3265_createException/361149092 var2522!class var890)) ; Statement: $r7 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r6) 
(define-const var58 var2522 (cast-from-var2761-to-var2522 var1122)) ; Statement: $r8 = (com.mysql.cj.exceptions.WrongArgumentException) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var877-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), find/1809080823=([java.util.regex.Matcher], boolean), length/-134980193=([java.lang.String], int), arr-var371-init=([], java.lang.Object[]), substring/850833817=([java.lang.String, int], java.lang.String), cast-from-String-to-var371=([java.lang.String], java.lang.Object), var814_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), var3265_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var2761-to-var2522=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var76=com.mysql.cj.conf.ConnectionUrlParser, var1328=r25, var2970=java.util.regex.Pattern, var1003=r0, var1236=r1, var3659=null_type, var3193=java.util.regex.Matcher, var3470=r2, var1339=i2, var877=java.util.HashMap, var3536=$r3, var3435=$z0, var1429=$i0, var371=java.lang.Object, var3881=$r4, var1141=$r5, var814=com.mysql.cj.Messages, var890=$r6, var2761=com.mysql.cj.exceptions.CJException, var3265=com.mysql.cj.exceptions.ExceptionFactory, var2522=com.mysql.cj.exceptions.WrongArgumentException, var1122=$r7, var58=$r8}
; {com.mysql.cj.conf.ConnectionUrlParser=var76, r25=var1328, java.util.regex.Pattern=var2970, r0=var1003, r1=var1236, null_type=var3659, java.util.regex.Matcher=var3193, r2=var3470, i2=var1339, java.util.HashMap=var877, $r3=var3536, $z0=var3435, $i0=var1429, java.lang.Object=var371, $r4=var3881, $r5=var1141, com.mysql.cj.Messages=var814, $r6=var890, com.mysql.cj.exceptions.CJException=var2761, com.mysql.cj.exceptions.ExceptionFactory=var3265, com.mysql.cj.exceptions.WrongArgumentException=var2522, $r7=var1122, $r8=var58}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r25 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r0 := @parameter0: java.util.regex.Pattern;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	i2 = 0;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 == $i0 goto return $r3;	$r4 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r4[0] = $r5;	$r6 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionString.4", $r4);	$r7 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r6);	$r8 = (com.mysql.cj.exceptions.WrongArgumentException) $r7;	throw $r8
;block_num 4