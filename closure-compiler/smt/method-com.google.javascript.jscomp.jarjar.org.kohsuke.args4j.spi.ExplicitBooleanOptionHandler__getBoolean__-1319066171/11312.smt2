(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1765 0)
(declare-sort var3608 0)
(declare-sort var1091 0)
(declare-sort var2037 0)
(declare-sort var2399 0)
(declare-sort var115 0)
(declare-sort var509 0)
(declare-sort var1802 0)
(declare-sort var1710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var1091_containsKey/1715618542 (var1091 var2037) Bool)
(declare-fun cast-from-String-to-var2037 (String) var2037)
(declare-fun var2399-init () var2399)
(declare-fun owner/338944513 (var509) var115)
(declare-fun cast-from-var1765-to-var509 (var1765) var509)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/-83816806 (var2399 var115 var1710 (Array Int String)) void)
(declare-fun cast-from-var1802-to-var1710 (var1802) var1710)
(declare-const null-var1765 var1765)
(declare-const null-String String)
(declare-const var1765-ACCEPTABLE_VALUES var1091)
(declare-const var1802-ILLEGAL_BOOLEAN var1802)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var746 var1765) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler 
(assert (not (= var746 null-var1765)))
(declare-const var2975 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2975 null-String)))
(assert true)
(define-const var207 String (toLowerCase/415700667 var2975)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1604 var1091 var1765-ACCEPTABLE_VALUES) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES> 
(define-const var875 Bool (var1091_containsKey/1715618542 var1604 (cast-from-String-to-var2037 var207))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES> 
(assert (not (not (= (ite var875 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2019 var2399 var2399-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException 
(define-const var1216 var115 (owner/338944513 (cast-from-var1765-to-var509 var746))) ; Statement: $r10 = r7.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner> 
(define-const var2878 var1802 var1802-ILLEGAL_BOOLEAN) ; Statement: $r9 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_BOOLEAN> 
(define-const var803 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[1] 
(declare-const var803!1 (Array Int String))
(assert (not (= var803!1 null-__Array__Int__String__)))
(assert (= (select var803!1 0) var207)) ; Statement: $r8[0] = r1 
(assert true)
;(assert (<init>/-83816806 var2019 var1216 (cast-from-var1802-to-var1710 var2878) var803!1)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r10, $r9, $r8) 

(declare-const var2019!1 var2399)
(declare-const var1216!1 var115)
(declare-const var2878!1 var1802)
(declare-const var803!2 (Array Int String))
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), var1091_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2037=([java.lang.String], java.lang.Object), var2399-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException), owner/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser), cast-from-var1765-to-var509=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), arr-String-init=([], java.lang.String[]), <init>/-83816806=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable, java.lang.String[]], void), cast-from-var1802-to-var1710=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable)}
; {var1765=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler, var746=r7, var2975=r0, var3608=null_type, var207=r1, var1091=java.util.Map, var1604=$r2, var2037=java.lang.Object, var875=$z0, var2399=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, var2019=$r6, var115=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var509=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var1216=$r10, var1802=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages, var2878=$r9, var803=$r8, var1710=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler=var1765, r7=var746, r0=var2975, null_type=var3608, r1=var207, java.util.Map=var1091, $r2=var1604, java.lang.Object=var2037, $z0=var875, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException=var2399, $r6=var2019, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var115, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var509, $r10=var1216, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages=var1802, $r9=var2878, $r8=var803, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable=var1710}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	$r2 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES>;	$r6 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException;	$r10 = r7.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner>;	$r9 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_BOOLEAN>;	$r8 = newarray (java.lang.String)[1];	$r8[0] = r1;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r10, $r9, $r8);	throw $r6
;block_num 2