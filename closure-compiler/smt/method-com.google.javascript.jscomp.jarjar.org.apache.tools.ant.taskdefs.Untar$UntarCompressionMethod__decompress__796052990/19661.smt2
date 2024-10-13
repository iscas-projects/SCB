(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2148 0)
(declare-sort var2899 0)
(declare-sort var2654 0)
(declare-sort var2309 0)
(declare-sort var358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var2309) String)
(declare-fun cast-from-var2148-to-var2309 (var2148) var2309)
(declare-fun var358-init () var358)
(declare-fun <init>/-1281710580 (var358 var2654) void)
(declare-const null-var2148 var2148)
(declare-const null-String String)
(declare-const null-var2654 var2654)
(declare-const var1987 var2148) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod 
(assert (not (= var1987 null-var2148)))
(declare-const var2136 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2136 null-String)))
(declare-const var105 var2654) ; Statement: r5 := @parameter1: java.io.InputStream 
(assert (not (= var105 null-var2654)))
(assert true)
(define-const var818 String (getValue/-1445752687 (cast-from-var2148-to-var2309 var1987))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod: java.lang.String getValue()>() 
(define-const var1584 String "gzip") ; Statement: $r2 = "gzip" 
(assert true)
(define-const var3227 Bool (= var1584 var818)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "xz" 
(assert (not (= (ite var3227 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2340 var358 var358-init) ; Statement: $r16 = new java.util.zip.GZIPInputStream 
(assert true)
;(assert (<init>/-1281710580 var2340 var105)) ; Statement: specialinvoke $r16.<java.util.zip.GZIPInputStream: void <init>(java.io.InputStream)>(r5) 

(declare-const var2340!1 var358)
(declare-const var105!1 var2654)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2148-to-var2309=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), var358-init=([], java.util.zip.GZIPInputStream), <init>/-1281710580=([java.util.zip.GZIPInputStream, java.io.InputStream], void)}
; {var2148=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod, var1987=r0, var2136=r10, var2899=null_type, var2654=java.io.InputStream, var105=r5, var2309=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var818=r1, var1584=$r2, var3227=$z0, var358=java.util.zip.GZIPInputStream, var2340=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod=var2148, r0=var1987, r10=var2136, null_type=var2899, java.io.InputStream=var2654, r5=var105, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2309, r1=var818, $r2=var1584, $z0=var3227, java.util.zip.GZIPInputStream=var358, $r16=var2340}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod;	r10 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.InputStream;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar$UntarCompressionMethod: java.lang.String getValue()>();	$r2 = "gzip";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "xz";	$r16 = new java.util.zip.GZIPInputStream;	specialinvoke $r16.<java.util.zip.GZIPInputStream: void <init>(java.io.InputStream)>(r5);	return $r16
;block_num 2