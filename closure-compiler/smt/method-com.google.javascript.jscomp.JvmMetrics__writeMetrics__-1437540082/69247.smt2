(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2527 0)
(declare-sort var179 0)
(declare-sort var2599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2599_writeGarbageCollectionStats/1082175102 (var2527 Bool Bool) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2527 var2527)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2908 var2527) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var2908 null-var2527)))
(declare-const var3232 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3232 null-String)))
(declare-const var804 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var804 null-Bool)))
(declare-const var907 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var907 null-Bool)))
(assert true)
(define-const var2714 Bool (= var3232 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var2714 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var2599_writeGarbageCollectionStats/1082175102 var2908 var804 var907)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var2908!1 var2527)
(declare-const var804!1 Bool)
(declare-const var907!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var3454 Bool (= var3232 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var3454 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(assert true)
(define-const var847 Bool (equalsIgnoreCase/-92311102 var3232 "all")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
(assert (= (ite var847 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2648 Bool (= var3232 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var2648 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(assert true)
(define-const var3384 Bool (equalsIgnoreCase/-92311102 var3232 "all")) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var3384 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2599_writeGarbageCollectionStats/1082175102=([java.io.PrintStream, boolean, boolean], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2527=java.io.PrintStream, var2908=r1, var3232=r0, var179=null_type, var804=z1, var907=z2, var2714=$z0, var2599=com.google.javascript.jscomp.JvmMetrics, var3454=$z6, var847=$z4, var2648=$z7, var3384=$z3}
; {java.io.PrintStream=var2527, r1=var2908, r0=var3232, null_type=var179, z1=var804, z2=var907, $z0=var2714, com.google.javascript.jscomp.JvmMetrics=var2599, $z6=var3454, $z4=var847, $z7=var2648, $z3=var3384}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z3 == 0 goto return;	return
;block_num 7