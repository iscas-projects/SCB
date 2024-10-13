(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun value/1569621634 (var3952) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3952 var3952)
(declare-const null-Int Int)
(declare-const var2228 var3952) ; Statement: r1 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var2228 null-var3952)))
(declare-const var3914 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3914 null-Int)))
(declare-const var2291 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2291 null-Int)))
(define-const var3401 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var306 (Array Int Int) (value/1569621634 var2228)) ; Statement: $r2 = r1.<cn.hutool.core.text.StrBuilder: char[] value> 
(define-const var262 Int (- var2291 var3914)) ; Statement: $i2 = i1 - i0 
(assert true)
;(assert (<init>/-253222812 var3401 var306 var3914 var262)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2) 

(declare-const var3401!1 String)
(declare-const var306!1 (Array Int Int))
(declare-const var3914!1 Int)
(declare-const var262!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), value/1569621634=([cn.hutool.core.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3952=cn.hutool.core.text.StrBuilder, var2228=r1, var3914=i0, var2291=i1, var3401=$r0, var306=$r2, var262=$i2}
; {cn.hutool.core.text.StrBuilder=var3952, r1=var2228, i0=var3914, i1=var2291, $r0=var3401, $r2=var306, $i2=var262}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: cn.hutool.core.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.String;	$r2 = r1.<cn.hutool.core.text.StrBuilder: char[] value>;	$i2 = i1 - i0;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2);	return $r0
;block_num 1