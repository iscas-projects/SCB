(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var3142 0)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1002) void)
(declare-fun cast-from-var3381-to-var1002 (var3381) var1002)
(declare-fun type/-1654031256 (var3381) var3142)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun value/-1654031256 (var3381) String)
(declare-const null-var3381 var3381)
(declare-const null-var3142 var3142)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2199 var3381) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser$Token 
(assert (not (= var2199 null-var3381)))
(declare-const var1758 var3142) ; Statement: r1 := @parameter0: com.mysql.cj.xdevapi.ExprParser$TokenType 
(assert (not (= var1758 null-var3142)))
(declare-const var2459 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2459 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3381-to-var1002 var2199))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2199!1 var3381)
(declare-const var2199!2 var3381)
(assert (not (= var2199!2 null-var3381)))
(assert (= (type/-1654031256 var2199!2) var1758)) ; Statement: r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type> = r1 
(define-const var2176 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var1620 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (char)[1] 
(declare-const var1620!1 (Array Int Int))
(assert (not (= var1620!1 null-__Array__Int__Int__)))
(assert (= (select var1620!1 0) var2459)) ; Statement: $r3[0] = c0 
(assert true)
;(assert (<init>/-915723298 var2176 var1620!1)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var2176!1 String)
(declare-const var1620!2 (Array Int Int))
(declare-const var2199!3 var3381)
(assert (not (= var2199!3 null-var3381)))
(assert (= (value/-1654031256 var2199!3) var2176!1)) ; Statement: r0.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3381-to-var1002=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.Object), type/-1654031256=([com.mysql.cj.xdevapi.ExprParser$Token], com.mysql.cj.xdevapi.ExprParser$TokenType), String-init=([], java.lang.String), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void), value/-1654031256=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.String)}
; {var3381=com.mysql.cj.xdevapi.ExprParser$Token, var2199=r0, var3142=com.mysql.cj.xdevapi.ExprParser$TokenType, var1758=r1, var2459=c0, var1002=java.lang.Object, var2176=$r2, var1620=$r3}
; {com.mysql.cj.xdevapi.ExprParser$Token=var3381, r0=var2199, com.mysql.cj.xdevapi.ExprParser$TokenType=var3142, r1=var1758, c0=var2459, java.lang.Object=var1002, $r2=var2176, $r3=var1620}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser$Token;	r1 := @parameter0: com.mysql.cj.xdevapi.ExprParser$TokenType;	c0 := @parameter1: char;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.xdevapi.ExprParser$Token: com.mysql.cj.xdevapi.ExprParser$TokenType type> = r1;	$r2 = new java.lang.String;	$r3 = newarray (char)[1];	$r3[0] = c0;	specialinvoke $r2.<java.lang.String: void <init>(char[])>($r3);	r0.<com.mysql.cj.xdevapi.ExprParser$Token: java.lang.String value> = $r2;	return
;block_num 1