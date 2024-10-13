(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var2243 0)
(declare-sort var1887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1775 var1775)
(declare-const null-var2243 var2243)
(declare-const null-String String)
(declare-const var3829 var1775) ; Statement: r0 := @this: org.apache.ibatis.javassist.JarDirClassPath$1 
(assert (not (= var3829 null-var1775)))
(declare-const var3456 var2243) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3456 null-var2243)))
(declare-const var729 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var729 null-String)))
(assert true)
(define-const var1736 String (toLowerCase/415700667 var729)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var247 Bool (endsWith/985337093 var1736 ".jar")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var247 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2045 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1775=org.apache.ibatis.javassist.JarDirClassPath$1, var3829=r0, var2243=java.io.File, var3456=r1, var729=r2, var1887=null_type, var1736=r3, var247=$z0, var2045=$z2}
; {org.apache.ibatis.javassist.JarDirClassPath$1=var1775, r0=var3829, java.io.File=var2243, r1=var3456, r2=var729, null_type=var1887, r3=var1736, $z0=var247, $z2=var2045}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.JarDirClassPath$1;	r1 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3