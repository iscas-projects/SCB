(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var422 0)
(declare-sort var953 0)
(declare-sort var1308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getBytes/-163691139 (String var953) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var953) void)
(declare-const null-String String)
(declare-const var1308-ISO_8859_1 var953)
(declare-const var1308-UTF_8 var953)
(declare-const var1307 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1307 null-String)))
(define-const var1557 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2161 var953 var1308-ISO_8859_1) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var1917 (Array Int Int) (getBytes/-163691139 var1307 var2161)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(define-const var3037 var953 var1308-UTF_8) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var1557 var1917 var3037)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3) 

(declare-const var1557!1 String)
(declare-const var1917!1 (Array Int Int))
(declare-const var3037!1 var953)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1307=r1, var422=null_type, var1557=$r0, var953=java.nio.charset.Charset, var1308=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var2161=$r2, var1917=$r4, var3037=$r3}
; {r1=var1307, null_type=var422, $r0=var1557, java.nio.charset.Charset=var953, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var1308, $r2=var2161, $r4=var1917, $r3=var3037}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.String;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1>;	$r4 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	$r3 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3);	return $r0
;block_num 1