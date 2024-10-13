(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var972 0)
(declare-sort var520 0)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3340-init () var3340)
(declare-fun <init>/-1681595970 (var3340 String) void)
(declare-fun listFiles/1368441200 (var3340) (Array Int var3340))
(declare-fun getLength-Arr-var3340-1 ((Array Int var3340)) Int)
(declare-fun getName/1128186653 (var3340) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var3340) Bool)
(declare-fun isFile/1016913701 (var3340) Bool)
(declare-const null-var972 var972)
(declare-const null-String String)
(declare-const var3948 var972) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3948 null-var972)))
(declare-const var1191 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1191 null-String)))
(define-const var2644 var3340 var3340-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2644 var1191)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2644!1 var3340)
(declare-const var1191!1 String)
(assert true)
(define-const var1275 (Array Int var3340) (listFiles/1368441200 var2644!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var234 Int (getLength-Arr-var3340-1 var1275)) ; Statement: i0 = lengthof $r2 
(define-const var730 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var730 var234)) ; Cond: i1 < i0 
(define-const var195 var3340 (select var1275 var730)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3452 String (getName/1128186653 var195)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var119 String (toLowerCase/415700667 var3452)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3603 Bool (endsWith/985337093 var119 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3603 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2454 Bool (canRead/-1629014391 var195)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var2454 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1935 Bool (isFile/1016913701 var195)) ; Statement: $z2 = virtualinvoke r3.<java.io.File: boolean isFile()>() 
 ; Statement: if $z2 == 0 goto i1 = i1 + 1 
(assert (= (ite var1935 1 0) 0)) ; Cond: $z2 == 0 
(define-const var730!1 Int (+ var730 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var730!1 var234)) ; Cond: i1 < i0 
(define-const var195!1 var3340 (select var1275 var730!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3452!1 String (getName/1128186653 var195!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var119!1 String (toLowerCase/415700667 var3452!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3603!1 Bool (endsWith/985337093 var119!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var3603!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var730!2 Int (+ var730!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var730!2 var234))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3340-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3340-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean), isFile/1016913701=([java.io.File], boolean)}
; {var972=lombok.launch.ShadowClassLoader, var3948=r6, var1191=r1, var520=null_type, var3340=java.io.File, var2644=$r0, var1275=$r2, var234=i0, var730=i1, var195=r3, var3452=$r4, var119=$r5, var3603=$z0, var2454=$z1, var1935=$z2}
; {lombok.launch.ShadowClassLoader=var972, r6=var3948, r1=var1191, null_type=var520, java.io.File=var3340, $r0=var2644, $r2=var1275, i0=var234, i1=var730, r3=var195, $r4=var3452, $r5=var119, $z0=var3603, $z1=var2454, $z2=var1935}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	$z2 = virtualinvoke r3.<java.io.File: boolean isFile()>();	if $z2 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 11