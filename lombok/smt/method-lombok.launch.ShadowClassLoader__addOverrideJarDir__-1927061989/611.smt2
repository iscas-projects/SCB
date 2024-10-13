(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var1135 0)
(declare-sort var3913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3913-init () var3913)
(declare-fun <init>/-1681595970 (var3913 String) void)
(declare-fun listFiles/1368441200 (var3913) (Array Int var3913))
(declare-fun getLength-Arr-var3913-1 ((Array Int var3913)) Int)
(declare-fun getName/1128186653 (var3913) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var3913) Bool)
(declare-const null-var1435 var1435)
(declare-const null-String String)
(declare-const var2178 var1435) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2178 null-var1435)))
(declare-const var2365 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2365 null-String)))
(define-const var2951 var3913 var3913-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2951 var2365)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2951!1 var3913)
(declare-const var2365!1 String)
(assert true)
(define-const var3300 (Array Int var3913) (listFiles/1368441200 var2951!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var637 Int (getLength-Arr-var3913-1 var3300)) ; Statement: i0 = lengthof $r2 
(define-const var1378 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var1378 var637)) ; Cond: i1 < i0 
(define-const var571 var3913 (select var3300 var1378)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3685 String (getName/1128186653 var571)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3054 String (toLowerCase/415700667 var3685)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2802 Bool (endsWith/985337093 var3054 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var2802 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3065 Bool (canRead/-1629014391 var571)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var3065 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1378!1 Int (+ var1378 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var1378!1 var637)) ; Cond: i1 < i0 
(define-const var571!1 var3913 (select var3300 var1378!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3685!1 String (getName/1128186653 var571!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3054!1 String (toLowerCase/415700667 var3685!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2802!1 Bool (endsWith/985337093 var3054!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var2802!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1378!2 Int (+ var1378!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var1378!2 var637))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3913-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3913-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean)}
; {var1435=lombok.launch.ShadowClassLoader, var2178=r6, var2365=r1, var1135=null_type, var3913=java.io.File, var2951=$r0, var3300=$r2, var637=i0, var1378=i1, var571=r3, var3685=$r4, var3054=$r5, var2802=$z0, var3065=$z1}
; {lombok.launch.ShadowClassLoader=var1435, r6=var2178, r1=var2365, null_type=var1135, java.io.File=var3913, $r0=var2951, $r2=var3300, i0=var637, i1=var1378, r3=var571, $r4=var3685, $r5=var3054, $z0=var2802, $z1=var3065}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 10