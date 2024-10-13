(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var3218 0)
(declare-sort var1604 0)
(declare-sort var713 0)
(declare-sort var2889 0)
(declare-sort var1850 0)
(declare-sort var1782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1604-init () var1604)
(declare-fun owner/338944513 (var2889) var713)
(declare-fun cast-from-var3141-to-var2889 (var3141) var2889)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/-83816806 (var1604 var713 var1782 (Array Int String)) void)
(declare-fun cast-from-var1850-to-var1782 (var1850) var1782)
(declare-const null-var3141 var3141)
(declare-const null-String String)
(declare-const var1850-ILLEGAL_CHAR var1850)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3709 var3141) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler 
(assert (not (= var3709 null-var3141)))
(declare-const var3350 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3350 null-String)))
(assert true)
(define-const var2691 Int (length/-134980193 var3350)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var2691 1))) ; Negate: Cond: $i0 == 1  
(define-const var3186 var1604 var1604-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException 
(define-const var1636 var713 (owner/338944513 (cast-from-var3141-to-var2889 var3709))) ; Statement: $r6 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner> 
(define-const var1599 var1850 var1850-ILLEGAL_CHAR) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_CHAR> 
(define-const var537 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[1] 
(declare-const var537!1 (Array Int String))
(assert (not (= var537!1 null-__Array__Int__String__)))
(assert (= (select var537!1 0) var3350)) ; Statement: $r4[0] = r0 
(assert true)
;(assert (<init>/-83816806 var3186 var1636 (cast-from-var1850-to-var1782 var1599) var537!1)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r6, $r5, $r4) 

(declare-const var3186!1 var1604)
(declare-const var1636!1 var713)
(declare-const var1599!1 var1850)
(declare-const var537!2 (Array Int String))
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1604-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException), owner/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser), cast-from-var3141-to-var2889=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), arr-String-init=([], java.lang.String[]), <init>/-83816806=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable, java.lang.String[]], void), cast-from-var1850-to-var1782=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable)}
; {var3141=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler, var3709=r3, var3350=r0, var3218=null_type, var2691=$i0, var1604=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, var3186=$r2, var713=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var2889=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var1636=$r6, var1850=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages, var1599=$r5, var537=$r4, var1782=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler=var3141, r3=var3709, r0=var3350, null_type=var3218, $i0=var2691, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException=var1604, $r2=var3186, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var713, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var2889, $r6=var1636, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages=var1850, $r5=var1599, $r4=var537, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable=var1782}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException;	$r6 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.CharOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner>;	$r5 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_CHAR>;	$r4 = newarray (java.lang.String)[1];	$r4[0] = r0;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r6, $r5, $r4);	throw $r2
;block_num 2