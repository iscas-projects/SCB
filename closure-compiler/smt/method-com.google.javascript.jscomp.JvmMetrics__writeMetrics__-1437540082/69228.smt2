(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3945 0)
(declare-sort var790 0)
(declare-sort var1082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1082_writeJitMetrics/-850728128 (var3945 Bool Bool) void)
(declare-const null-var3945 var3945)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3980 var3945) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var3980 null-var3945)))
(declare-const var2318 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2318 null-String)))
(declare-const var3125 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3125 null-Bool)))
(declare-const var3181 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3181 null-Bool)))
(assert true)
(define-const var3825 Bool (= var2318 "gc")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc") 
 ; Statement: if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var3825 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2566 Bool (equalsIgnoreCase/-92311102 var2318 "all")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
(assert (= (ite var2566 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var1143 Bool (= var2318 "mem")) ; Statement: $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem") 
 ; Statement: if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (not (= (ite var1143 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(assert true)
(define-const var3343 Bool (equalsIgnoreCase/-92311102 var2318 "all")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all") 
 ; Statement: if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
(assert (= (ite var3343 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var75 Bool (= var2318 "jit")) ; Statement: $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit") 
 ; Statement: if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 
(assert (not (= (ite var75 1 0) 0))) ; Cond: $z7 != 0 
;(assert (var1082_writeJitMetrics/-850728128 var3980 var3125 var3181)) ; Statement: staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2) 

(declare-const var3980!1 var3945)
(declare-const var3125!1 Bool)
(declare-const var3181!1 Bool)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1082_writeJitMetrics/-850728128=([java.io.PrintStream, boolean, boolean], void)}
; {var3945=java.io.PrintStream, var3980=r1, var2318=r0, var790=null_type, var3125=z1, var3181=z2, var3825=$z0, var2566=$z5, var1143=$z6, var3343=$z4, var75=$z7, var1082=com.google.javascript.jscomp.JvmMetrics}
; {java.io.PrintStream=var3945, r1=var3980, r0=var2318, null_type=var790, z1=var3125, z2=var3181, $z0=var3825, $z5=var2566, $z6=var1143, $z4=var3343, $z7=var75, com.google.javascript.jscomp.JvmMetrics=var1082}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("gc");	if $z0 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeGarbageCollectionStats(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z5 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z5 == 0 goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	$z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("mem");	if $z6 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeMemoryMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	$z4 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("all");	if $z4 == 0 goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	$z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("jit");	if $z7 != 0 goto staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	staticinvoke <com.google.javascript.jscomp.JvmMetrics: void writeJitMetrics(java.io.PrintStream,boolean,boolean)>(r1, z1, z2);	return
;block_num 7