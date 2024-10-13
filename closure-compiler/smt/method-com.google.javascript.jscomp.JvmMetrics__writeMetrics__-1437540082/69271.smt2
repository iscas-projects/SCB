(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var316 0)
(declare-sort var319 0)
(declare-sort var3692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3692_writeGarbageCollectionStats/1082175102 (var316 Bool Bool) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3692_writeJitMetrics/-850728128 (var316 Bool Bool) void)
(declare-const null-var316 var316)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2525 var316) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var2525 null-var316)))
(declare-const var2272 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2272 null-String)))
(declare-const var2567 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2567 null-Bool)))
(declare-const var189 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var189 null-Bool)))
(assert true)
(define-const var280 Bool (= var2272 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var280 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var3692_writeGarbageCollectionStats/1082175102 var2525 var2567 var189)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var2525!1 var316)
(declare-const var2567!1 Bool)
(declare-const var189!1 Bool)
(assert true) ; Non Conditional
(assert true)
(define-const var2591 Bool (= var2272 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var2591 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(assert true)
(define-const var706 Bool (equalsIgnoreCase/-92311102 var2272 "all")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
(assert (= (ite var706 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var253 Bool (= var2272 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var253 1 0) 0))) ; Cond: $z7 != 0 
;(assert (var3692_writeJitMetrics/-850728128 var2525!1 var2567!1 var189!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var2525!2 var316)
(declare-const var2567!2 Bool)
(declare-const var189!2 Bool)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3692_writeGarbageCollectionStats/1082175102=([java.io.PrintStream, boolean, boolean], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3692_writeJitMetrics/-850728128=([java.io.PrintStream, boolean, boolean], void)}
; {var316=java.io.PrintStream, var2525=r1, var2272=r0, var319=null_type, var2567=z1, var189=z2, var280=$z0, var3692=com.google.javascript.jscomp.JvmMetrics, var2591=$z6, var706=$z4, var253=$z7}
; {java.io.PrintStream=var316, r1=var2525, r0=var2272, null_type=var319, z1=var2567, z2=var189, $z0=var280, com.google.javascript.jscomp.JvmMetrics=var3692, $z6=var2591, $z4=var706, $z7=var253}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	return
;block_num 7