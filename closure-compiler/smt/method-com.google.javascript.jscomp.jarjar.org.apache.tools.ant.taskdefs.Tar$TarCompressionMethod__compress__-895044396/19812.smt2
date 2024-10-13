(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2089 0)
(declare-sort var2398 0)
(declare-sort var608 0)
(declare-sort var3262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var608) String)
(declare-fun cast-from-var2089-to-var608 (var2089) var608)
(declare-fun var3262-init () var3262)
(declare-fun <init>/-673822234 (var3262 var2398) void)
(declare-const null-var2089 var2089)
(declare-const null-var2398 var2398)
(declare-const var2341 var2089) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod 
(assert (not (= var2341 null-var2089)))
(declare-const var872 var2398) ; Statement: r5 := @parameter0: java.io.OutputStream 
(assert (not (= var872 null-var2398)))
(assert true)
(define-const var97 String (getValue/-1445752687 (cast-from-var2089-to-var608 var2341))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod: java.lang.String getValue()>() 
(define-const var2631 String "gzip") ; Statement: $r2 = "gzip" 
(assert true)
(define-const var3042 Bool (= var2631 var97)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "xz" 
(assert (not (= (ite var3042 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2541 var3262 var3262-init) ; Statement: $r8 = new java.util.zip.GZIPOutputStream 
(assert true)
;(assert (<init>/-673822234 var2541 var872)) ; Statement: specialinvoke $r8.<java.util.zip.GZIPOutputStream: void <init>(java.io.OutputStream)>(r5) 

(declare-const var2541!1 var3262)
(declare-const var872!1 var2398)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2089-to-var608=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), var3262-init=([], java.util.zip.GZIPOutputStream), <init>/-673822234=([java.util.zip.GZIPOutputStream, java.io.OutputStream], void)}
; {var2089=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod, var2341=r0, var2398=java.io.OutputStream, var872=r5, var608=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var97=r1, var2631=$r2, var3042=$z0, var3262=java.util.zip.GZIPOutputStream, var2541=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod=var2089, r0=var2341, java.io.OutputStream=var2398, r5=var872, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var608, r1=var97, $r2=var2631, $z0=var3042, java.util.zip.GZIPOutputStream=var3262, $r8=var2541}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod;	r5 := @parameter0: java.io.OutputStream;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarCompressionMethod: java.lang.String getValue()>();	$r2 = "gzip";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "xz";	$r8 = new java.util.zip.GZIPOutputStream;	specialinvoke $r8.<java.util.zip.GZIPOutputStream: void <init>(java.io.OutputStream)>(r5);	return $r8
;block_num 2