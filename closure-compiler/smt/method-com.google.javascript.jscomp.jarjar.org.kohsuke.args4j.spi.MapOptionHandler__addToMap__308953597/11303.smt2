(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var3012 0)
(declare-sort var942 0)
(declare-sort var1572 0)
(declare-sort var1069 0)
(declare-sort var885 0)
(declare-sort var34 0)
(declare-sort var3437 0)
(declare-sort var872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1572) String)
(declare-fun cast-from-String-to-var1572 (String) var1572)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1069-init () var1069)
(declare-fun owner/338944513 (var34) var885)
(declare-fun cast-from-var3274-to-var34 (var3274) var34)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/-83816806 (var1069 var885 var872 (Array Int String)) void)
(declare-fun cast-from-var3437-to-var872 (var3437) var872)
(declare-const null-var3274 var3274)
(declare-const null-String String)
(declare-const null-var942 var942)
(declare-const var3437-FORMAT_ERROR_FOR_MAP var3437)
(declare-const var3506 var3274) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler 
(assert (not (= var3506 null-var3274)))
(declare-const var626 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var626 null-String)))
(declare-const var1648 var942) ; Statement: r3 := @parameter1: java.util.Map 
(assert (not (= var1648 null-var942)))
(define-const var311 String (String_valueOf/-333372740 (cast-from-String-to-var1572 var626))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
(define-const var490 Int (indexOf/-1037706067 var311 61)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(61) 
(define-const var3741 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i0 != $i6 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(61) 
(assert (not (not (= var490 var3741)))) ; Negate: Cond: $i0 != $i6  
(define-const var1458 var1069 var1069-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException 
(define-const var296 var885 (owner/338944513 (cast-from-var3274-to-var34 var3506))) ; Statement: $r11 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner> 
(define-const var404 var3437 var3437-FORMAT_ERROR_FOR_MAP) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages FORMAT_ERROR_FOR_MAP> 
(define-const var3582 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[0] 
(assert true)
;(assert (<init>/-83816806 var1458 var296 (cast-from-var3437-to-var872 var404) var3582)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r11, $r10, $r9) 

(declare-const var1458!1 var1069)
(declare-const var296!1 var885)
(declare-const var404!1 var3437)
(declare-const var3582!1 (Array Int String))
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var1572=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1069-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException), owner/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser), cast-from-var3274-to-var34=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), arr-String-init=([], java.lang.String[]), <init>/-83816806=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable, java.lang.String[]], void), cast-from-var3437-to-var872=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable)}
; {var3274=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler, var3506=r2, var626=r0, var3012=null_type, var942=java.util.Map, var1648=r3, var1572=java.lang.Object, var311=$r1, var490=$i0, var3741=$i6, var1069=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, var1458=$r14, var885=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var34=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var296=$r11, var3437=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages, var404=$r10, var3582=$r9, var872=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler=var3274, r2=var3506, r0=var626, null_type=var3012, java.util.Map=var942, r3=var1648, java.lang.Object=var1572, $r1=var311, $i0=var490, $i6=var3741, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException=var1069, $r14=var1458, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var885, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var34, $r11=var296, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages=var3437, $r10=var404, $r9=var3582, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable=var872}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.Map;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(61);	$i6 = (int) -1;	if $i0 != $i6 goto i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(61);	$r14 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException;	$r11 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MapOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner>;	$r10 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages FORMAT_ERROR_FOR_MAP>;	$r9 = newarray (java.lang.String)[0];	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r11, $r10, $r9);	throw $r14
;block_num 2