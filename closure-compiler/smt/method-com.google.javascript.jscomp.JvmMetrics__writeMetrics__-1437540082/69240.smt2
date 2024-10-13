(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var37 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var251_writeMemoryMetrics/-1551806692 (var989 Bool Bool) void)
(declare-fun var251_writeJitMetrics/-850728128 (var989 Bool Bool) void)
(declare-const null-var989 var989)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1448 var989) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1448 null-var989)))
(declare-const var567 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var567 null-String)))
(declare-const var1567 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1567 null-Bool)))
(declare-const var3793 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3793 null-Bool)))
(assert true)
(define-const var903 Bool (= var567 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var903 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1380 Bool (equalsIgnoreCase/-92311102 var567 "all")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
(assert (= (ite var1380 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var1665 Bool (= var567 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1665 1 0) 0))) ; Cond: $z6 != 0 
;(assert (var251_writeMemoryMetrics/-1551806692 var1448 var1567 var3793)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1448!1 var989)
(declare-const var1567!1 Bool)
(declare-const var3793!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var3049 Bool (= var567 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var3049 1 0) 0))) ; Cond: $z7 != 0 
;(assert (var251_writeJitMetrics/-850728128 var1448!1 var1567!1 var3793!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1448!2 var989)
(declare-const var1567!2 Bool)
(declare-const var3793!2 Bool)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var251_writeMemoryMetrics/-1551806692=([java.io.PrintStream, boolean, boolean], void), var251_writeJitMetrics/-850728128=([java.io.PrintStream, boolean, boolean], void)}
; {var989=java.io.PrintStream, var1448=r1, var567=r0, var37=null_type, var1567=z1, var3793=z2, var903=$z0, var1380=$z5, var1665=$z6, var251=com.google.javascript.jscomp.JvmMetrics, var3049=$z7}
; {java.io.PrintStream=var989, r1=var1448, r0=var567, null_type=var37, z1=var1567, z2=var3793, $z0=var903, $z5=var1380, $z6=var1665, com.google.javascript.jscomp.JvmMetrics=var251, $z7=var3049}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	return
;block_num 7