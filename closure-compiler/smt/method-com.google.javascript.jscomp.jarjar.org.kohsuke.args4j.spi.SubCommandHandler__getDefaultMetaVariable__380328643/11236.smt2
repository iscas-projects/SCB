(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1100 0)
(declare-sort var748 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun commands/197628619 (var1100) var748)
(declare-fun var748_value/781111713 (var748) (Array Int var1452))
(declare-fun getLength-Arr-var1452-1 ((Array Int var1452)) Int)
(declare-fun length/-1112840705 (String) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1100 var1100)
(declare-const var518 var1100) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler 
(assert (not (= var518 null-var1100)))
(define-const var1281 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1281)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1281!1 String)
(assert true)
;(assert (append/1560614132 var1281!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[") 
(declare-const var1281!2 String)
(assert (str.prefixof var1281!1 var1281!2))
(define-const var2644 var748 (commands/197628619 var518)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands commands> 
(define-const var2193 (Array Int var1452) (var748_value/781111713 var2644)) ; Statement: r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand[] value()>() 
(define-const var2337 Int (getLength-Arr-var1452-1 var2193)) ; Statement: i0 = lengthof r3 
(define-const var2786 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(assert (>= var2786 var2337)) ; Cond: i4 >= i0 
(assert true)
(define-const var778 Int (length/-1112840705 var1281!2)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(define-const var3542 Int (- var778 3)) ; Statement: $i3 = $i1 - 3 
(assert true)
(define-const var1678 Int (length/-1112840705 var1281!2)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>() 
(assert true)
;(assert (delete/-2415906 var1281!2 var3542 var1678)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>($i3, $i2) 

(declare-const var1281!3 String)
(declare-const var3542!1 Int)
(declare-const var1678!1 Int)
(assert true)
;(assert (append/1560614132 var1281!3 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var1281!4 String)
(assert (str.prefixof var1281!3 var1281!4))
(assert true)
(define-const var701 String (toString/-222306083 var1281!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), commands/197628619=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands), var748_value/781111713=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand[]), getLength-Arr-var1452-1=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand[]], int), length/-1112840705=([java.lang.StringBuffer], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1100=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler, var518=r1, var1281=$r0, var748=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands, var2644=$r2, var1452=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand, var2193=r3, var2337=i0, var2786=i4, var778=$i1, var3542=$i3, var1678=$i2, var701=$r4}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler=var1100, r1=var518, $r0=var1281, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands=var748, $r2=var2644, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand=var1452, r3=var2193, i0=var2337, i4=var2786, $i1=var778, $i3=var3542, $i2=var1678, $r4=var701}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: int length()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommandHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands commands>;	r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommands: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.SubCommand[] value()>();	i0 = lengthof r3;	i4 = 0;	if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	$i1 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	$i3 = $i1 - 3;	$i2 = virtualinvoke $r0.<java.lang.StringBuffer: int length()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>($i3, $i2);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 3