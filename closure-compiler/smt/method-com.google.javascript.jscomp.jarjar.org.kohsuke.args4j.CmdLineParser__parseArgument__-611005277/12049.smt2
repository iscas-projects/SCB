(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3017 0)
(declare-sort var2776 0)
(declare-sort var2957 0)
(declare-sort var3181 0)
(declare-sort var3416 0)
(declare-sort var3298 0)
(declare-sort var870 0)
(declare-sort var1755 0)
(declare-sort var3602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2776_checkNonNull/-2088553495 (var2957 String) void)
(declare-fun cast-from-__Array__Int__String__-to-var2957 ((Array Int String)) var2957)
(declare-fun parserProperties/-2095635781 (var3017) var3181)
(declare-fun getAtSyntax/-1386779241 (var3181) Bool)
(declare-fun var3416-init () var3416)
(declare-fun <init>/1765704284 (var3416 var3017 (Array Int String)) void)
(declare-fun var3298-init () var3298)
(declare-fun <init>/451842749 (var3298) void)
(declare-fun hasMore/-1049348787 (var3416) Bool)
(declare-fun getCurrentToken/-1645878469 (var3416) String)
(declare-fun isOption/537223278 (var3017 String) Bool)
(declare-fun arguments/-2095635781 (var3017) var870)
(declare-fun var870_size/-959786421 (var870) Int)
(declare-fun var870_get/-1216255739 (var870 Int) var2957)
(declare-fun cast-from-var2957-to-var1755 (var2957) var1755)
(declare-fun currentOptionHandler/-2095635781 (var3017) var1755)
(declare-fun var3602-init () var3602)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3602 String) void)
(declare-const null-var3017 var3017)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1755 var1755)
(declare-const var2352 var3017) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var2352 null-var3017)))
(declare-const var2093 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2093 null-__Array__Int__String__)))
;(assert (var2776_checkNonNull/-2088553495 (cast-from-__Array__Int__String__-to-var2957 var2093) "args")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r0, "args") 

(declare-const var2093!1 (Array Int String))
(declare-const var2153 String)
(define-const var3629 (Array Int String) var2093!1) ; Statement: r31 = r0 
(define-const var3244 var3181 (parserProperties/-2095635781 var2352)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert true)
(define-const var998 Bool (getAtSyntax/-1386779241 var3244)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: boolean getAtSyntax()>() 
 ; Statement: if $z0 == 0 goto $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl 
(assert (= (ite var998 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3315 var3416 var3416-init) ; Statement: $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl 
(assert true)
;(assert (<init>/1765704284 var3315 var2352 var3629)) ; Statement: specialinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,java.lang.String[])>(r1, r31) 

(declare-const var3315!1 var3416)
(declare-const var2352!1 var3017)
(declare-const var3629!1 (Array Int String))
(define-const var3015 var3298 var3298-init) ; Statement: $r39 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var3015)) ; Statement: specialinvoke $r39.<java.util.HashSet: void <init>()>() 

(declare-const var3015!1 var3298)
(define-const var2383 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1517 Bool (hasMore/-1049348787 var3315!1)) ; Statement: $z7 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: boolean hasMore()>() 
 ; Statement: if $z7 == 0 goto z10 = 0 
(assert (not (= (ite var1517 1 0) 0))) ; Negate: Cond: $z7 == 0  
(assert true)
(define-const var1142 String (getCurrentToken/-1645878469 var3315!1)) ; Statement: r32 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: java.lang.String getCurrentToken()>() 
(assert true)
(define-const var1815 Bool (isOption/537223278 var2352!1 var1142)) ; Statement: $z4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: boolean isOption(java.lang.String)>(r32) 
 ; Statement: if $z4 == 0 goto $r9 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments> 
