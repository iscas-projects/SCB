(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var419 0)
(declare-sort var2804 0)
(declare-sort var1740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1740-init () var1740)
(declare-fun <init>/-1681595970 (var1740 String) void)
(declare-fun listFiles/1368441200 (var1740) (Array Int var1740))
(declare-fun getLength-Arr-var1740-1 ((Array Int var1740)) Int)
(declare-fun getName/1128186653 (var1740) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var419 var419)
(declare-const null-String String)
(declare-const var2099 var419) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2099 null-var419)))
(declare-const var3104 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3104 null-String)))
(define-const var3876 var1740 var1740-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3876 var3104)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var3876!1 var1740)
(declare-const var3104!1 String)
(assert true)
(define-const var540 (Array Int var1740) (listFiles/1368441200 var3876!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var3381 Int (getLength-Arr-var1740-1 var540)) ; Statement: i0 = lengthof $r2 
(define-const var127 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var127 var3381)) ; Cond: i1 < i0 
(define-const var1444 var1740 (select var540 var127)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3846 String (getName/1128186653 var1444)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2065 String (toLowerCase/415700667 var3846)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var971 Bool (endsWith/985337093 var2065 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var971 1 0) 0)) ; Cond: $z0 == 0 
(define-const var127!1 Int (+ var127 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var127!1 var3381))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1740-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var1740-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var419=lombok.launch.ShadowClassLoader, var2099=r6, var3104=r1, var2804=null_type, var1740=java.io.File, var3876=$r0, var540=$r2, var3381=i0, var127=i1, var1444=r3, var3846=$r4, var2065=$r5, var971=$z0}
; {lombok.launch.ShadowClassLoader=var419, r6=var2099, r1=var3104, null_type=var2804, java.io.File=var1740, $r0=var3876, $r2=var540, i0=var3381, i1=var127, r3=var1444, $r4=var3846, $r5=var2065, $z0=var971}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 6