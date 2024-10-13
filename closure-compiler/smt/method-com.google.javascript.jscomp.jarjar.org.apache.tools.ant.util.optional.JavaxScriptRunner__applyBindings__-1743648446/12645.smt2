(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var2312 0)
(declare-sort var680 0)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBeans/1088067793 (var54) var680)
(declare-fun cast-from-var2654-to-var54 (var2654) var54)
(declare-fun getLanguage/-764431537 (var54) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var680_forEach/1471512036 (var680 var2312) void)
(declare-const null-var2654 var2654)
(declare-const null-var2312 var2312)
(declare-const var2220 var2654) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner 
(assert (not (= var2220 null-var2654)))
(declare-const var3704 var2312) ; Statement: r3 := @parameter0: java.util.function.BiConsumer 
(assert (not (= var3704 null-var2312)))
(assert true)
(define-const var3888 var680 (getBeans/1088067793 (cast-from-var2654-to-var54 var2220))) ; Statement: r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner: java.util.Map getBeans()>() 
(define-const var354 String "FX") ; Statement: $r2 = "FX" 
(assert true)
(define-const var1487 String (getLanguage/-764431537 (cast-from-var2654-to-var54 var2220))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner: java.lang.String getLanguage()>() 
(assert true)
(define-const var3499 Bool (equalsIgnoreCase/-92311102 var354 var1487)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r10.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r3) 
(assert (= (ite var3499 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var680_forEach/1471512036 var3888 var3704)) ; Statement: interfaceinvoke r10.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r3) 

(declare-const var3888!1 var680)
(declare-const var3704!1 var2312)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBeans/1088067793=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase], java.util.Map), cast-from-var2654-to-var54=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase), getLanguage/-764431537=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var680_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void)}
; {var2654=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner, var2220=r0, var2312=java.util.function.BiConsumer, var3704=r3, var680=java.util.Map, var54=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var3888=r10, var354=$r2, var1487=$r1, var3499=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner=var2654, r0=var2220, java.util.function.BiConsumer=var2312, r3=var3704, java.util.Map=var680, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var54, r10=var3888, $r2=var354, $r1=var1487, $z0=var3499}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner;	r3 := @parameter0: java.util.function.BiConsumer;	r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner: java.util.Map getBeans()>();	$r2 = "FX";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.optional.JavaxScriptRunner: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	if $z0 == 0 goto interfaceinvoke r10.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r3);	interfaceinvoke r10.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r3);	return
;block_num 2