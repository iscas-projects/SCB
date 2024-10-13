(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2770 0)
(declare-sort var3660 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun level/-1370094465 (var2770) var3660)
(declare-fun toCommandLineOption/841908368 (var3660) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun patterns/-1370094465 (var2770) var1967)
(declare-fun var1967_isEmpty/-153543822 (var1967) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2770 var2770)
(declare-const var582 var2770) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression 
(assert (not (= var582 null-var2770)))
(define-const var3362 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2407 var3660 (level/-1370094465 var582)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel level> 
(assert true)
(define-const var1849 String (toCommandLineOption/841908368 var2407)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel: java.lang.String toCommandLineOption()>() 
(assert true)
;(assert (<init>/-1061048412 var3362 var1849)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3362!1 String)
(assert (= var3362!1 var1849))
(define-const var2358 var1967 (patterns/-1370094465 var582)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: java.util.List patterns> 
(define-const var2585 Bool (var1967_isEmpty/-153543822 var2358)) ; Statement: $z0 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2585 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3458 String (toString/-2075883882 var3362!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), level/-1370094465=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel), toCommandLineOption/841908368=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), patterns/-1370094465=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression], java.util.List), var1967_isEmpty/-153543822=([java.util.List], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2770=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression, var582=r1, var3362=$r0, var3660=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel, var2407=$r2, var1849=$r3, var1967=java.util.List, var2358=$r4, var2585=$z0, var3458=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression=var2770, r1=var582, $r0=var3362, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel=var3660, $r2=var2407, $r3=var1849, java.util.List=var1967, $r4=var2358, $z0=var2585, $r5=var3458}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel level>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$CompressionLevel: java.lang.String toCommandLineOption()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Compression: java.util.List patterns>;	$z0 = interfaceinvoke $r4.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2