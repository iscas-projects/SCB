(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3276 0)
(declare-sort var1679 0)
(declare-sort var1869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun println/1773605060 (var3276 String) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1679-out var3276)
(declare-const var1869-versionNumber String)
(declare-const var1375 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1375 null-__Array__Int__String__)))
(define-const var3306 Int (getLength-Arr-String-1 var1375)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>() 
(assert (not (not (= var3306 1)))) ; Negate: Cond: $i0 != 1  
(define-const var2183 Int (getLength-Arr-String-1 var1375)) ; Statement: $i30 = lengthof r0 
(define-const var2942 Int (- var2183 1)) ; Statement: $i31 = $i30 - 1 
(define-const var2754 String (select var1375 var2942)) ; Statement: $r78 = r0[$i31] 
(assert true)
(define-const var102 Bool (equalsIgnoreCase/-92311102 var2754 "-version")) ; Statement: $z12 = virtualinvoke $r78.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("-version") 
 ; Statement: if $z12 == 0 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>() 
(assert (not (= (ite var102 1 0) 0))) ; Negate: Cond: $z12 == 0  
(define-const var3846 var3276 var1679-out) ; Statement: $r80 = <java.lang.System: java.io.PrintStream out> 
(define-const var3257 String var1869-versionNumber) ; Statement: $r79 = <org.javacc.Version: java.lang.String versionNumber> 
(assert true)
;(assert (println/1773605060 var3846 var3257)) ; Statement: virtualinvoke $r80.<java.io.PrintStream: void println(java.lang.String)>($r79) 

(declare-const var3846!1 var3276)
(declare-const var3257!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1375=r0, var3306=$i0, var2183=$i30, var2942=$i31, var2754=$r78, var102=$z12, var3276=java.io.PrintStream, var1679=java.lang.System, var3846=$r80, var1869=org.javacc.Version, var3257=$r79}
; {r0=var1375, $i0=var3306, $i30=var2183, $i31=var2942, $r78=var2754, $z12=var102, java.io.PrintStream=var3276, java.lang.System=var1679, $r80=var3846, org.javacc.Version=var1869, $r79=var3257}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 != 1 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>();	$i30 = lengthof r0;	$i31 = $i30 - 1;	$r78 = r0[$i31];	$z12 = virtualinvoke $r78.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("-version");	if $z12 == 0 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>();	$r80 = <java.lang.System: java.io.PrintStream out>;	$r79 = <org.javacc.Version: java.lang.String versionNumber>;	virtualinvoke $r80.<java.io.PrintStream: void println(java.lang.String)>($r79);	return 0
;block_num 3