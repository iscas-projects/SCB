(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var1001 0)
(declare-sort var3843 0)
(declare-sort var3964 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3843-init () var3843)
(declare-fun <init>/-1681595970 (var3843 String) void)
(declare-fun listFiles/1368441200 (var3843) (Array Int var3843))
(declare-fun getLength-Arr-var3843-1 ((Array Int var3843)) Int)
(declare-fun getName/1128186653 (var3843) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun canRead/-1629014391 (var3843) Bool)
(declare-fun isFile/1016913701 (var3843) Bool)
(declare-fun override/1139179338 (var52) var3964)
(declare-fun var3964_add/328494887 (var3964 var1324) Bool)
(declare-fun cast-from-var3843-to-var1324 (var3843) var1324)
(declare-const null-var52 var52)
(declare-const null-String String)
(declare-const var3324 var52) ; Statement: r6 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3324 null-var52)))
(declare-const var120 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var120 null-String)))
(define-const var2912 var3843 var3843-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2912 var120)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2912!1 var3843)
(declare-const var120!1 String)
(assert true)
(define-const var360 (Array Int var3843) (listFiles/1368441200 var2912!1)) ; Statement: $r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>() 
(define-const var475 Int (getLength-Arr-var3843-1 var360)) ; Statement: i0 = lengthof $r2 
(define-const var3071 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (< var3071 var475)) ; Cond: i1 < i0 
(define-const var1347 var3843 (select var360 var3071)) ; Statement: r3 = $r2[i1] 
(assert true)
(define-const var299 String (getName/1128186653 var1347)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3312 String (toLowerCase/415700667 var299)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2663 Bool (endsWith/985337093 var3312 ".jar")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var2663 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var700 Bool (canRead/-1629014391 var1347)) ; Statement: $z1 = virtualinvoke r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var700 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1252 Bool (isFile/1016913701 var1347)) ; Statement: $z2 = virtualinvoke r3.<java.io.File: boolean isFile()>() 
 ; Statement: if $z2 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var1252 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2794 var3964 (override/1139179338 var3324)) ; Statement: $r7 = r6.<lombok.launch.ShadowClassLoader: java.util.List override> 
;(assert (var3964_add/328494887 var2794 (cast-from-var3843-to-var1324 var1347))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>(r3) 

(declare-const var2794!1 var3964)
(declare-const var1347!1 var3843)
(assert true) ; Non Conditional
(define-const var3071!1 Int (+ var3071 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r3 = $r2[i1] 
(assert (not (< var3071!1 var475))) ; Negate: Cond: i1 < i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3843-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), getLength-Arr-var3843-1=([java.io.File[]], int), getName/1128186653=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), canRead/-1629014391=([java.io.File], boolean), isFile/1016913701=([java.io.File], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3964_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3843-to-var1324=([java.io.File], java.lang.Object)}
; {var52=lombok.launch.ShadowClassLoader, var3324=r6, var120=r1, var1001=null_type, var3843=java.io.File, var2912=$r0, var360=$r2, var475=i0, var3071=i1, var1347=r3, var299=$r4, var3312=$r5, var2663=$z0, var700=$z1, var1252=$z2, var3964=java.util.List, var2794=$r7, var1324=java.lang.Object}
; {lombok.launch.ShadowClassLoader=var52, r6=var3324, r1=var120, null_type=var1001, java.io.File=var3843, $r0=var2912, $r2=var360, i0=var475, i1=var3071, r3=var1347, $r4=var299, $r5=var3312, $z0=var2663, $z1=var700, $z2=var1252, java.util.List=var3964, $r7=var2794, java.lang.Object=var1324}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.io.File: java.io.File[] listFiles()>();	i0 = lengthof $r2;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r3 = $r2[i1];	r3 = $r2[i1];	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 == 0 goto i1 = i1 + 1;	$z1 = virtualinvoke r3.<java.io.File: boolean canRead()>();	if $z1 == 0 goto i1 = i1 + 1;	$z2 = virtualinvoke r3.<java.io.File: boolean isFile()>();	if $z2 == 0 goto i1 = i1 + 1;	$r7 = r6.<lombok.launch.ShadowClassLoader: java.util.List override>;	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>(r3);	i1 = i1 + 1;	if i1 < i0 goto r3 = $r2[i1];	return
;block_num 9