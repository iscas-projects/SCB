(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1011 0)
(declare-sort var3729 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1073-init () var1073)
(declare-fun <init>/-1681595970 (var1073 String) void)
(declare-fun listFiles/1368441200 (var1073) (Array Int var1073))
(declare-fun getLength-Arr-var1073-1 ((Array Int var1073)) Int)
(declare-fun getName/1128186653 (var1073) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var1073) Bool)
(declare-const null-var1011 var1011)
(declare-const null-String String)
(declare-const var1475 var1011) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1475 null-var1011)))
(declare-const var203 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var203 null-String)))
(define-const var2021 var1073 var1073-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2021 var203)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2021!1 var1073)
(declare-const var203!1 String)
(assert true)
(define-const var3724 (Array Int var1073) (listFiles/1368441200 var2021!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var833 Int (getLength-Arr-var1073-1 var3724)) ; Statement: i0 = lengthof $r2 
(define-const var350 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var350 var833)) ; Cond: i1 < i0 
(define-const var3095 var1073 (select var3724 var350)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var1722 String (getName/1128186653 var3095)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2736 String (toLowerCase/415700667 var1722)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2396 Bool (endsWith/985337093 var2736 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var2396 1 0) 0)) ; Cond: $z0 == 0 
(define-const var350!1 Int (+ var350 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var350!1 var833)) ; Cond: i1 < i0 
(define-const var3095!1 var1073 (select var3724 var350!1)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var1722!1 String (getName/1128186653 var3095!1)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2736!1 String (toLowerCase/415700667 var1722!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2396!1 Bool (endsWith/985337093 var2736!1 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var2396!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var851 Bool (canRead/-1629014391 var3095!1)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var851 1 0) 0)) ; Cond: $z1 == 0 
(define-const var350!2 Int (+ var350!1 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var350!2 var833))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1073-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var1073-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean)}
; {var1011=lombok.launch.ShadowClassLoader, var1475=r6, var203=r1, var3729=null_type, var1073=java.io.File, var2021=$r0, var3724=$r2, var833=i0, var350=i1, var3095=r3, var1722=$r4, var2736=$r5, var2396=$z0, var851=$z1}
; {lombok.launch.ShadowClassLoader=var1011, r6=var1475, r1=var203, null_type=var3729, java.io.File=var1073, $r0=var2021, $r2=var3724, i0=var833, i1=var350, r3=var3095, $r4=var1722, $r5=var2736, $z0=var2396, $z1=var851}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 10