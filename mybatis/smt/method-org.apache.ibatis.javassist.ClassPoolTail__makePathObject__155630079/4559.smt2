(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3538 0)
(declare-sort var3554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3554-init () var3554)
(declare-fun <init>/635638512 (var3554 String) void)
(declare-const null-String String)
(declare-const var692 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var692 null-String)))
(assert true)
(define-const var3921 String (toLowerCase/415700667 var692)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2527 Bool (endsWith/985337093 var3921 ".jar")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 != 0 goto $r6 = new org.apache.ibatis.javassist.JarClassPath 
(assert (not (= (ite var2527 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2406 var3554 var3554-init) ; Statement: $r6 = new org.apache.ibatis.javassist.JarClassPath 
(assert true)
;(assert (<init>/635638512 var2406 var692)) ; Statement: specialinvoke $r6.<org.apache.ibatis.javassist.JarClassPath: void <init>(java.lang.String)>(r0) 

(declare-const var2406!1 var3554)
(declare-const var692!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3554-init=([], org.apache.ibatis.javassist.JarClassPath), <init>/635638512=([org.apache.ibatis.javassist.JarClassPath, java.lang.String], void)}
; {var692=r0, var3538=null_type, var3921=r1, var2527=$z0, var3554=org.apache.ibatis.javassist.JarClassPath, var2406=$r6}
; {r0=var692, null_type=var3538, r1=var3921, $z0=var2527, org.apache.ibatis.javassist.JarClassPath=var3554, $r6=var2406}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 != 0 goto $r6 = new org.apache.ibatis.javassist.JarClassPath;	$r6 = new org.apache.ibatis.javassist.JarClassPath;	specialinvoke $r6.<org.apache.ibatis.javassist.JarClassPath: void <init>(java.lang.String)>(r0);	return $r6
;block_num 2