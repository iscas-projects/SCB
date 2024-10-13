(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2970 0)
(declare-sort var1108 0)
(declare-sort var661 0)
(declare-sort var2231 0)
(declare-sort var706 0)
(declare-sort var3538 0)
(declare-sort var3464 0)
(declare-sort var3045 0)
(declare-sort var585 0)
(declare-sort var288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1008976958 (var2970) var1108)
(declare-fun <init>/-279557996 (var2231) void)
(declare-fun cast-from-var2970-to-var2231 (var2970) var2231)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun outputBuffer/-1008976958 (var2970) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun buffer/-1008976958 (var2970) (Array Int Int))
(declare-fun toPath/-1698179320 (var661) var706)
(declare-fun arr-var3538-init () (Array Int var3538))
(declare-fun var3045_newInputStream/-1349068058 (var706 (Array Int var3538)) var3464)
(declare-fun is/-1008976958 (var2970) var3464)
(declare-fun reader/-1008976958 (var2970) var288)
(declare-const null-var2970 var2970)
(declare-const null-var1108 var1108)
(declare-const null-var661 var661)
(declare-const null-var585 var585)
(declare-const null-var288 var288)
(declare-const var3019 var2970) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput 
(assert (not (= var3019 null-var2970)))
(declare-const var2405 var1108) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var2405 null-var1108)))
(declare-const var2974 var661) ; Statement: r4 := @parameter1: java.io.File 
(assert (not (= var2974 null-var661)))
(declare-const var3019!1 var2970)
(assert (not (= var3019!1 null-var2970)))
(assert (= (this$0/-1008976958 var3019!1) var2405)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var2970-to-var2231 var3019!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3019!2 var2970)
(define-const var528 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var528)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var528!1 String)
(declare-const var3019!3 var2970)
(assert (not (= var3019!3 null-var2970)))
(assert (= (outputBuffer/-1008976958 var3019!3) var528!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer> = $r2 
(define-const var3390 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (char)[4096] 
(declare-const var3019!4 var2970)
(assert (not (= var3019!4 null-var2970)))
(assert (= (buffer/-1008976958 var3019!4) var3390)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer> = $r3 
(assert true)
(define-const var247 var706 (toPath/-1698179320 var2974)) ; Statement: $r6 = virtualinvoke r4.<java.io.File: java.nio.file.Path toPath()>() 
(define-const var87 (Array Int var3538) arr-var3538-init) ; Statement: $r5 = newarray (java.nio.file.OpenOption)[0] 
(define-const var1424 var3464 (var3045_newInputStream/-1349068058 var247 var87)) ; Statement: $r7 = staticinvoke <java.nio.file.Files: java.io.InputStream newInputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r6, $r5) 
(declare-const var3019!5 var2970)
(assert (not (= var3019!5 null-var2970)))
(assert (= (is/-1008976958 var3019!5) var1424)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.InputStream is> = $r7 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2366 var585) ; Statement: $r15 := @caughtexception 
(assert (not (= var2366 null-var585)))
(define-const var3883 var288 (reader/-1008976958 var3019!5)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.Reader reader> 
 ; Statement: if $r16 != null goto throw $r15 
(assert (not (= var3883 null-var288))) ; Cond: $r16 != null 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace), <init>/-279557996=([java.lang.Object], void), cast-from-var2970-to-var2231=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), outputBuffer/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.lang.StringBuffer), arr-Int-init=([], char[]), buffer/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], char[]), toPath/-1698179320=([java.io.File], java.nio.file.Path), arr-var3538-init=([], java.nio.file.OpenOption[]), var3045_newInputStream/-1349068058=([java.nio.file.Path, java.nio.file.OpenOption[]], java.io.InputStream), is/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.io.InputStream), reader/-1008976958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput], java.io.Reader)}
; {var2970=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput, var3019=r0, var1108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var2405=r1, var661=java.io.File, var2974=r4, var2231=java.lang.Object, var528=$r2, var3390=$r3, var706=java.nio.file.Path, var247=$r6, var3538=java.nio.file.OpenOption, var87=$r5, var3464=java.io.InputStream, var3045=java.nio.file.Files, var1424=$r7, var585=java.lang.Throwable, var2366=$r15, var288=java.io.Reader, var3883=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput=var2970, r0=var3019, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var1108, r1=var2405, java.io.File=var661, r4=var2974, java.lang.Object=var2231, $r2=var528, $r3=var3390, java.nio.file.Path=var706, $r6=var247, java.nio.file.OpenOption=var3538, $r5=var87, java.io.InputStream=var3464, java.nio.file.Files=var3045, $r7=var1424, java.lang.Throwable=var585, $r15=var2366, java.io.Reader=var288, $r16=var3883}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r4 := @parameter1: java.io.File;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.lang.StringBuffer outputBuffer> = $r2;	$r3 = newarray (char)[4096];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: char[] buffer> = $r3;	$r6 = virtualinvoke r4.<java.io.File: java.nio.file.Path toPath()>();	$r5 = newarray (java.nio.file.OpenOption)[0];	$r7 = staticinvoke <java.nio.file.Files: java.io.InputStream newInputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r6, $r5);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.InputStream is> = $r7;	$r15 := @caughtexception;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileInput: java.io.Reader reader>;	if $r16 != null goto throw $r15;	throw $r15
;block_num 3