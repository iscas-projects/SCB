(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var355_toAsciiCharArray/1313640196 ((Array Int Int) Int Int) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2107 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2107 null-__Array__Int__Int__)))
(declare-const var686 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var686 null-Int)))
(declare-const var1903 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1903 null-Int)))
(define-const var3534 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1341 (Array Int Int) (var355_toAsciiCharArray/1313640196 var2107 var686 var1903)) ; Statement: $r2 = staticinvoke <com.mysql.cj.util.StringUtils: char[] toAsciiCharArray(byte[],int,int)>(r1, i0, i1) 
(assert true)
;(assert (<init>/-915723298 var3534 var1341)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var3534!1 String)
(declare-const var1341!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var355_toAsciiCharArray/1313640196=([byte[], int, int], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2107=r1, var686=i0, var1903=i1, var3534=$r0, var355=com.mysql.cj.util.StringUtils, var1341=$r2}
; {r1=var2107, i0=var686, i1=var1903, $r0=var3534, com.mysql.cj.util.StringUtils=var355, $r2=var1341}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	$r2 = staticinvoke <com.mysql.cj.util.StringUtils: char[] toAsciiCharArray(byte[],int,int)>(r1, i0, i1);	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1