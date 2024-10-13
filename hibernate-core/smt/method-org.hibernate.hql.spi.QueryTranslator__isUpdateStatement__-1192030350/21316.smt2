(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1478_getQueryString/793847736 (var1478) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1478 var1478)
(declare-const var1551 var1478) ; Statement: r0 := @this: org.hibernate.hql.spi.QueryTranslator 
(assert (not (= var1551 null-var1478)))
(define-const var3503 String (var1478_getQueryString/793847736 var1551)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.hql.spi.QueryTranslator: java.lang.String getQueryString()>() 
(assert true)
(define-const var2353 String (toLowerCase/415700667 var3503)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3237 String (trim/-847153721 var2353)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var231 Bool (startsWith/-1785782452 var3237 "update")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("update") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1478_getQueryString/793847736=([org.hibernate.hql.spi.QueryTranslator], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1478=org.hibernate.hql.spi.QueryTranslator, var1551=r0, var3503=$r1, var2353=$r2, var3237=$r3, var231=$z0}
; {org.hibernate.hql.spi.QueryTranslator=var1478, r0=var1551, $r1=var3503, $r2=var2353, $r3=var3237, $z0=var231}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.QueryTranslator;	$r1 = interfaceinvoke r0.<org.hibernate.hql.spi.QueryTranslator: java.lang.String getQueryString()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("update");	return $z0
;block_num 1