(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2997 0)
(declare-sort var3583 0)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var413_toCharset/1927181655 (var3583) var3583)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3583) void)
(declare-fun write/654681022 (var2997 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var2997 var2997)
(declare-const null-var3583 var3583)
(declare-const var2490 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2490 null-__Array__Int__Int__)))
(declare-const var1624 var2997) ; Statement: r1 := @parameter1: java.io.Writer 
(assert (not (= var1624 null-var2997)))
(declare-const var3159 var3583) ; Statement: r3 := @parameter2: java.nio.charset.Charset 
(assert (not (= var3159 null-var3583)))
 ; Statement: if r0 == null goto return 
(assert (not (= var2490 null-__Array__Int__Int__))) ; Negate: Cond: r0 == null  
(define-const var1660 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2459 var3583 (var413_toCharset/1927181655 var3159)) ; Statement: $r4 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r3) 
(assert true)
;(assert (<init>/-2015205558 var1660 var2490 var2459)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r0, $r4) 

(declare-const var1660!1 String)
(declare-const var2490!1 (Array Int Int))
(declare-const var2459!1 var3583)
(assert true)
;(assert (write/654681022 var1624 var1660!1)) ; Statement: virtualinvoke r1.<java.io.Writer: void write(java.lang.String)>($r2) 

(declare-const var1624!1 var2997)
(declare-const var1660!2 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var413_toCharset/1927181655=([java.nio.charset.Charset], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var2490=r0, var2997=java.io.Writer, var1624=r1, var3583=java.nio.charset.Charset, var3159=r3, var1660=$r2, var413=org.apache.commons.io.Charsets, var2459=$r4}
; {r0=var2490, java.io.Writer=var2997, r1=var1624, java.nio.charset.Charset=var3583, r3=var3159, $r2=var1660, org.apache.commons.io.Charsets=var413, $r4=var2459}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: byte[];	r1 := @parameter1: java.io.Writer;	r3 := @parameter2: java.nio.charset.Charset;	if r0 == null goto return;	$r2 = new java.lang.String;	$r4 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r3);	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r0, $r4);	virtualinvoke r1.<java.io.Writer: void write(java.lang.String)>($r2);	return
;block_num 3