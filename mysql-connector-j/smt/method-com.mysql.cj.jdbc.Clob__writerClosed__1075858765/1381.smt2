(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun charData/1880163777 (var978) String)
(declare-const null-var978 var978)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2661 var978) ; Statement: r0 := @this: com.mysql.cj.jdbc.Clob 
(assert (not (= var2661 null-var978)))
(declare-const var518 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var518 null-__Array__Int__Int__)))
(define-const var3554 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3554 var518)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var3554!1 String)
(declare-const var518!1 (Array Int Int))
(declare-const var2661!1 var978)
(assert (not (= var2661!1 null-var978)))
(assert (= (charData/1880163777 var2661!1) var3554!1)) ; Statement: r0.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), charData/1880163777=([com.mysql.cj.jdbc.Clob], java.lang.String)}
; {var978=com.mysql.cj.jdbc.Clob, var2661=r0, var518=r2, var3554=$r1}
; {com.mysql.cj.jdbc.Clob=var978, r0=var2661, r2=var518, $r1=var3554}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.Clob;	r2 := @parameter0: char[];	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2);	r0.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r1;	return
;block_num 1