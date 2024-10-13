(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort var3330 0)
(declare-sort var2689 0)
(declare-sort var1983 0)
(declare-sort var371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1983_toCharset/714237080 (String) var2689)
(declare-fun var371_write/165508493 (String var588 var2689) void)
(declare-const null-String String)
(declare-const null-var588 var588)
(declare-const var3068 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3068 null-String)))
(declare-const var1596 var588) ; Statement: r1 := @parameter1: java.io.OutputStream 
(assert (not (= var1596 null-var588)))
(declare-const var1887 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1887 null-String)))
 ; Statement: if r0 == null goto return 
(assert (not (= var3068 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3239 String (toString/-222306083 var3068)) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2593 var2689 (var1983_toCharset/714237080 var1887)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2) 
;(assert (var371_write/165508493 var3239 var1596 var2593)) ; Statement: staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r4, r1, $r3) 

(declare-const var3239!1 String)
(declare-const var1596!1 var588)
(declare-const var2593!1 var2689)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1983_toCharset/714237080=([java.lang.String], java.nio.charset.Charset), var371_write/165508493=([java.lang.String, java.io.OutputStream, java.nio.charset.Charset], void)}
; {var3068=r0, var588=java.io.OutputStream, var1596=r1, var1887=r2, var3330=null_type, var3239=$r4, var2689=java.nio.charset.Charset, var1983=org.apache.commons.io.Charsets, var2593=$r3, var371=org.apache.commons.io.IOUtils}
; {r0=var3068, java.io.OutputStream=var588, r1=var1596, r2=var1887, null_type=var3330, $r4=var3239, java.nio.charset.Charset=var2689, org.apache.commons.io.Charsets=var1983, $r3=var2593, org.apache.commons.io.IOUtils=var371}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuffer;	r1 := @parameter1: java.io.OutputStream;	r2 := @parameter2: java.lang.String;	if r0 == null goto return;	$r4 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2);	staticinvoke <org.apache.commons.io.IOUtils: void write(java.lang.String,java.io.OutputStream,java.nio.charset.Charset)>($r4, r1, $r3);	return
;block_num 3