(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3869 0)
(declare-sort var2691 0)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun var3693_write/165508493 (String var3869 var2691) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var3869 var3869)
(declare-const null-var2691 var2691)
(declare-const var800 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var800 null-__Array__Int__Int__)))
(declare-const var3816 var3869) ; Statement: r2 := @parameter1: java.io.OutputStream 
(assert (not (= var3816 null-var3869)))
(declare-const var3063 var2691) ; Statement: r3 := @parameter2: java.nio.charset.Charset 
(assert (not (= var3063 null-var2691)))
 ; Statement: if r0 == null goto return 
(assert (not (= var800 null-__Array__Int__Int__))) ; Negate: Cond: r0 == null  
(define-const var1746 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1746 var800)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1746!1 String)
(declare-const var800!1 (Array Int Int))
;(assert (var3693_write/165508493 var1746!1 var3816 var3063)) ; Statement: staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r1, r2, r3) 

(declare-const var1746!2 String)
(declare-const var3816!1 var3869)
(declare-const var3063!1 var2691)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), var3693_write/165508493=([java.lang.String, java.io.OutputStream, java.nio.charset.Charset], void)}
; {var800=r0, var3869=java.io.OutputStream, var3816=r2, var2691=java.nio.charset.Charset, var3063=r3, var1746=$r1, var3693=org.apache.commons.io.IOUtils}
; {r0=var800, java.io.OutputStream=var3869, r2=var3816, java.nio.charset.Charset=var2691, r3=var3063, $r1=var1746, org.apache.commons.io.IOUtils=var3693}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: char[];	r2 := @parameter1: java.io.OutputStream;	r3 := @parameter2: java.nio.charset.Charset;	if r0 == null goto return;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r1, r2, r3);	return
;block_num 3