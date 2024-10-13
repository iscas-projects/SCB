(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1100 0)
(declare-sort var332 0)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3973-init () var3973)
(declare-fun <init>/-1681595970 (var3973 String) void)
(declare-fun listFiles/1368441200 (var3973) (Array Int var3973))
(declare-fun getLength-Arr-var3973-1 ((Array Int var3973)) Int)
(declare-fun getName/1128186653 (var3973) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var3973) Bool)
(declare-fun isFile/1016913701 (var3973) Bool)
(declare-const null-var1100 var1100)
(declare-const null-String String)
(declare-const var339 var1100) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var339 null-var1100)))
(declare-const var578 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var578 null-String)))
(define-const var1709 var3973 var3973-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var1709 var578)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var1709!1 var3973)
(declare-const var578!1 String)
(assert true)
(define-const var5 (Array Int var3973) (listFiles/1368441200 var1709!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var2029 Int (getLength-Arr-var3973-1 var5)) ; Statement: i0 = lengthof $r2 
(define-const var537 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var537 var2029)) ; Cond: i1 < i0 
(define-const var2026 var3973 (select var5 var537)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3846 String (getName/1128186653 var2026)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3445 String (toLowerCase/415700667 var3846)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3000 Bool (endsWith/985337093 var3445 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3000 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3650 Bool (canRead/-1629014391 var2026)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3650 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var79 Bool (isFile/1016913701 var2026)) ; Statement: $z2 = virtualinvoke r3.<java.io.File: boolean isFile()>() 
 ; Statement: if $z2 == 0 goto i1 = i1 + 1 
(assert (= (ite var79 1 0) 0)) ; Cond: $z2 == 0 
(define-const var537!1 Int (+ var537 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var537!1 var2029))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3973-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3973-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean), isFile/1016913701=([java.io.File], boolean)}
; {var1100=lombok.launch.ShadowClassLoader, var339=r6, var578=r1, var332=null_type, var3973=java.io.File, var1709=$r0, var5=$r2, var2029=i0, var537=i1, var2026=r3, var3846=$r4, var3445=$r5, var3000=$z0, var3650=$z1, var79=$z2}
; {lombok.launch.ShadowClassLoader=var1100, r6=var339, r1=var578, null_type=var332, java.io.File=var3973, $r0=var1709, $r2=var5, i0=var2029, i1=var537, r3=var2026, $r4=var3846, $r5=var3445, $z0=var3000, $z1=var3650, $z2=var79}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	$z2 = virtualinvoke r3.<java.io.File: boolean isFile()>();	if $z2 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 8