(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort var617 0)
(declare-sort var3986 0)
(declare-sort var1182 0)
(declare-sort var1894 0)
(declare-sort var1878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readLines/462672638 (var424 var617) String)
(declare-fun getBytes/-163691139 (String var3986) (Array Int Int))
(declare-fun var1894-init () var1894)
(declare-fun <init>/1208500544 (var1894 (Array Int Int)) void)
(declare-fun load/-1642720744 (var1878 var617) void)
(declare-fun cast-from-var424-to-var1878 (var424) var1878)
(declare-fun cast-from-var1894-to-var617 (var1894) var617)
(declare-const null-var424 var424)
(declare-const null-var617 var617)
(declare-const var1182-ISO_8859_1 var3986)
(declare-const var124 var424) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var124 null-var424)))
(declare-const var2014 var617) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2014 null-var617)))
(assert true)
(define-const var1567 String (readLines/462672638 var124 var2014)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readLines(java.io.InputStream)>(r1) 
(define-const var123 var3986 var1182-ISO_8859_1) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var30 (Array Int Int) (getBytes/-163691139 var1567 var123)) ; Statement: r4 = virtualinvoke r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1627 var1894 var1894-init) ; Statement: $r5 = new java.io.ByteArrayInputStream 
(assert true)
;(assert (<init>/1208500544 var1627 var30)) ; Statement: specialinvoke $r5.<java.io.ByteArrayInputStream: void <init>(byte[])>(r4) 

(declare-const var1627!1 var1894)
(declare-const var30!1 (Array Int Int))
(assert true)
;(assert (load/-1642720744 (cast-from-var424-to-var1878 var124) (cast-from-var1894-to-var617 var1627!1))) ; Statement: specialinvoke r0.<java.util.Properties: void load(java.io.InputStream)>($r5) 

(declare-const var124!1 var424)
(declare-const var1627!2 var1894)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {readLines/462672638=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, java.io.InputStream], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var1894-init=([], java.io.ByteArrayInputStream), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void), load/-1642720744=([java.util.Properties, java.io.InputStream], void), cast-from-var424-to-var1878=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties], java.util.Properties), cast-from-var1894-to-var617=([java.io.ByteArrayInputStream], java.io.InputStream)}
; {var424=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var124=r0, var617=java.io.InputStream, var2014=r1, var1567=r2, var3986=java.nio.charset.Charset, var1182=java.nio.charset.StandardCharsets, var123=$r3, var30=r4, var1894=java.io.ByteArrayInputStream, var1627=$r5, var1878=java.util.Properties}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var424, r0=var124, java.io.InputStream=var617, r1=var2014, r2=var1567, java.nio.charset.Charset=var3986, java.nio.charset.StandardCharsets=var1182, $r3=var123, r4=var30, java.io.ByteArrayInputStream=var1894, $r5=var1627, java.util.Properties=var1878}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r1 := @parameter0: java.io.InputStream;	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readLines(java.io.InputStream)>(r1);	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	r4 = virtualinvoke r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = new java.io.ByteArrayInputStream;	specialinvoke $r5.<java.io.ByteArrayInputStream: void <init>(byte[])>(r4);	specialinvoke r0.<java.util.Properties: void load(java.io.InputStream)>($r5);	return
;block_num 1