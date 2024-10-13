(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2232 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun nextToken/-418815358 (var2232) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var2232 var2232)
(declare-const null-String String)
(declare-const var3532 var2232) ; Statement: r1 := @parameter0: java.util.StringTokenizer 
(assert (not (= var3532 null-var2232)))
(declare-const var866 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var866 null-String)))
(define-const var368 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var368)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var368!1 String)
(assert (= var368!1 ""))
(assert true)
(define-const var3120 String (nextToken/-418815358 var3532)) ; Statement: r5 = virtualinvoke r1.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2497 Bool (equalsIgnoreCase/-92311102 var866 var3120)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r5) 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2497 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3726 String (toString/-2075883882 var368!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1985 String (trim/-847153721 var3726)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2232=java.util.StringTokenizer, var3532=r1, var866=r2, var2473=null_type, var368=$r0, var3120=r5, var2497=$z0, var3726=$r3, var1985=$r4}
; {java.util.StringTokenizer=var2232, r1=var3532, r2=var866, null_type=var2473, $r0=var368, r5=var3120, $z0=var2497, $r3=var3726, $r4=var1985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @parameter0: java.util.StringTokenizer;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r5 = virtualinvoke r1.<java.util.StringTokenizer: java.lang.String nextToken()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r5);	if $z0 != 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	return $r4
;block_num 3