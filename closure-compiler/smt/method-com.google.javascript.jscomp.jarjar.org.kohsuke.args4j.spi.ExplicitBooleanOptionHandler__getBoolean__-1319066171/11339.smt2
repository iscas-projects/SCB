(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var590 0)
(declare-sort var2142 0)
(declare-sort var2272 0)
(declare-sort var3975 0)
(declare-sort var3085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var2272_containsKey/1715618542 (var2272 var3975) Bool)
(declare-fun cast-from-String-to-var3975 (String) var3975)
(declare-fun var2272_get/1088891777 (var2272 var3975) var3975)
(declare-fun cast-from-var3975-to-var3085 (var3975) var3085)
(declare-const null-var590 var590)
(declare-const null-String String)
(declare-const var590-ACCEPTABLE_VALUES var2272)
(declare-const var2207 var590) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler 
(assert (not (= var2207 null-var590)))
(declare-const var3237 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3237 null-String)))
(assert true)
(define-const var2172 String (toLowerCase/415700667 var3237)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1656 var2272 var590-ACCEPTABLE_VALUES) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES> 
(define-const var3753 Bool (var2272_containsKey/1715618542 var1656 (cast-from-String-to-var3975 var2172))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES> 
(assert (not (= (ite var3753 1 0) 0))) ; Cond: $z0 != 0 
(define-const var716 var2272 var590-ACCEPTABLE_VALUES) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES> 
(define-const var3305 var3975 (var2272_get/1088891777 var716 (cast-from-String-to-var3975 var2172))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2143 var3085 (cast-from-var3975-to-var3085 var3305)) ; Statement: $r5 = (java.lang.Boolean) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), var2272_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var3975=([java.lang.String], java.lang.Object), var2272_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3975-to-var3085=([java.lang.Object], java.lang.Boolean)}
; {var590=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler, var2207=r7, var3237=r0, var2142=null_type, var2172=r1, var2272=java.util.Map, var1656=$r2, var3975=java.lang.Object, var3753=$z0, var716=$r3, var3305=$r4, var3085=java.lang.Boolean, var2143=$r5}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler=var590, r7=var2207, r0=var3237, null_type=var2142, r1=var2172, java.util.Map=var2272, $r2=var1656, java.lang.Object=var3975, $z0=var3753, $r3=var716, $r4=var3305, java.lang.Boolean=var3085, $r5=var2143}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	$r2 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES>;	$r3 = <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ExplicitBooleanOptionHandler: java.util.Map ACCEPTABLE_VALUES>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r5 = (java.lang.Boolean) $r4;	return $r5
;block_num 2