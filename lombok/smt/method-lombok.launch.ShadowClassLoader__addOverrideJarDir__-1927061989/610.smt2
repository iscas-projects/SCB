(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort var2486 0)
(declare-sort var3366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3366-init () var3366)
(declare-fun <init>/-1681595970 (var3366 String) void)
(declare-fun listFiles/1368441200 (var3366) (Array Int var3366))
(declare-fun getLength-Arr-var3366-1 ((Array Int var3366)) Int)
(declare-fun getName/1128186653 (var3366) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3905 var3905)
(declare-const null-String String)
(declare-const var3655 var3905) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3655 null-var3905)))
(declare-const var1600 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1600 null-String)))
(define-const var3086 var3366 var3366-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3086 var1600)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var3086!1 var3366)
(declare-const var1600!1 String)
(assert true)
(define-const var1757 (Array Int var3366) (listFiles/1368441200 var3086!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var785 Int (getLength-Arr-var3366-1 var1757)) ; Statement: i0 = lengthof $r2 
(define-const var2509 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var2509 var785)) ; Cond: i1 < i0 
(define-const var37 var3366 (select var1757 var2509)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3449 String (getName/1128186653 var37)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1071 String (toLowerCase/415700667 var3449)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3719 Bool (endsWith/985337093 var1071 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var3719 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2509!1 Int (+ var2509 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var2509!1 var785)) ; Cond: i1 < i0 
(define-const var37!1 var3366 (select var1757 var2509!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var3449!1 String (getName/1128186653 var37!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1071!1 String (toLowerCase/415700667 var3449!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3719!1 Bool (endsWith/985337093 var1071!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var3719!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2509!2 Int (+ var2509!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var2509!2 var785))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3366-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3366-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3905=lombok.launch.ShadowClassLoader, var3655=r6, var1600=r1, var2486=null_type, var3366=java.io.File, var3086=$r0, var1757=$r2, var785=i0, var2509=i1, var37=r3, var3449=$r4, var1071=$r5, var3719=$z0}
; {lombok.launch.ShadowClassLoader=var3905, r6=var3655, r1=var1600, null_type=var2486, java.io.File=var3366, $r0=var3086, $r2=var1757, i0=var785, i1=var2509, r3=var37, $r4=var3449, $r5=var1071, $z0=var3719}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 9