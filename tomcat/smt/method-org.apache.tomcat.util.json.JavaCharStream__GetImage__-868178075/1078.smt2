(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bufpos/-1114601658 (var2981) Int)
(declare-fun tokenBegin/-1114601658 (var2981) Int)
(declare-fun String-init () String)
(declare-fun buffer/-1114601658 (var2981) (Array Int Int))
(declare-fun bufsize/-1114601658 (var2981) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2981 var2981)
(declare-const var3040 var2981) ; Statement: r0 := @this: org.apache.tomcat.util.json.JavaCharStream 
(assert (not (= var3040 null-var2981)))
(define-const var1218 Int (bufpos/-1114601658 var3040)) ; Statement: $i1 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos> 
(define-const var1086 Int (tokenBegin/-1114601658 var3040)) ; Statement: $i0 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
 ; Statement: if $i1 < $i0 goto $r1 = new java.lang.String 
(assert (< var1218 var1086)) ; Cond: $i1 < $i0 
(define-const var1063 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3731 (Array Int Int) (buffer/-1114601658 var3040)) ; Statement: $r2 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer> 
(define-const var3287 Int (tokenBegin/-1114601658 var3040)) ; Statement: $i5 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
(define-const var324 Int (bufsize/-1114601658 var3040)) ; Statement: $i3 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufsize> 
(define-const var1484 Int (tokenBegin/-1114601658 var3040)) ; Statement: $i2 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin> 
(define-const var2169 Int (- var324 var1484)) ; Statement: $i4 = $i3 - $i2 
(assert true)
;(assert (<init>/-253222812 var1063 var3731 var3287 var2169)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, $i5, $i4) 

(declare-const var1063!1 String)
(declare-const var3731!1 (Array Int Int))
(declare-const var3287!1 Int)
(declare-const var2169!1 Int)
(define-const var530 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var2198 (Array Int Int) (buffer/-1114601658 var3040)) ; Statement: $r4 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer> 
(define-const var2107 Int (bufpos/-1114601658 var3040)) ; Statement: $i6 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos> 
(define-const var962 Int (+ var2107 1)) ; Statement: $i7 = $i6 + 1 
(assert true)
;(assert (<init>/-253222812 var530 var2198 0 var962)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i7) 

(declare-const var530!1 String)
(declare-const var2198!1 (Array Int Int))
(declare-const var480 Int)
(declare-const var962!1 Int)
(define-const var2598 String (str.++ "\u0001\u0001" var1063!1 var530!1)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r1, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {bufpos/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], int), tokenBegin/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], int), String-init=([], java.lang.String), buffer/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], char[]), bufsize/-1114601658=([org.apache.tomcat.util.json.JavaCharStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2981=org.apache.tomcat.util.json.JavaCharStream, var3040=r0, var1218=$i1, var1086=$i0, var1063=$r1, var3731=$r2, var3287=$i5, var324=$i3, var1484=$i2, var2169=$i4, var530=$r3, var2198=$r4, var2107=$i6, var962=$i7, var480=0, var2598=$r5}
; {org.apache.tomcat.util.json.JavaCharStream=var2981, r0=var3040, $i1=var1218, $i0=var1086, $r1=var1063, $r2=var3731, $i5=var3287, $i3=var324, $i2=var1484, $i4=var2169, $r3=var530, $r4=var2198, $i6=var2107, $i7=var962, 0=var480, $r5=var2598}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 2}
;stmts r0 := @this: org.apache.tomcat.util.json.JavaCharStream;	$i1 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos>;	$i0 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	if $i1 < $i0 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r2 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer>;	$i5 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	$i3 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufsize>;	$i2 = r0.<org.apache.tomcat.util.json.JavaCharStream: int tokenBegin>;	$i4 = $i3 - $i2;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, $i5, $i4);	$r3 = new java.lang.String;	$r4 = r0.<org.apache.tomcat.util.json.JavaCharStream: char[] buffer>;	$i6 = r0.<org.apache.tomcat.util.json.JavaCharStream: int bufpos>;	$i7 = $i6 + 1;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, $i7);	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r1, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	return $r5
;block_num 2