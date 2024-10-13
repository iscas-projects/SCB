(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var2606 0)
(declare-sort var937 0)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun calendarFields/-565345147 (var248) var2606)
(declare-fun getValue/-1445752687 (var937) String)
(declare-fun cast-from-var248-to-var937 (var248) var937)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var2606_get/1088891777 (var2606 var1214) var1214)
(declare-fun cast-from-String-to-var1214 (String) var1214)
(declare-fun cast-from-var1214-to-Int (var1214) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var248 var248)
(declare-const var838 var248) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit 
(assert (not (= var838 null-var248)))
(define-const var77 var2606 (calendarFields/-565345147 var838)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit: java.util.Map calendarFields> 
(assert true)
(define-const var2381 String (getValue/-1445752687 (cast-from-var248-to-var937 var838))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit: java.lang.String getValue()>() 
(assert true)
(define-const var1139 String (toLowerCase/415700667 var2381)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var729 var1214 (var2606_get/1088891777 var77 (cast-from-String-to-var1214 var1139))) ; Statement: $r4 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var1908 Int (cast-from-var1214-to-Int var729)) ; Statement: $r5 = (java.lang.Integer) $r4 
(assert true)
(define-const var2984 Int (intValue/-1815674922 var1908)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {calendarFields/-565345147=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit], java.util.Map), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var248-to-var937=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), toLowerCase/415700667=([java.lang.String], java.lang.String), var2606_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1214=([java.lang.String], java.lang.Object), cast-from-var1214-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var248=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit, var838=r0, var2606=java.util.Map, var77=$r1, var937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2381=$r2, var1139=$r3, var1214=java.lang.Object, var729=$r4, var1908=$r5, var2984=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit=var248, r0=var838, java.util.Map=var2606, $r1=var77, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var937, $r2=var2381, $r3=var1139, java.lang.Object=var1214, $r4=var729, $r5=var1908, $i0=var2984}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit: java.util.Map calendarFields>;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Unit: java.lang.String getValue()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>();	$r4 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	$r5 = (java.lang.Integer) $r4;	$i0 = virtualinvoke $r5.<java.lang.Integer: int intValue()>();	return $i0
;block_num 1