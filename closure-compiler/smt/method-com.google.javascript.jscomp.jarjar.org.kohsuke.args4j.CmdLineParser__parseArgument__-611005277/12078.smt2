(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var961 0)
(declare-sort var2232 0)
(declare-sort var1103 0)
(declare-sort var2063 0)
(declare-sort var593 0)
(declare-sort var3836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var961_checkNonNull/-2088553495 (var2232 String) void)
(declare-fun cast-from-__Array__Int__String__-to-var2232 ((Array Int String)) var2232)
(declare-fun parserProperties/-2095635781 (var1565) var1103)
(declare-fun getAtSyntax/-1386779241 (var1103) Bool)
(declare-fun var2063-init () var2063)
(declare-fun <init>/1765704284 (var2063 var1565 (Array Int String)) void)
(declare-fun var593-init () var593)
(declare-fun <init>/451842749 (var593) void)
(declare-fun hasMore/-1049348787 (var2063) Bool)
(declare-fun options/-2095635781 (var1565) var3836)
(declare-fun var3836_iterator/-912451715 (var3836) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1565 var1565)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2118 var1565) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var2118 null-var1565)))
(declare-const var3798 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var3798 null-__Array__Int__String__)))
;(assert (var961_checkNonNull/-2088553495 (cast-from-__Array__Int__String__-to-var2232 var3798) "args")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r0, "args") 

(declare-const var3798!1 (Array Int String))
(declare-const var1950 String)
(define-const var2572 (Array Int String) var3798!1) ; Statement: r31 = r0 
(define-const var903 var1103 (parserProperties/-2095635781 var2118)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert true)
(define-const var2826 Bool (getAtSyntax/-1386779241 var903)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: boolean getAtSyntax()>() 
 ; Statement: if $z0 == 0 goto $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl 
(assert (= (ite var2826 1 0) 0)) ; Cond: $z0 == 0 
(define-const var443 var2063 var2063-init) ; Statement: $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl 
(assert true)
;(assert (<init>/1765704284 var443 var2118 var2572)) ; Statement: specialinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,java.lang.String[])>(r1, r31) 

(declare-const var443!1 var2063)
(declare-const var2118!1 var1565)
(declare-const var2572!1 (Array Int String))
(define-const var299 var593 var593-init) ; Statement: $r39 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var299)) ; Statement: specialinvoke $r39.<java.util.HashSet: void <init>()>() 

(declare-const var299!1 var593)
(define-const var2183 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2375 Bool (hasMore/-1049348787 var443!1)) ; Statement: $z7 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: boolean hasMore()>() 
 ; Statement: if $z7 == 0 goto z10 = 0 
(assert (= (ite var2375 1 0) 0)) ; Cond: $z7 == 0 
(define-const var123 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var2851 var3836 (options/-2095635781 var2118!1)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List options> 
(define-const var1603 Iterator (var3836_iterator/-912451715 var2851)) ; Statement: r37 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1502 Bool (Iterator_hasNext/-1669924200 var1603)) ; Statement: $z1 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1502 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z10 != 0 goto return 
(assert (not (= (ite var123 1 0) 0))) ; Cond: z10 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var961_checkNonNull/-2088553495=([java.lang.Object, java.lang.String], void), cast-from-__Array__Int__String__-to-var2232=([java.lang.String[]], java.lang.Object), parserProperties/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties), getAtSyntax/-1386779241=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties], boolean), var2063-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl), <init>/1765704284=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, java.lang.String[]], void), var593-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), hasMore/-1049348787=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl], boolean), options/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], java.util.List), var3836_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1565=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var2118=r1, var3798=r0, var961=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities, var2232=java.lang.Object, var1950="args", var2572=r31, var1103=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties, var903=$r2, var2826=$z0, var2063=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl, var443=$r38, var593=java.util.HashSet, var299=$r39, var2183=i3, var2375=$z7, var123=z10, var3836=java.util.List, var2851=$r5, var1603=r37, var1502=$z1}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var1565, r1=var2118, r0=var3798, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities=var961, java.lang.Object=var2232, "args"=var1950, r31=var2572, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties=var1103, $r2=var903, $z0=var2826, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl=var2063, $r38=var443, java.util.HashSet=var593, $r39=var299, i3=var2183, $z7=var2375, z10=var123, java.util.List=var3836, $r5=var2851, r37=var1603, $z1=var1502}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r0 := @parameter0: java.lang.String[];	staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r0, "args");	r31 = r0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: boolean getAtSyntax()>();	if $z0 == 0 goto $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl;	$r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl;	specialinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,java.lang.String[])>(r1, r31);	$r39 = new java.util.HashSet;	specialinvoke $r39.<java.util.HashSet: void <init>()>();	i3 = 0;	$z7 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: boolean hasMore()>();	if $z7 == 0 goto z10 = 0;	z10 = 0;	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List options>;	r37 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r37.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto (branch);	if z10 != 0 goto return;	return
;block_num 7