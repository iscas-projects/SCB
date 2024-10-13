(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var3898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/-946785625 (var3898) Int)
(declare-fun b/-946785625 (var3898) Int)
(declare-fun n/1142770973 (var834) Int)
(declare-fun String-init () String)
(declare-fun data/1142770973 (var834) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var834 var834)
(declare-const null-var3898 var3898)
(declare-const var2885 var834) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream 
(assert (not (= var2885 null-var834)))
(declare-const var528 var3898) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval 
(assert (not (= var528 null-var3898)))
(define-const var3259 Int (a/-946785625 var528)) ; Statement: i0 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var85 Int (b/-946785625 var528)) ; Statement: i6 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b> 
(define-const var3317 Int (n/1142770973 var2885)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n> 
 ; Statement: if i6 < $i1 goto $i2 = i6 - i0 
(assert (< var85 var3317)) ; Cond: i6 < $i1 
(define-const var2800 Int (- var85 var3259)) ; Statement: $i2 = i6 - i0 
(define-const var1664 Int (+ var2800 1)) ; Statement: $i5 = $i2 + 1 
(define-const var2717 Int (n/1142770973 var2885)) ; Statement: $i3 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n> 
 ; Statement: if i0 < $i3 goto $r2 = new java.lang.String 
(assert (< var3259 var2717)) ; Cond: i0 < $i3 
(define-const var3828 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var3424 (Array Int Int) (data/1142770973 var2885)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data> 
(assert true)
;(assert (<init>/-253222812 var3828 var3424 var3259 var1664)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i0, $i5) 

(declare-const var3828!1 String)
(declare-const var3424!1 (Array Int Int))
(declare-const var3259!1 Int)
(declare-const var1664!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), b/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), n/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], int), String-init=([], java.lang.String), data/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var834=com.github.jknack.handlebars.internal.antlr.ANTLRInputStream, var2885=r1, var3898=com.github.jknack.handlebars.internal.antlr.misc.Interval, var528=r0, var3259=i0, var85=i6, var3317=$i1, var2800=$i2, var1664=$i5, var2717=$i3, var3828=$r2, var3424=$r3}
; {com.github.jknack.handlebars.internal.antlr.ANTLRInputStream=var834, r1=var2885, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3898, r0=var528, i0=var3259, i6=var85, $i1=var3317, $i2=var2800, $i5=var1664, $i3=var2717, $r2=var3828, $r3=var3424}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval;	i0 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	i6 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b>;	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n>;	if i6 < $i1 goto $i2 = i6 - i0;	$i2 = i6 - i0;	$i5 = $i2 + 1;	$i3 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: int n>;	if i0 < $i3 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data>;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i0, $i5);	return $r2
;block_num 3