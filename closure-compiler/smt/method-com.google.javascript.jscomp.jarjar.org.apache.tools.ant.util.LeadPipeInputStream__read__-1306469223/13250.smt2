(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var606 0)
(declare-sort var1689 0)
(declare-sort var3542 0)
(declare-sort var2261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getMessage/849299655 (var3542) String)
(declare-fun cast-from-var1689-to-var3542 (var1689) var3542)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun in/-2035951696 (var2261) Int)
(declare-fun cast-from-var606-to-var2261 (var606) var2261)
(declare-const null-var606 var606)
(declare-const null-var1689 var1689)
(declare-const var2924 var606) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LeadPipeInputStream 
(assert (not (= var2924 null-var606)))
(define-const var994 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var1652 Int var994) ; Statement: i8 = $i10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1664 var1689) ; Statement: $r1 := @caughtexception 
(assert (not (= var1664 null-var1689)))
(assert true)
(define-const var2647 String (getMessage/849299655 (cast-from-var1689-to-var3542 var1664))) ; Statement: r2 = virtualinvoke $r1.<java.io.IOException: java.lang.String getMessage()>() 
(define-const var1988 String "write end dead") ; Statement: $r3 = "write end dead" 
(assert true)
(define-const var353 Bool (equalsIgnoreCase/-92311102 var1988 var2647)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if $z0 != 0 goto $i0 = r0.<java.io.PipedInputStream: int in> 
(assert (not (= (ite var353 1 0) 0))) ; Cond: $z0 != 0 
(define-const var586 Int (in/-2035951696 (cast-from-var606-to-var2261 var2924))) ; Statement: $i0 = r0.<java.io.PipedInputStream: int in> 
 ; Statement: if $i0 <= 0 goto return i8 
(assert (<= var586 0)) ; Cond: $i0 <= 0 
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1689-to-var3542=([java.io.IOException], java.lang.Throwable), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), in/-2035951696=([java.io.PipedInputStream], int), cast-from-var606-to-var2261=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LeadPipeInputStream], java.io.PipedInputStream)}
; {var606=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LeadPipeInputStream, var2924=r0, var994=$i10, var1652=i8, var1689=java.io.IOException, var1664=$r1, var3542=java.lang.Throwable, var2647=r2, var1988=$r3, var353=$z0, var2261=java.io.PipedInputStream, var586=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LeadPipeInputStream=var606, r0=var2924, $i10=var994, i8=var1652, java.io.IOException=var1689, $r1=var1664, java.lang.Throwable=var3542, r2=var2647, $r3=var1988, $z0=var353, java.io.PipedInputStream=var2261, $i0=var586}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LeadPipeInputStream;	$i10 = (int) -1;	i8 = $i10;	$r1 := @caughtexception;	r2 = virtualinvoke $r1.<java.io.IOException: java.lang.String getMessage()>();	$r3 = "write end dead";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if $z0 != 0 goto $i0 = r0.<java.io.PipedInputStream: int in>;	$i0 = r0.<java.io.PipedInputStream: int in>;	if $i0 <= 0 goto return i8;	return i8
;block_num 4