(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3917 0)
(declare-sort var408 0)
(declare-sort var2320 0)
(declare-sort var509 0)
(declare-sort var3065 0)
(declare-sort var1410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exp/36539919 (var408) var2320)
(declare-fun cast-from-var2320-to-var509 (var2320) var509)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ordinal/319082119 (var509) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3065 String) void)
(declare-const null-var3917 var3917)
(declare-const null-var408 var408)
(declare-const var1410-err var3065)
(declare-const var1845 var3917) ; Statement: r27 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1845 null-var3917)))
(declare-const var882 var408) ; Statement: r0 := @parameter0: org.javacc.parser.Phase3Data 
(assert (not (= var882 null-var408)))
(define-const var52 var2320 (exp/36539919 var882)) ; Statement: r1 = r0.<org.javacc.parser.Phase3Data: org.javacc.parser.Expansion exp> 
(define-const var1243 Bool false) ; Statement: $z0 = r1 instanceof org.javacc.parser.RegularExpression 
 ; Statement: if $z0 == 0 goto $z1 = r1 instanceof org.javacc.parser.NonTerminal 
(assert (not (= (ite var1243 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2738 var509 (cast-from-var2320-to-var509 var52)) ; Statement: r80 = (org.javacc.parser.RegularExpression) r1 
(define-const var3564 var3065 var1410-err) ; Statement: $r76 = <java.lang.System: java.io.PrintStream err> 
(define-const var2051 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2051)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2051!1 String)
(assert (= var2051!1 ""))
(assert true)
(define-const var2217 String (append/672562846 var2051!1 "TOKEN, ")) ; Statement: $r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TOKEN, ") 
(declare-const var2051!2 String)
(assert (= var2051!2 (str.++ var2051!1 "TOKEN, ")))
(define-const var886 Int (ordinal/319082119 var2738)) ; Statement: $i12 = r80.<org.javacc.parser.RegularExpression: int ordinal> 
(assert true)
(define-const var2137 String (append/-1001720160 var2217 var886)) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var2217!1 String)
(assert (str.prefixof var2217 var2217!1))
(assert true)
(define-const var2171 String (toString/-2075883882 var2137)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3564 var2171)) ; Statement: virtualinvoke $r76.<java.io.PrintStream: void println(java.lang.String)>($r79) 

(declare-const var3564!1 var3065)
(declare-const var2171!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exp/36539919=([org.javacc.parser.Phase3Data], org.javacc.parser.Expansion), cast-from-var2320-to-var509=([org.javacc.parser.Expansion], org.javacc.parser.RegularExpression), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ordinal/319082119=([org.javacc.parser.RegularExpression], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3917=org.javacc.parser.ParseEngine, var1845=r27, var408=org.javacc.parser.Phase3Data, var882=r0, var2320=org.javacc.parser.Expansion, var52=r1, var1243=$z0, var509=org.javacc.parser.RegularExpression, var2738=r80, var3065=java.io.PrintStream, var1410=java.lang.System, var3564=$r76, var2051=$r75, var2217=$r77, var886=$i12, var2137=$r78, var2171=$r79}
; {org.javacc.parser.ParseEngine=var3917, r27=var1845, org.javacc.parser.Phase3Data=var408, r0=var882, org.javacc.parser.Expansion=var2320, r1=var52, $z0=var1243, org.javacc.parser.RegularExpression=var509, r80=var2738, java.io.PrintStream=var3065, java.lang.System=var1410, $r76=var3564, $r75=var2051, $r77=var2217, $i12=var886, $r78=var2137, $r79=var2171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r27 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Phase3Data;	r1 = r0.<org.javacc.parser.Phase3Data: org.javacc.parser.Expansion exp>;	$z0 = r1 instanceof org.javacc.parser.RegularExpression;	if $z0 == 0 goto $z1 = r1 instanceof org.javacc.parser.NonTerminal;	r80 = (org.javacc.parser.RegularExpression) r1;	$r76 = <java.lang.System: java.io.PrintStream err>;	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TOKEN, ");	$i12 = r80.<org.javacc.parser.RegularExpression: int ordinal>;	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r76.<java.io.PrintStream: void println(java.lang.String)>($r79);	goto [?= return];	return
;block_num 3