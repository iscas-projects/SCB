(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3022 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reader/-1008976958 (var3022) var1452)
(declare-fun buffer/-1008976958 (var3022) (Array Int Int))
(declare-fun read/-1845806611 (var1452 (Array Int Int)) Int)
(declare-fun outputBuffer/-1008976958 (var3022) String)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3022 var3022)
(declare-const var3532 var3022) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput 
(assert (not (= var3532 null-var3022)))
(define-const var3127 var1452 (reader/-1008976958 var3532)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.Reader reader> 
(define-const var1607 (Array Int Int) (buffer/-1008976958 var3532)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer> 
(assert true)
(define-const var245 Int (read/-1845806611 var3127 var1607)) ; Statement: i0 = virtualinvoke $r2.<java.io.Reader: int read(char[])>($r1) 
 ; Statement: if i0 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer> 
(assert (>= var245 0)) ; Cond: i0 >= 0 
(define-const var2691 String (outputBuffer/-1008976958 var3532)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer> 
(define-const var2042 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var802 (Array Int Int) (buffer/-1008976958 var3532)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer> 
(assert true)
;(assert (<init>/-253222812 var2042 var802 0 var245)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, i0) 

(declare-const var2042!1 String)
(declare-const var802!1 (Array Int Int))
(declare-const var883 Int)
(declare-const var245!1 Int)
(assert true)
;(assert (append/1560614132 var2691 var2042!1)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2691!1 String)
(assert (str.prefixof var2691 var2691!1))
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {reader/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.io.Reader), buffer/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], char[]), read/-1845806611=([java.io.Reader, char[]], int), outputBuffer/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.lang.StringBuffer), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3022=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput, var3532=r0, var1452=java.io.Reader, var3127=$r2, var1607=$r1, var245=i0, var2691=$r5, var2042=$r3, var802=$r4, var883=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput=var3022, r0=var3532, java.io.Reader=var1452, $r2=var3127, $r1=var1607, i0=var245, $r5=var2691, $r3=var2042, $r4=var802, 0=var883}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.Reader reader>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer>;	i0 = virtualinvoke $r2.<java.io.Reader: int read(char[])>($r1);	if i0 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer>;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer>;	$r3 = new java.lang.String;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r4, 0, i0);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return 1
;block_num 2