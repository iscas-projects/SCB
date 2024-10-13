(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3492 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3492 var3492)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var440 var3492) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var440 null-var3492)))
(declare-const var3436 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3436 null-String)))
(declare-const var2327 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2327 null-Bool)))
(declare-const var1263 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1263 null-Bool)))
(assert true)
(define-const var2437 Bool (= var3436 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var2437 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2471 Bool (equalsIgnoreCase/-92311102 var3436 "all")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
(assert (= (ite var2471 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var3774 Bool (= var3436 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var3774 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(assert true)
(define-const var3461 Bool (equalsIgnoreCase/-92311102 var3436 "all")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
(assert (= (ite var3461 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var1950 Bool (= var3436 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var1950 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(assert true)
(define-const var2302 Bool (equalsIgnoreCase/-92311102 var3436 "all")) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2302 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3492=java.io.PrintStream, var440=r1, var3436=r0, var2695=null_type, var2327=z1, var1263=z2, var2437=$z0, var2471=$z5, var3774=$z6, var3461=$z4, var1950=$z7, var2302=$z3}
; {java.io.PrintStream=var3492, r1=var440, r0=var3436, null_type=var2695, z1=var2327, z2=var1263, $z0=var2437, $z5=var2471, $z6=var3774, $z4=var3461, $z7=var1950, $z3=var2302}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 3}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z3 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z3 == 0 goto return;	return
;block_num 7