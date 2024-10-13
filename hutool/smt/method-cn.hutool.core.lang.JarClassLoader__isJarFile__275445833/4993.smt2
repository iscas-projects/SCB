(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2002_isFile/-519415080 (var1760) Bool)
(declare-fun getPath/-1385219261 (var1760) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1760 var1760)
(declare-const var1577 var1760) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1577 null-var1760)))
(define-const var2888 Bool (var2002_isFile/-519415080 var1577)) ; Statement: $z0 = staticinvoke <cn.hutool.core.io.FileUtil: boolean isFile(java.io.File)>(r0) 
 ; Statement: if 0 != $z0 goto $r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert (not (= 0 (ite var2888 1 0)))) ; Cond: 0 != $z0 
(assert true)
(define-const var1216 String (getPath/-1385219261 var1577)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3311 String (toLowerCase/415700667 var1216)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1819 Bool (endsWith/985337093 var3311 ".jar")) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2002_isFile/-519415080=([java.io.File], boolean), getPath/-1385219261=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1760=java.io.File, var1577=r0, var2002=cn.hutool.core.io.FileUtil, var2888=$z0, var1216=$r1, var3311=$r2, var1819=$z1}
; {java.io.File=var1760, r0=var1577, cn.hutool.core.io.FileUtil=var2002, $z0=var2888, $r1=var1216, $r2=var3311, $z1=var1819}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.io.File;	$z0 = staticinvoke <cn.hutool.core.io.FileUtil: boolean isFile(java.io.File)>(r0);	if 0 != $z0 goto $r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	return $z1
;block_num 2