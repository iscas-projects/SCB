(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1553442546 (var3203) Int)
(declare-fun tokenBegin/-1553442546 (var3203) Int)
(declare-fun String-init () String)
(declare-fun buffer/-1553442546 (var3203) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3203 var3203)
(declare-const var3938 var3203) ; Statement: r0 := @this: org.apache.ibatis.ognl.JavaCharStream 
(assert (not (= var3938 null-var3203)))
(define-const var1875 Int (bufpos/-1553442546 var3938)) ; Statement: $i1 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos> 
(define-const var2992 Int (tokenBegin/-1553442546 var3938)) ; Statement: $i0 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var1875 var2992))) ; Negate: Cond: $i1 < $i0  
(define-const var1366 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var2656 (Array Int Int) (buffer/-1553442546 var3938)) ; Statement: $r10 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer> 
(define-const var3664 Int (tokenBegin/-1553442546 var3938)) ; Statement: $i12 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
(define-const var3120 Int (bufpos/-1553442546 var3938)) ; Statement: $i9 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos> 
(define-const var1076 Int (tokenBegin/-1553442546 var3938)) ; Statement: $i8 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin> 
(define-const var3929 Int (- var3120 var1076)) ; Statement: $i10 = $i9 - $i8 
(define-const var1384 Int (+ var3929 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var1366 var2656 var3664 var1384)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11) 

(declare-const var1366!1 String)
(declare-const var2656!1 (Array Int Int))
(declare-const var3664!1 Int)
(declare-const var1384!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], int), tokenBegin/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], int), String-init=([], java.lang.String), buffer/-1553442546=([org.apache.ibatis.ognl.JavaCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3203=org.apache.ibatis.ognl.JavaCharStream, var3938=r0, var1875=$i1, var2992=$i0, var1366=$r9, var2656=$r10, var3664=$i12, var3120=$i9, var1076=$i8, var3929=$i10, var1384=$i11}
; {org.apache.ibatis.ognl.JavaCharStream=var3203, r0=var3938, $i1=var1875, $i0=var2992, $r9=var1366, $r10=var2656, $i12=var3664, $i9=var3120, $i8=var1076, $i10=var3929, $i11=var1384}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.JavaCharStream;	$i1 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos>;	$i0 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.StringBuilder;	$r9 = new java.lang.String;	$r10 = r0.<org.apache.ibatis.ognl.JavaCharStream: char[] buffer>;	$i12 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	$i9 = r0.<org.apache.ibatis.ognl.JavaCharStream: int bufpos>;	$i8 = r0.<org.apache.ibatis.ognl.JavaCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r10, $i12, $i11);	return $r9
;block_num 2