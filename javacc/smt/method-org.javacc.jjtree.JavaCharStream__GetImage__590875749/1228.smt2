(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-623079098 (var1917) Int)
(declare-fun tokenBegin/-623079098 (var1917) Int)
(declare-fun String-init () String)
(declare-fun buffer/-623079098 (var1917) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1917 var1917)
(declare-const var2568 var1917) ; Statement: r0 := @this: org.javacc.jjtree.JavaCharStream 
(assert (not (= var2568 null-var1917)))
(define-const var3732 Int (bufpos/-623079098 var2568)) ; Statement: $i1 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos> 
(define-const var3012 Int (tokenBegin/-623079098 var2568)) ; Statement: $i0 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var3732 var3012))) ; Negate: Cond: $i1 < $i0  
(define-const var3358 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var3350 (Array Int Int) (buffer/-623079098 var2568)) ; Statement: $r10 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer> 
(define-const var3019 Int (tokenBegin/-623079098 var2568)) ; Statement: $i12 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
(define-const var1440 Int (bufpos/-623079098 var2568)) ; Statement: $i9 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos> 
(define-const var1210 Int (tokenBegin/-623079098 var2568)) ; Statement: $i8 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin> 
(define-const var3918 Int (- var1440 var1210)) ; Statement: $i10 = $i9 - $i8 
(define-const var392 Int (+ var3918 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var3358 var3350 var3019 var392)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11) 

(declare-const var3358!1 String)
(declare-const var3350!1 (Array Int Int))
(declare-const var3019!1 Int)
(declare-const var392!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-623079098=([org.javacc.jjtree.JavaCharStream], int), tokenBegin/-623079098=([org.javacc.jjtree.JavaCharStream], int), String-init=([], java.lang.String), buffer/-623079098=([org.javacc.jjtree.JavaCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1917=org.javacc.jjtree.JavaCharStream, var2568=r0, var3732=$i1, var3012=$i0, var3358=$r9, var3350=$r10, var3019=$i12, var1440=$i9, var1210=$i8, var3918=$i10, var392=$i11}
; {org.javacc.jjtree.JavaCharStream=var1917, r0=var2568, $i1=var3732, $i0=var3012, $r9=var3358, $r10=var3350, $i12=var3019, $i9=var1440, $i8=var1210, $i10=var3918, $i11=var392}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.javacc.jjtree.JavaCharStream;	$i1 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.String;	$r10 = r0.<org.javacc.jjtree.JavaCharStream: char[] buffer>;	$i12 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	$i9 = r0.<org.javacc.jjtree.JavaCharStream: int bufpos>;	$i8 = r0.<org.javacc.jjtree.JavaCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11);	return $r9
;block_num 2