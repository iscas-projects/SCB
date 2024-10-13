(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var319 0)
(declare-sort var2176 0)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var397_writeGarbageCollectionStats/1082175102 (var319 Bool Bool) void)
(declare-fun var397_writeMemoryMetrics/-1551806692 (var319 Bool Bool) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var319 var319)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var742 var319) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var742 null-var319)))
(declare-const var1407 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1407 null-String)))
(declare-const var3343 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3343 null-Bool)))
(declare-const var3931 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3931 null-Bool)))
(assert true)
(define-const var3708 Bool (= var1407 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var3708 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var397_writeGarbageCollectionStats/1082175102 var742 var3343 var3931)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var742!1 var319)
(declare-const var3343!1 Bool)
(declare-const var3931!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var1517 Bool (= var1407 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var1517 1 0) 0))) ; Cond: $z6 != 0 
;(assert (var397_writeMemoryMetrics/-1551806692 var742!1 var3343!1 var3931!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var742!2 var319)
(declare-const var3343!2 Bool)
(declare-const var3931!2 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var704 Bool (= var1407 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var704 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(assert true)
(define-const var2345 Bool (equalsIgnoreCase/-92311102 var1407 "all")) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2345 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var397_writeGarbageCollectionStats/1082175102=([java.io.PrintStream, boolean, boolean], void), var397_writeMemoryMetrics/-1551806692=([java.io.PrintStream, boolean, boolean], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var319=java.io.PrintStream, var742=r1, var1407=r0, var2176=null_type, var3343=z1, var3931=z2, var3708=$z0, var397=com.google.javascript.jscomp.JvmMetrics, var1517=$z6, var704=$z7, var2345=$z3}
; {java.io.PrintStream=var319, r1=var742, r0=var1407, null_type=var2176, z1=var3343, z2=var3931, $z0=var3708, com.google.javascript.jscomp.JvmMetrics=var397, $z6=var1517, $z7=var704, $z3=var2345}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z3 == 0 goto return;	return
;block_num 7