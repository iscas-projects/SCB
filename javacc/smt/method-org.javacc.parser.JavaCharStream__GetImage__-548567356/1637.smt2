(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1620628507 (var1974) Int)
(declare-fun tokenBegin/-1620628507 (var1974) Int)
(declare-fun String-init () String)
(declare-fun buffer/-1620628507 (var1974) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1974 var1974)
(declare-const var2895 var1974) ; Statement: r0 := @this: org.javacc.parser.JavaCharStream 
(assert (not (= var2895 null-var1974)))
(define-const var3168 Int (bufpos/-1620628507 var2895)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCharStream: int bufpos> 
(define-const var2110 Int (tokenBegin/-1620628507 var2895)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var3168 var2110))) ; Negate: Cond: $i1 < $i0  
(define-const var2479 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var785 (Array Int Int) (buffer/-1620628507 var2895)) ; Statement: $r10 = r0.<org.javacc.parser.JavaCharStream: char[] buffer> 
(define-const var1151 Int (tokenBegin/-1620628507 var2895)) ; Statement: $i12 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
(define-const var2090 Int (bufpos/-1620628507 var2895)) ; Statement: $i9 = r0.<org.javacc.parser.JavaCharStream: int bufpos> 
(define-const var2458 Int (tokenBegin/-1620628507 var2895)) ; Statement: $i8 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin> 
(define-const var3777 Int (- var2090 var2458)) ; Statement: $i10 = $i9 - $i8 
(define-const var3973 Int (+ var3777 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var2479 var785 var1151 var3973)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11) 

(declare-const var2479!1 String)
(declare-const var785!1 (Array Int Int))
(declare-const var1151!1 Int)
(declare-const var3973!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1620628507=([org.javacc.parser.JavaCharStream], int), tokenBegin/-1620628507=([org.javacc.parser.JavaCharStream], int), String-init=([], java.lang.String), buffer/-1620628507=([org.javacc.parser.JavaCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1974=org.javacc.parser.JavaCharStream, var2895=r0, var3168=$i1, var2110=$i0, var2479=$r9, var785=$r10, var1151=$i12, var2090=$i9, var2458=$i8, var3777=$i10, var3973=$i11}
; {org.javacc.parser.JavaCharStream=var1974, r0=var2895, $i1=var3168, $i0=var2110, $r9=var2479, $r10=var785, $i12=var1151, $i9=var2090, $i8=var2458, $i10=var3777, $i11=var3973}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCharStream;	$i1 = r0.<org.javacc.parser.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.String;	$r10 = r0.<org.javacc.parser.JavaCharStream: char[] buffer>;	$i12 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	$i9 = r0.<org.javacc.parser.JavaCharStream: int bufpos>;	$i8 = r0.<org.javacc.parser.JavaCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11);	return $r9
;block_num 2