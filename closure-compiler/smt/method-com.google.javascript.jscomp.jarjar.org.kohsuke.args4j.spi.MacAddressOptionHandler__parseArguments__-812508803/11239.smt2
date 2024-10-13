(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var3034 0)
(declare-sort var2193 0)
(declare-sort var936 0)
(declare-sort var904 0)
(declare-sort var3292 0)
(declare-sort var3810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3034_getParameter/-363839198 (var3034 Int) String)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun var2193-init () var2193)
(declare-fun owner/338944513 (var904) var936)
(declare-fun cast-from-var748-to-var904 (var748) var904)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/-83816806 (var2193 var936 var3810 (Array Int String)) void)
(declare-fun cast-from-var3292-to-var3810 (var3292) var3810)
(declare-const null-var748 var748)
(declare-const null-var3034 var3034)
(declare-const var3292-ILLEGAL_MAC_ADDRESS var3292)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1067 var748) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler 
(assert (not (= var1067 null-var748)))
(declare-const var2389 var3034) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters 
(assert (not (= var2389 null-var3034)))
(define-const var3757 String (var3034_getParameter/-363839198 var2389 0)) ; Statement: r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0) 
(assert true)
(define-const var1107 Bool (matches/-643015890 var3757 "[0-9a-fA-F]{12}")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("[0-9a-fA-F]{12}") 
(assert (= (matches/-643015890 var3757 "[0-9a-fA-F]{12}") (str.in_re var3757 ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}") 
(assert (= (ite var1107 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2086 Bool (matches/-643015890 var3757 "([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}") 
(assert (= (matches/-643015890 var3757 "([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}") (str.in_re var3757 (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))))))
 ; Statement: if $z1 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException 
(assert (= (ite var2086 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3512 var2193 var2193-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException 
(define-const var3434 var936 (owner/338944513 (cast-from-var748-to-var904 var1067))) ; Statement: $r6 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner> 
(define-const var3173 var3292 var3292-ILLEGAL_MAC_ADDRESS) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_MAC_ADDRESS> 
(define-const var1412 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[1] 
(declare-const var1412!1 (Array Int String))
(assert (not (= var1412!1 null-__Array__Int__String__)))
(assert (= (select var1412!1 0) var3757)) ; Statement: $r4[0] = r1 
(assert true)
;(assert (<init>/-83816806 var3512 var3434 (cast-from-var3292-to-var3810 var3173) var1412!1)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r6, $r5, $r4) 

(declare-const var3512!1 var2193)
(declare-const var3434!1 var936)
(declare-const var3173!1 var3292)
(declare-const var1412!2 (Array Int String))
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3034_getParameter/-363839198=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, int], java.lang.String), matches/-643015890=([java.lang.String, java.lang.String], boolean), var2193-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException), owner/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser), cast-from-var748-to-var904=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), arr-String-init=([], java.lang.String[]), <init>/-83816806=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable, java.lang.String[]], void), cast-from-var3292-to-var3810=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable)}
; {var748=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler, var1067=r3, var3034=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, var2389=r0, var3757=r1, var1107=$z0, var2086=$z1, var2193=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException, var3512=$r2, var936=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var904=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var3434=$r6, var3292=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages, var3173=$r5, var1412=$r4, var3810=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler=var748, r3=var1067, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters=var3034, r0=var2389, r1=var3757, $z0=var1107, $z1=var2086, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException=var2193, $r2=var3512, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var936, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var904, $r6=var3434, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages=var3292, $r5=var3173, $r4=var1412, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable=var3810}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.String: boolean matches(java.lang.String)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 2}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters;	r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0);	$z0 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("[0-9a-fA-F]{12}");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}");	$z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>("([0-9a-fA-F]{1,2}[^0-9a-fA-F]+){5}[0-9a-fA-F]{1,2}");	if $z1 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException;	$r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException;	$r6 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser owner>;	$r5 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Messages ILLEGAL_MAC_ADDRESS>;	$r4 = newarray (java.lang.String)[1];	$r4[0] = r1;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineException: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Localizable,java.lang.String[])>($r6, $r5, $r4);	throw $r2
;block_num 3