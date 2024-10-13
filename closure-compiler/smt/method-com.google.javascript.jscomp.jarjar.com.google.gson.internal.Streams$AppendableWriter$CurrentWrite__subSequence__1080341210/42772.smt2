(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun chars/-1105101331 (var316) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var316 var316)
(declare-const null-Int Int)
(declare-const var3683 var316) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite 
(assert (not (= var3683 null-var316)))
(declare-const var343 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var343 null-Int)))
(declare-const var506 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var506 null-Int)))
(define-const var3242 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var919 (Array Int Int) (chars/-1105101331 var3683)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite: char[] chars> 
(define-const var2634 Int (- var506 var343)) ; Statement: $i2 = i1 - i0 
(assert true)
;(assert (<init>/-253222812 var3242 var919 var343 var2634)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2) 

(declare-const var3242!1 String)
(declare-const var919!1 (Array Int Int))
(declare-const var343!1 Int)
(declare-const var2634!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), chars/-1105101331=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var316=com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite, var3683=r1, var343=i0, var506=i1, var3242=$r0, var919=$r2, var2634=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite=var316, r1=var3683, i0=var343, i1=var506, $r0=var3242, $r2=var919, $i2=var2634}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.Streams$AppendableWriter$CurrentWrite: char[] chars>;	$i2 = i1 - i0;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2);	return $r0
;block_num 1