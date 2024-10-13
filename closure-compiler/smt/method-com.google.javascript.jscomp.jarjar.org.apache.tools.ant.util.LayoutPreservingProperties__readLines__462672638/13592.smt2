(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var505 0)
(declare-sort var473 0)
(declare-sort var964 0)
(declare-sort var3973 0)
(declare-sort var2663 0)
(declare-sort var3758 0)
(declare-sort var3576 0)
(declare-sort var3008 0)
(declare-sort var247 0)
(declare-sort var2704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var964-init () var964)
(declare-fun <init>/-1518332612 (var964 var473 var3973) void)
(declare-fun var3758-init () var3758)
(declare-fun <init>/-970529949 (var3758 var3576 Int) void)
(declare-fun cast-from-var964-to-var3576 (var964) var3576)
(declare-fun logicalLines/595708403 (var505) var3008)
(declare-fun var3008_isEmpty/-153543822 (var3008) Bool)
(declare-fun readFirstLine/-1109303179 (var505 var3758) String)
(declare-fun var247-init () var247)
(declare-fun <init>/30097470 (var247 var3576) void)
(declare-fun cast-from-var3758-to-var3576 (var3758) var3576)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var505 var505)
(declare-const null-var473 var473)
(declare-const var2663-ISO_8859_1 var3973)
(declare-const null-String String)
(declare-const var3566 var505) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var3566 null-var505)))
(declare-const var3525 var473) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3525 null-var473)))
(define-const var3520 var964 var964-init) ; Statement: $r0 = new java.io.InputStreamReader 
(define-const var1646 var3973 var2663-ISO_8859_1) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-1518332612 var3520 var3525 var1646)) ; Statement: specialinvoke $r0.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.nio.charset.Charset)>(r1, $r2) 

(declare-const var3520!1 var964)
(declare-const var3525!1 var473)
(declare-const var1646!1 var3973)
(define-const var557 var3758 var3758-init) ; Statement: $r3 = new java.io.PushbackReader 
(assert true)
;(assert (<init>/-970529949 var557 (cast-from-var964-to-var3576 var3520!1) 1)) ; Statement: specialinvoke $r3.<java.io.PushbackReader: void <init>(java.io.Reader,int)>($r0, 1) 

(declare-const var557!1 var3758)
(declare-const var3520!2 var964)
(declare-const var3 Int)
(define-const var123 var3008 (logicalLines/595708403 var3566)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines> 
(define-const var240 Bool (var3008_isEmpty/-153543822 var123)) ; Statement: $z0 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto r31 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readFirstLine(java.io.PushbackReader)>($r3) 
(assert (not (= (ite var240 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1592 String (readFirstLine/-1109303179 var3566 var557!1)) ; Statement: r31 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readFirstLine(java.io.PushbackReader)>($r3) 
(define-const var3516 var247 var247-init) ; Statement: $r6 = new java.io.BufferedReader 
(assert true)
;(assert (<init>/30097470 var3516 (cast-from-var3758-to-var3576 var557!1))) ; Statement: specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3) 

(declare-const var3516!1 var247)
(declare-const var557!2 var3758)
(define-const var1642 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2438 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var912 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var912)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var912!1 String)
(assert (= var912!1 ""))
(define-const var1530 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1530)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1530!1 String)
(assert (= var1530!1 ""))
(assert true) ; Non Conditional
 ; Statement: if r31 == null goto $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1592 null-String)) ; Cond: r31 == null 
(assert true)
(define-const var2594 String (toString/-2075883882 var912!1)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var964-init=([], java.io.InputStreamReader), <init>/-1518332612=([java.io.InputStreamReader, java.io.InputStream, java.nio.charset.Charset], void), var3758-init=([], java.io.PushbackReader), <init>/-970529949=([java.io.PushbackReader, java.io.Reader, int], void), cast-from-var964-to-var3576=([java.io.InputStreamReader], java.io.Reader), logicalLines/595708403=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties], java.util.List), var3008_isEmpty/-153543822=([java.util.List], boolean), readFirstLine/-1109303179=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, java.io.PushbackReader], java.lang.String), var247-init=([], java.io.BufferedReader), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var3758-to-var3576=([java.io.PushbackReader], java.io.Reader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var505=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var3566=r4, var473=java.io.InputStream, var3525=r1, var964=java.io.InputStreamReader, var3520=$r0, var3973=java.nio.charset.Charset, var2663=java.nio.charset.StandardCharsets, var1646=$r2, var3758=java.io.PushbackReader, var557=$r3, var3576=java.io.Reader, var3=1, var3008=java.util.List, var123=$r5, var240=$z0, var1592=r31, var247=java.io.BufferedReader, var3516=$r6, var1642=z3, var2438=z4, var912=$r7, var1530=$r8, var2704=null_type, var2594=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var505, r4=var3566, java.io.InputStream=var473, r1=var3525, java.io.InputStreamReader=var964, $r0=var3520, java.nio.charset.Charset=var3973, java.nio.charset.StandardCharsets=var2663, $r2=var1646, java.io.PushbackReader=var3758, $r3=var557, java.io.Reader=var3576, 1=var3, java.util.List=var3008, $r5=var123, $z0=var240, r31=var1592, java.io.BufferedReader=var247, $r6=var3516, z3=var1642, z4=var2438, $r7=var912, $r8=var1530, null_type=var2704, $r9=var2594}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r1 := @parameter0: java.io.InputStream;	$r0 = new java.io.InputStreamReader;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r0.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.nio.charset.Charset)>(r1, $r2);	$r3 = new java.io.PushbackReader;	specialinvoke $r3.<java.io.PushbackReader: void <init>(java.io.Reader,int)>($r0, 1);	$r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines>;	$z0 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto r31 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readFirstLine(java.io.PushbackReader)>($r3);	r31 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String readFirstLine(java.io.PushbackReader)>($r3);	$r6 = new java.io.BufferedReader;	specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3);	z3 = 0;	z4 = 0;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	if r31 == null goto $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4