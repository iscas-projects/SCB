(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2950 0)
(declare-sort var1322 0)
(declare-sort var2435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var1322) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-const null-var2950 var2950)
(declare-const null-var1322 var1322)
(declare-const null-var2435 var2435)
(declare-const var2130 var2950) ; Statement: r3 := @this: com.github.jknack.handlebars.helper.StringHelpers$10 
(assert (not (= var2130 null-var2950)))
(declare-const var3259 var1322) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3259 null-var1322)))
(declare-const var3181 var2435) ; Statement: r4 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var3181 null-var2435)))
(assert true)
(define-const var2404 String (toString/-522406933 var3259)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3009 String (toUpperCase/1156088314 var2404)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String)}
; {var2950=com.github.jknack.handlebars.helper.StringHelpers$10, var2130=r3, var1322=java.lang.Object, var3259=r0, var2435=com.github.jknack.handlebars.Options, var3181=r4, var2404=$r1, var3009=$r2}
; {com.github.jknack.handlebars.helper.StringHelpers$10=var2950, r3=var2130, java.lang.Object=var1322, r0=var3259, com.github.jknack.handlebars.Options=var2435, r4=var3181, $r1=var2404, $r2=var3009}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.helper.StringHelpers$10;	r0 := @parameter0: java.lang.Object;	r4 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>();	return $r2
;block_num 1