(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var511 0)
(declare-sort var746 0)
(declare-sort var3745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3745_writeMemoryMetrics/-1551806692 (var511 Bool Bool) void)
(declare-const null-var511 var511)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1051 var511) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1051 null-var511)))
(declare-const var2302 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2302 null-String)))
(declare-const var1604 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1604 null-Bool)))
(declare-const var2519 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var2519 null-Bool)))
(assert true)
(define-const var201 Bool (= var2302 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var201 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1730 Bool (equalsIgnoreCase/-92311102 var2302 "all")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
(assert (= (ite var1730 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var1881 Bool (= var2302 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1881 1 0) 0))) ; Cond: $z6 != 0 
;(assert (var3745_writeMemoryMetrics/-1551806692 var1051 var1604 var2519)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var1051!1 var511)
(declare-const var1604!1 Bool)
(declare-const var2519!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var3215 Bool (= var2302 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var3215 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(assert true)
(define-const var735 Bool (equalsIgnoreCase/-92311102 var2302 "all")) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var735 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3745_writeMemoryMetrics/-1551806692=([java.io.PrintStream, boolean, boolean], void)}
; {var511=java.io.PrintStream, var1051=r1, var2302=r0, var746=null_type, var1604=z1, var2519=z2, var201=$z0, var1730=$z5, var1881=$z6, var3745=com.google.javascript.jscomp.JvmMetrics, var3215=$z7, var735=$z3}
; {java.io.PrintStream=var511, r1=var1051, r0=var2302, null_type=var746, z1=var1604, z2=var2519, $z0=var201, $z5=var1730, $z6=var1881, com.google.javascript.jscomp.JvmMetrics=var3745, $z7=var3215, $z3=var735}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z3 == 0 goto return;	return
;block_num 7