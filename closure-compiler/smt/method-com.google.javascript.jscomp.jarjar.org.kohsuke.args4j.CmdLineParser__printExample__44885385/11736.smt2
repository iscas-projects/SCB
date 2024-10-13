(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var127 0)
(declare-sort var3002 0)
(declare-sort var142 0)
(declare-sort var62 0)
(declare-sort var1622 0)
(declare-sort var2826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var62_checkNonNull/-2088553495 (var1622 String) void)
(declare-fun cast-from-var3002-to-var1622 (var3002) var1622)
(declare-fun options/-2095635781 (var127) var2826)
(declare-fun var2826_iterator/-912451715 (var2826) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var127 var127)
(declare-const null-var3002 var3002)
(declare-const null-var142 var142)
(declare-const var1134 var127) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var1134 null-var127)))
(declare-const var671 var3002) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionHandlerFilter 
(assert (not (= var671 null-var3002)))
(declare-const var2477 var142) ; Statement: r10 := @parameter1: java.util.ResourceBundle 
(assert (not (= var2477 null-var142)))
(define-const var274 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
;(assert (var62_checkNonNull/-2088553495 (cast-from-var3002-to-var1622 var671) "mode")) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r1, "mode") 

(declare-const var671!1 var3002)
(declare-const var3016 String)
(define-const var1517 var2826 (options/-2095635781 var1134)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List options> 
(define-const var1228 Iterator (var2826_iterator/-912451715 var1517)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1056 Bool (Iterator_hasNext/-1669924200 var1228)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1056 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var244 String (toString/-2075883882 var274!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var62_checkNonNull/-2088553495=([java.lang.Object, java.lang.String], void), cast-from-var3002-to-var1622=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionHandlerFilter], java.lang.Object), options/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], java.util.List), var2826_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var127=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var1134=r2, var3002=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionHandlerFilter, var671=r1, var142=java.util.ResourceBundle, var2477=r10, var274=$r0, var62=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities, var1622=java.lang.Object, var3016="mode", var2826=java.util.List, var1517=$r3, var1228=r4, var1056=$z1, var244=$r5}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var127, r2=var1134, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionHandlerFilter=var3002, r1=var671, java.util.ResourceBundle=var142, r10=var2477, $r0=var274, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities=var62, java.lang.Object=var1622, "mode"=var3016, java.util.List=var2826, $r3=var1517, r4=var1228, $z1=var1056, $r5=var244}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionHandlerFilter;	r10 := @parameter1: java.util.ResourceBundle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Utilities: void checkNonNull(java.lang.Object,java.lang.String)>(r1, "mode");	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: java.util.List options>;	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3