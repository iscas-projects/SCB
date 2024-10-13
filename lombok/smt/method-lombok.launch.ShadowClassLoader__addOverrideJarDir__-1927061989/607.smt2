(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3869 0)
(declare-sort var1338 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var592-init () var592)
(declare-fun <init>/-1681595970 (var592 String) void)
(declare-fun listFiles/1368441200 (var592) (Array Int var592))
(declare-fun getLength-Arr-var592-1 ((Array Int var592)) Int)
(declare-fun getName/1128186653 (var592) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var592) Bool)
(declare-const null-var3869 var3869)
(declare-const null-String String)
(declare-const var896 var3869) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var896 null-var3869)))
(declare-const var660 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var660 null-String)))
(define-const var3163 var592 var592-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3163 var660)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var3163!1 var592)
(declare-const var660!1 String)
(assert true)
(define-const var2022 (Array Int var592) (listFiles/1368441200 var3163!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var3259 Int (getLength-Arr-var592-1 var2022)) ; Statement: i0 = lengthof $r2 
(define-const var2276 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var2276 var3259)) ; Cond: i1 < i0 
(define-const var1538 var592 (select var2022 var2276)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var1489 String (getName/1128186653 var1538)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1004 String (toLowerCase/415700667 var1489)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3352 Bool (endsWith/985337093 var1004 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3352 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2359 Bool (canRead/-1629014391 var1538)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var2359 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2276!1 Int (+ var2276 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var2276!1 var3259))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var592-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var592-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean)}
; {var3869=lombok.launch.ShadowClassLoader, var896=r6, var660=r1, var1338=null_type, var592=java.io.File, var3163=$r0, var2022=$r2, var3259=i0, var2276=i1, var1538=r3, var1489=$r4, var1004=$r5, var3352=$z0, var2359=$z1}
; {lombok.launch.ShadowClassLoader=var3869, r6=var896, r1=var660, null_type=var1338, java.io.File=var592, $r0=var3163, $r2=var2022, i0=var3259, i1=var2276, r3=var1538, $r4=var1489, $r5=var1004, $z0=var3352, $z1=var2359}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 7