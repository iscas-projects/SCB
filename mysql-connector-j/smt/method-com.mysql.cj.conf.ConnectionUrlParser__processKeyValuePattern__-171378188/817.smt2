(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var50 0)
(declare-sort var3593 0)
(declare-sort var2606 0)
(declare-sort var957 0)
(declare-sort var2435 0)
(declare-sort var744 0)
(declare-sort var2632 0)
(declare-sort var2651 0)
(declare-sort var1338 0)
(declare-sort var729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var729!class ClassObject)
(declare-fun matcher/468719934 (var3593 String) var957)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2435-init () var2435)
(declare-fun <init>/-201242697 (var2435) void)
(declare-fun find/1809080823 (var957) Bool)
(declare-fun start/-526965311 (var957) Int)
(declare-fun arr-var744-init () (Array Int var744))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun cast-from-String-to-var744 (String) var744)
(declare-fun var2632_getString/1500902777 (String (Array Int var744)) String)
(declare-fun var1338_createException/361149092 (ClassObject String) var2651)
(declare-fun cast-from-var2651-to-var729 (var2651) var729)
(declare-const null-var50 var50)
(declare-const null-var3593 var3593)
(declare-const null-String String)
(declare-const null-__Array__Int__var744__ (Array Int var744))
(declare-const var2007 var50) ; Statement: r25 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var2007 null-var50)))
(declare-const var1712 var3593) ; Statement: r0 := @parameter0: java.util.regex.Pattern 
(assert (not (= var1712 null-var3593)))
(declare-const var3478 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3478 null-String)))
(assert true)
(define-const var1704 var957 (matcher/468719934 var1712 (cast-from-String-to-String var3478))) ; Statement: r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(define-const var1357 Int 0) ; Statement: i2 = 0 
(define-const var2195 var2435 var2435-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2195)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var2195!1 var2435)
(assert true) ; Non Conditional
(assert true)
(define-const var1071 Bool (find/1809080823 var1704)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var1071 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var165 Int (start/-526965311 var1704)) ; Statement: $i1 = virtualinvoke r2.<java.util.regex.Matcher: int start()>() 
 ; Statement: if $i1 == i2 goto $r9 = virtualinvoke r2.<java.util.regex.Matcher: java.lang.String group(java.lang.String)>("key") 
(assert (not (= var165 var1357))) ; Negate: Cond: $i1 == i2  
(define-const var3633 (Array Int var744) arr-var744-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(assert (and true (and (>= var1357 0) (>= (str.len var3478) var1357))))
(define-const var2234 String (substring/850833817 var3478 var1357)) ; Statement: $r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(declare-const var3633!1 (Array Int var744))
(assert (not (= var3633!1 null-__Array__Int__var744__)))
(assert (= (select var3633!1 0) (cast-from-String-to-var744 var2234))) ; Statement: $r20[0] = $r21 
(define-const var3410 String (var2632_getString/1500902777 "ConnectionString.4" var3633!1)) ; Statement: $r22 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionString.4", $r20) 
(define-const var366 var2651 (var1338_createException/361149092 var729!class var3410)) ; Statement: $r23 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r22) 
(define-const var1359 var729 (cast-from-var2651-to-var729 var366)) ; Statement: $r24 = (com.mysql.cj.exceptions.WrongArgumentException) $r23 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2435-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), find/1809080823=([java.util.regex.Matcher], boolean), start/-526965311=([java.util.regex.Matcher], int), arr-var744-init=([], java.lang.Object[]), substring/850833817=([java.lang.String, int], java.lang.String), cast-from-String-to-var744=([java.lang.String], java.lang.Object), var2632_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), var1338_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var2651-to-var729=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var50=com.mysql.cj.conf.ConnectionUrlParser, var2007=r25, var3593=java.util.regex.Pattern, var1712=r0, var3478=r1, var2606=null_type, var957=java.util.regex.Matcher, var1704=r2, var1357=i2, var2435=java.util.HashMap, var2195=$r3, var1071=$z0, var165=$i1, var744=java.lang.Object, var3633=$r20, var2234=$r21, var2632=com.mysql.cj.Messages, var3410=$r22, var2651=com.mysql.cj.exceptions.CJException, var1338=com.mysql.cj.exceptions.ExceptionFactory, var729=com.mysql.cj.exceptions.WrongArgumentException, var366=$r23, var1359=$r24}
; {com.mysql.cj.conf.ConnectionUrlParser=var50, r25=var2007, java.util.regex.Pattern=var3593, r0=var1712, r1=var3478, null_type=var2606, java.util.regex.Matcher=var957, r2=var1704, i2=var1357, java.util.HashMap=var2435, $r3=var2195, $z0=var1071, $i1=var165, java.lang.Object=var744, $r20=var3633, $r21=var2234, com.mysql.cj.Messages=var2632, $r22=var3410, com.mysql.cj.exceptions.CJException=var2651, com.mysql.cj.exceptions.ExceptionFactory=var1338, com.mysql.cj.exceptions.WrongArgumentException=var729, $r23=var366, $r24=var1359}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r25 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r0 := @parameter0: java.util.regex.Pattern;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	i2 = 0;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.util.regex.Matcher: int start()>();	if $i1 == i2 goto $r9 = virtualinvoke r2.<java.util.regex.Matcher: java.lang.String group(java.lang.String)>("key");	$r20 = newarray (java.lang.Object)[1];	$r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r20[0] = $r21;	$r22 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionString.4", $r20);	$r23 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r22);	$r24 = (com.mysql.cj.exceptions.WrongArgumentException) $r23;	throw $r24
;block_num 4