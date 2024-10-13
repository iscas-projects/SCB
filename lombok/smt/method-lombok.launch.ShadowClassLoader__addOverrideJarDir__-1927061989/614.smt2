(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2659 0)
(declare-sort var2056 0)
(declare-sort var2755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2755-init () var2755)
(declare-fun <init>/-1681595970 (var2755 String) void)
(declare-fun listFiles/1368441200 (var2755) (Array Int var2755))
(declare-fun getLength-Arr-var2755-1 ((Array Int var2755)) Int)
(declare-fun getName/1128186653 (var2755) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var2755) Bool)
(declare-const null-var2659 var2659)
(declare-const null-String String)
(declare-const var61 var2659) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var61 null-var2659)))
(declare-const var2887 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2887 null-String)))
(define-const var252 var2755 var2755-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var252 var2887)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var252!1 var2755)
(declare-const var2887!1 String)
(assert true)
(define-const var1041 (Array Int var2755) (listFiles/1368441200 var252!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var970 Int (getLength-Arr-var2755-1 var1041)) ; Statement: i0 = lengthof $r2 
(define-const var1361 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var1361 var970)) ; Cond: i1 < i0 
(define-const var2773 var2755 (select var1041 var1361)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var440 String (getName/1128186653 var2773)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1309 String (toLowerCase/415700667 var440)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3249 Bool (endsWith/985337093 var1309 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3249 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1782 Bool (canRead/-1629014391 var2773)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var1782 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1361!1 Int (+ var1361 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var1361!1 var970)) ; Cond: i1 < i0 
(define-const var2773!1 var2755 (select var1041 var1361!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var440!1 String (getName/1128186653 var2773!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1309!1 String (toLowerCase/415700667 var440!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3249!1 Bool (endsWith/985337093 var1309!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var3249!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1782!1 Bool (canRead/-1629014391 var2773!1)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var1782!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1361!2 Int (+ var1361!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var1361!2 var970))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2755-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var2755-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean)}
; {var2659=lombok.launch.ShadowClassLoader, var61=r6, var2887=r1, var2056=null_type, var2755=java.io.File, var252=$r0, var1041=$r2, var970=i0, var1361=i1, var2773=r3, var440=$r4, var1309=$r5, var3249=$z0, var1782=$z1}
; {lombok.launch.ShadowClassLoader=var2659, r6=var61, r1=var2887, null_type=var2056, java.io.File=var2755, $r0=var252, $r2=var1041, i0=var970, i1=var1361, r3=var2773, $r4=var440, $r5=var1309, $z0=var3249, $z1=var1782}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 11