(assert (= (ite var1815 1 0) 0)) ; Cond: $z4 == 0 
(define-const var839 var870 (arguments/-2095635781 var2352!1)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments> 
(define-const var22 Int (var870_size/-959786421 var839)) ; Statement: $i0 = interfaceinvoke $r9.<java.util.List: int size()>() 
 ; Statement: if i3 < $i0 goto $r10 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments> 
(assert (< var2383 var22)) ; Cond: i3 < $i0 
(define-const var940 var870 (arguments/-2095635781 var2352!1)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments> 
(define-const var3603 var2957 (var870_get/-1216255739 var940 var2383)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.List: java.lang.Object get(int)>(i3) 
(define-const var3519 var1755 (cast-from-var2957-to-var1755 var3603)) ; Statement: $r12 = (com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler) $r11 
(declare-const var2352!2 var3017)
(assert (not (= var2352!2 null-var3017)))
(assert (= (currentOptionHandler/-2095635781 var2352!2) var3519)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler> = $r12 
(define-const var223 var1755 (currentOptionHandler/-2095635781 var2352!2)) ; Statement: $r13 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler> 
 ; Statement: if $r13 != null goto $r14 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler> 
(assert (not (not (= var223 null-var1755)))) ; Negate: Cond: $r13 != null  
(define-const var90 var3602 var3602-init) ; Statement: $r43 = new java.lang.IllegalStateException 
(define-const var1695 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1695)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1695!1 String)
(assert (= var1695!1 ""))
(assert true)
(define-const var538 String (append/672562846 var1695!1 "@Argument with index=")) ; Statement: $r18 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Argument with index=") 
(declare-const var1695!2 String)
(assert (= var1695!2 (str.++ var1695!1 "@Argument with index=")))
(assert true)
(define-const var3965 String (append/-1001720160 var538 var2383)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var538!1 String)
(assert (str.prefixof var538 var538!1))
(assert true)
(define-const var771 String (append/672562846 var3965 " is undefined")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is undefined") 
(declare-const var3965!1 String)
(assert (= var3965!1 (str.++ var3965 " is undefined")))
(assert true)
(define-const var2494 String (toString/-2075883882 var771)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var90 var2494)) ; Statement: specialinvoke $r43.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var90!1 var3602)
(declare-const var2494!1 String)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {var2776_checkNonNull/-2088553495=([java.lang.Object, java.lang.String], void), cast-from-__Array__Int__String__-to-var2957=([java.lang.String[]], java.lang.Object), parserProperties/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties), getAtSyntax/-1386779241=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties], boolean), var3416-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl), <init>/1765704284=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, java.lang.String[]], void), var3298-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), hasMore/-1049348787=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl], boolean), getCurrentToken/-1645878469=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl], java.lang.String), isOption/537223278=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, java.lang.String], boolean), arguments/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], java.util.List), var870_size/-959786421=([java.util.List], int), var870_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2957-to-var1755=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), currentOptionHandler/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), var3602-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3017=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var2352=r1, var2093=r0, var2776=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities, var2957=java.lang.Object, var2153="args", var3629=r31, var3181=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties, var3244=$r2, var998=$z0, var3416=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl, var3315=$r38, var3298=java.util.HashSet, var3015=$r39, var2383=i3, var1517=$z7, var1142=r32, var1815=$z4, var870=java.util.List, var839=$r9, var22=$i0, var940=$r10, var3603=$r11, var1755=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var3519=$r12, var223=$r13, var3602=java.lang.IllegalStateException, var90=$r43, var1695=$r42, var538=$r18, var3965=$r19, var771=$r20, var2494=$r21}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var3017, r1=var2352, r0=var2093, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities=var2776, java.lang.Object=var2957, "args"=var2153, r31=var3629, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties=var3181, $r2=var3244, $z0=var998, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl=var3416, $r38=var3315, java.util.HashSet=var3298, $r39=var3015, i3=var2383, $z7=var1517, r32=var1142, $z4=var1815, java.util.List=var870, $r9=var839, $i0=var22, $r10=var940, $r11=var3603, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var1755, $r12=var3519, $r13=var223, java.lang.IllegalStateException=var3602, $r43=var90, $r42=var1695, $r18=var538, $r19=var3965, $r20=var771, $r21=var2494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r0 := @parameter0: java.lang.String[];	staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r0, "args");	r31 = r0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: boolean getAtSyntax()>();	if $z0 == 0 goto $r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl;	$r38 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl;	specialinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: void <init>(com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser,java.lang.String[])>(r1, r31);	$r39 = new java.util.HashSet;	specialinvoke $r39.<java.util.HashSet: void <init>()>();	i3 = 0;	$z7 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: boolean hasMore()>();	if $z7 == 0 goto z10 = 0;	r32 = virtualinvoke $r38.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser$CmdLineImpl: java.lang.String getCurrentToken()>();	$z4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: boolean isOption(java.lang.String)>(r32);	if $z4 == 0 goto $r9 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments>;	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments>;	$i0 = interfaceinvoke $r9.<java.util.List: int size()>();	if i3 < $i0 goto $r10 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments>;	$r10 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List arguments>;	$r11 = interfaceinvoke $r10.<java.util.List: java.lang.Object get(int)>(i3);	$r12 = (com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler) $r11;	r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler> = $r12;	$r13 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler>;	if $r13 != null goto $r14 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler currentOptionHandler>;	$r43 = new java.lang.IllegalStateException;	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Argument with index=");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is undefined");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r43.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r43
;block_num 7