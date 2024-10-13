(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1667 0)
(declare-sort var3682 0)
(declare-sort var3229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3229-init () var3229)
(declare-fun <init>/-1681595970 (var3229 String) void)
(declare-fun listFiles/1368441200 (var3229) (Array Int var3229))
(declare-fun getLength-Arr-var3229-1 ((Array Int var3229)) Int)
(declare-fun getName/1128186653 (var3229) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var3229) Bool)
(declare-fun isFile/1016913701 (var3229) Bool)
(declare-const null-var1667 var1667)
(declare-const null-String String)
(declare-const var1278 var1667) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1278 null-var1667)))
(declare-const var1165 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1165 null-String)))
(define-const var465 var3229 var3229-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var465 var1165)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var465!1 var3229)
(declare-const var1165!1 String)
(assert true)
(define-const var1574 (Array Int var3229) (listFiles/1368441200 var465!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var539 Int (getLength-Arr-var3229-1 var1574)) ; Statement: i0 = lengthof $r2 
(define-const var720 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var720 var539)) ; Cond: i1 < i0 
(define-const var2440 var3229 (select var1574 var720)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3124 String (getName/1128186653 var2440)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1790 String (toLowerCase/415700667 var3124)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1877 Bool (endsWith/985337093 var1790 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var1877 1 0) 0)) ; Cond: $z0 == 0 
(define-const var720!1 Int (+ var720 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var720!1 var539)) ; Cond: i1 < i0 
(define-const var2440!1 var3229 (select var1574 var720!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3124!1 String (getName/1128186653 var2440!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1790!1 String (toLowerCase/415700667 var3124!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1877!1 Bool (endsWith/985337093 var1790!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var1877!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3227 Bool (canRead/-1629014391 var2440!1)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3227 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2163 Bool (isFile/1016913701 var2440!1)) ; Statement: $z2 = virtualinvoke r3.<java.io.File: boolean isFile()>() 
 ; Statement: if $z2 == 0 goto i1 = i1 + 1 
(assert (= (ite var2163 1 0) 0)) ; Cond: $z2 == 0 
(define-const var720!2 Int (+ var720!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var720!2 var539))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3229-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3229-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean), isFile/1016913701=([java.io.File], boolean)}
; {var1667=lombok.launch.ShadowClassLoader, var1278=r6, var1165=r1, var3682=null_type, var3229=java.io.File, var465=$r0, var1574=$r2, var539=i0, var720=i1, var2440=r3, var3124=$r4, var1790=$r5, var1877=$z0, var3227=$z1, var2163=$z2}
; {lombok.launch.ShadowClassLoader=var1667, r6=var1278, r1=var1165, null_type=var3682, java.io.File=var3229, $r0=var465, $r2=var1574, i0=var539, i1=var720, r3=var2440, $r4=var3124, $r5=var1790, $z0=var1877, $z1=var3227, $z2=var2163}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	$z2 = virtualinvoke r3.<java.io.File: boolean isFile()>();	if $z2 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 11