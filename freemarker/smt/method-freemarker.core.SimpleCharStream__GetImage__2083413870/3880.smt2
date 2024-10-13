(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/864528911 (var697) Int)
(declare-fun tokenBegin/864528911 (var697) Int)
(declare-fun String-init () String)
(declare-fun buffer/864528911 (var697) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var697 var697)
(declare-const var323 var697) ; Statement: r0 := @this: freemarker.core.SimpleCharStream 
(assert (not (= var323 null-var697)))
(define-const var2860 Int (bufpos/864528911 var323)) ; Statement: $i1 = r0.<freemarker.core.SimpleCharStream: int bufpos> 
(define-const var1809 Int (tokenBegin/864528911 var323)) ; Statement: $i0 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var2860 var1809))) ; Negate: Cond: $i1 < $i0  
(define-const var1316 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var318 (Array Int Int) (buffer/864528911 var323)) ; Statement: $r10 = r0.<freemarker.core.SimpleCharStream: char[] buffer> 
(define-const var1569 Int (tokenBegin/864528911 var323)) ; Statement: $i12 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
(define-const var2150 Int (bufpos/864528911 var323)) ; Statement: $i9 = r0.<freemarker.core.SimpleCharStream: int bufpos> 
(define-const var2404 Int (tokenBegin/864528911 var323)) ; Statement: $i8 = r0.<freemarker.core.SimpleCharStream: int tokenBegin> 
(define-const var2652 Int (- var2150 var2404)) ; Statement: $i10 = $i9 - $i8 
(define-const var3236 Int (+ var2652 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var1316 var318 var1569 var3236)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11) 

(declare-const var1316!1 String)
(declare-const var318!1 (Array Int Int))
(declare-const var1569!1 Int)
(declare-const var3236!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/864528911=([freemarker.core.SimpleCharStream], int), tokenBegin/864528911=([freemarker.core.SimpleCharStream], int), String-init=([], java.lang.String), buffer/864528911=([freemarker.core.SimpleCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var697=freemarker.core.SimpleCharStream, var323=r0, var2860=$i1, var1809=$i0, var1316=$r9, var318=$r10, var1569=$i12, var2150=$i9, var2404=$i8, var2652=$i10, var3236=$i11}
; {freemarker.core.SimpleCharStream=var697, r0=var323, $i1=var2860, $i0=var1809, $r9=var1316, $r10=var318, $i12=var1569, $i9=var2150, $i8=var2404, $i10=var2652, $i11=var3236}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: freemarker.core.SimpleCharStream;	$i1 = r0.<freemarker.core.SimpleCharStream: int bufpos>;	$i0 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.String;	$r10 = r0.<freemarker.core.SimpleCharStream: char[] buffer>;	$i12 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	$i9 = r0.<freemarker.core.SimpleCharStream: int bufpos>;	$i8 = r0.<freemarker.core.SimpleCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11);	return $r9
;block_num 2