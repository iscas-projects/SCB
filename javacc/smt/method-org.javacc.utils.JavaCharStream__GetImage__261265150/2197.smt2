(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1867541097 (var1518) Int)
(declare-fun tokenBegin/-1867541097 (var1518) Int)
(declare-fun String-init () String)
(declare-fun buffer/-1867541097 (var1518) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1518 var1518)
(declare-const var552 var1518) ; Statement: r0 := @this: org.javacc.utils.JavaCharStream 
(assert (not (= var552 null-var1518)))
(define-const var2889 Int (bufpos/-1867541097 var552)) ; Statement: $i1 = r0.<org.javacc.utils.JavaCharStream: int bufpos> 
(define-const var794 Int (tokenBegin/-1867541097 var552)) ; Statement: $i0 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var2889 var794))) ; Negate: Cond: $i1 < $i0  
(define-const var3830 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var1817 (Array Int Int) (buffer/-1867541097 var552)) ; Statement: $r10 = r0.<org.javacc.utils.JavaCharStream: char[] buffer> 
(define-const var804 Int (tokenBegin/-1867541097 var552)) ; Statement: $i12 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
(define-const var1444 Int (bufpos/-1867541097 var552)) ; Statement: $i9 = r0.<org.javacc.utils.JavaCharStream: int bufpos> 
(define-const var589 Int (tokenBegin/-1867541097 var552)) ; Statement: $i8 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin> 
(define-const var130 Int (- var1444 var589)) ; Statement: $i10 = $i9 - $i8 
(define-const var701 Int (+ var130 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var3830 var1817 var804 var701)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11) 

(declare-const var3830!1 String)
(declare-const var1817!1 (Array Int Int))
(declare-const var804!1 Int)
(declare-const var701!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1867541097=([org.javacc.utils.JavaCharStream], int), tokenBegin/-1867541097=([org.javacc.utils.JavaCharStream], int), String-init=([], java.lang.String), buffer/-1867541097=([org.javacc.utils.JavaCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1518=org.javacc.utils.JavaCharStream, var552=r0, var2889=$i1, var794=$i0, var3830=$r9, var1817=$r10, var804=$i12, var1444=$i9, var589=$i8, var130=$i10, var701=$i11}
; {org.javacc.utils.JavaCharStream=var1518, r0=var552, $i1=var2889, $i0=var794, $r9=var3830, $r10=var1817, $i12=var804, $i9=var1444, $i8=var589, $i10=var130, $i11=var701}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.javacc.utils.JavaCharStream;	$i1 = r0.<org.javacc.utils.JavaCharStream: int bufpos>;	$i0 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.String;	$r10 = r0.<org.javacc.utils.JavaCharStream: char[] buffer>;	$i12 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	$i9 = r0.<org.javacc.utils.JavaCharStream: int bufpos>;	$i8 = r0.<org.javacc.utils.JavaCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11);	return $r9
;block_num 2