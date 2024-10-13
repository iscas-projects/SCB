(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1114601658 (var687) Int)
(declare-fun tokenBegin/-1114601658 (var687) Int)
(declare-fun String-init () String)
(declare-fun buffer/-1114601658 (var687) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var687 var687)
(declare-const var1588 var687) ; Statement: r0 := @this: org.apache.tomcat.util.json.JavaCharStream 
(assert (not (= var1588 null-var687)))
(define-const var3684 Int (bufpos/-1114601658 var1588)) ; Statement: $i1 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos> 
(define-const var1927 Int (tokenBegin/-1114601658 var1588)) ; Statement: $i0 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.String 
(assert (not (< var3684 var1927))) ; Negate: Cond: $i1 < $i0  
(define-const var829 String String-init) ; Statement: $r6 = new java.lang.String 
(define-const var3700 (Array Int Int) (buffer/-1114601658 var1588)) ; Statement: $r7 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer> 
(define-const var3471 Int (tokenBegin/-1114601658 var1588)) ; Statement: $i12 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
(define-const var1351 Int (bufpos/-1114601658 var1588)) ; Statement: $i9 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos> 
(define-const var1840 Int (tokenBegin/-1114601658 var1588)) ; Statement: $i8 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
(define-const var1354 Int (- var1351 var1840)) ; Statement: $i10 = $i9 - $i8 
(define-const var3585 Int (+ var1354 1)) ; Statement: $i11 = $i10 + 1 
(assert true)
;(assert (<init>/-253222812 var829 var3700 var3471 var3585)) ; Statement: specialinvoke $r6.<java.lang.String: void <init>(char[],int,int)>($r7, $i12, $i11) 

(declare-const var829!1 String)
(declare-const var3700!1 (Array Int Int))
(declare-const var3471!1 Int)
(declare-const var3585!1 Int)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], int), tokenBegin/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], int), String-init=([], java.lang.String), buffer/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var687=org.apache.tomcat.util.json.JavaCharStream, var1588=r0, var3684=$i1, var1927=$i0, var829=$r6, var3700=$r7, var3471=$i12, var1351=$i9, var1840=$i8, var1354=$i10, var3585=$i11}
; {org.apache.tomcat.util.json.JavaCharStream=var687, r0=var1588, $i1=var3684, $i0=var1927, $r6=var829, $r7=var3700, $i12=var3471, $i9=var1351, $i8=var1840, $i10=var1354, $i11=var3585}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.json.JavaCharStream;	$i1 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos>;	$i0 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.String;	$r6 = new java.lang.String;	$r7 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer>;	$i12 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	$i9 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos>;	$i8 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	$i10 = $i9 - $i8;	$i11 = $i10 + 1;	specialinvoke $r6.<java.lang.String: void <init>(char[],int,int)>($r7, $i12, $i11);	return $r6
;block_num 2