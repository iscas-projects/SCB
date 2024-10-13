(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var3817 0)
(declare-sort var3418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3817) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var1314 var1314)
(declare-const null-var3817 var3817)
(declare-const null-var3418 var3418)
(declare-const var3268 var1314) ; Statement: r3 := @this: com.github.jknack.handlebars.helper.StringHelpers$9 
(assert (not (= var3268 null-var1314)))
(declare-const var933 var3817) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var933 null-var3817)))
(declare-const var2649 var3418) ; Statement: r4 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2649 null-var3418)))
(assert true)
(define-const var3091 String (toString/-522406933 var933)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1476 String (toLowerCase/415700667 var3091)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var1314=com.github.jknack.handlebars.helper.StringHelpers$9, var3268=r3, var3817=java.lang.Object, var933=r0, var3418=com.github.jknack.handlebars.Options, var2649=r4, var3091=$r1, var1476=$r2}
; {com.github.jknack.handlebars.helper.StringHelpers$9=var1314, r3=var3268, java.lang.Object=var3817, r0=var933, com.github.jknack.handlebars.Options=var3418, r4=var2649, $r1=var3091, $r2=var1476}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.helper.StringHelpers$9;	r0 := @parameter0: java.lang.Object;	r4 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	return $r2
;block_num 1