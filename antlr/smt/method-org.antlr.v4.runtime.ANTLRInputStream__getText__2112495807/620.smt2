(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/1351597580 (var188) Int)
(declare-fun b/1351597580 (var188) Int)
(declare-fun n/1908198296 (var1605) Int)
(declare-fun String-init () String)
(declare-fun data/1908198296 (var1605) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1605 var1605)
(declare-const null-var188 var188)
(declare-const var2802 var1605) ; Statement: r1 := @this: org.antlr.v4.runtime.ANTLRInputStream 
(assert (not (= var2802 null-var1605)))
(declare-const var3213 var188) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var3213 null-var188)))
(define-const var3865 Int (a/1351597580 var3213)) ; Statement: i0 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var3365 Int (b/1351597580 var3213)) ; Statement: i6 = r0.<org.antlr.v4.runtime.misc.Interval: int b> 
(define-const var1024 Int (n/1908198296 var2802)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.ANTLRInputStream: int n> 
 ; Statement: if i6 < $i1 goto $i2 = i6 - i0 
(assert (< var3365 var1024)) ; Cond: i6 < $i1 
(define-const var2634 Int (- var3365 var3865)) ; Statement: $i2 = i6 - i0 
(define-const var3302 Int (+ var2634 1)) ; Statement: $i5 = $i2 + 1 
(define-const var3369 Int (n/1908198296 var2802)) ; Statement: $i3 = r1.<org.antlr.v4.runtime.ANTLRInputStream: int n> 
 ; Statement: if i0 < $i3 goto $r2 = new java.lang.String 
(assert (< var3865 var3369)) ; Cond: i0 < $i3 
(define-const var2911 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2826 (Array Int Int) (data/1908198296 var2802)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.ANTLRInputStream: char[] data> 
(assert true)
;(assert (<init>/-253222812 var2911 var2826 var3865 var3302)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i0, $i5) 

(declare-const var2911!1 String)
(declare-const var2826!1 (Array Int Int))
(declare-const var3865!1 Int)
(declare-const var3302!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), n/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], int), String-init=([], java.lang.String), data/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1605=org.antlr.v4.runtime.ANTLRInputStream, var2802=r1, var188=org.antlr.v4.runtime.misc.Interval, var3213=r0, var3865=i0, var3365=i6, var1024=$i1, var2634=$i2, var3302=$i5, var3369=$i3, var2911=$r2, var2826=$r3}
; {org.antlr.v4.runtime.ANTLRInputStream=var1605, r1=var2802, org.antlr.v4.runtime.misc.Interval=var188, r0=var3213, i0=var3865, i6=var3365, $i1=var1024, $i2=var2634, $i5=var3302, $i3=var3369, $r2=var2911, $r3=var2826}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.ANTLRInputStream;	r0 := @parameter0: org.antlr.v4.runtime.misc.Interval;	i0 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	i6 = r0.<org.antlr.v4.runtime.misc.Interval: int b>;	$i1 = r1.<org.antlr.v4.runtime.ANTLRInputStream: int n>;	if i6 < $i1 goto $i2 = i6 - i0;	$i2 = i6 - i0;	$i5 = $i2 + 1;	$i3 = r1.<org.antlr.v4.runtime.ANTLRInputStream: int n>;	if i0 < $i3 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r3 = r1.<org.antlr.v4.runtime.ANTLRInputStream: char[] data>;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i0, $i5);	return $r2
;block_num 3