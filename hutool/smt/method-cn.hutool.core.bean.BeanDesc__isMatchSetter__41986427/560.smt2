(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var961 0)
(declare-sort var2108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var961 var961)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1305 var961) ; Statement: r9 := @this: cn.hutool.core.bean.BeanDesc 
(assert (not (= var1305 null-var961)))
(declare-const var2590 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2590 null-String)))
(declare-const var2721 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2721 null-String)))
(declare-const var384 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var384 null-Bool)))
(declare-const var1481 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1481 null-Bool)))
 ; Statement: if z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11) 
(assert (not (= (ite var1481 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2590!1 String (toLowerCase/415700667 var2590)) ; Statement: r10 = virtualinvoke r10.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var482 String (toLowerCase/415700667 var2721)) ; Statement: r12 = virtualinvoke r11.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var2721!1 String var482) ; Statement: r11 = r12 
 ; Statement: goto [?= $z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3296 Bool (startsWith/-1785782452 var2590!1 "set")) ; Statement: $z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
 ; Statement: if 0 != $z1 goto (branch) 
(assert (not (not (= 0 (ite var3296 1 0))))) ; Negate: Cond: 0 != $z1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var961=cn.hutool.core.bean.BeanDesc, var1305=r9, var2590=r10, var2108=null_type, var2721=r11, var384=z2, var1481=z0, var482=r12, var3296=$z1}
; {cn.hutool.core.bean.BeanDesc=var961, r9=var1305, r10=var2590, null_type=var2108, r11=var2721, z2=var384, z0=var1481, r12=var482, $z1=var3296}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: cn.hutool.core.bean.BeanDesc;	r10 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	z2 := @parameter2: boolean;	z0 := @parameter3: boolean;	if z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11);	r10 = virtualinvoke r10.<java.lang.String: java.lang.String toLowerCase()>();	r12 = virtualinvoke r11.<java.lang.String: java.lang.String toLowerCase()>();	r11 = r12;	goto [?= $z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set")];	$z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set");	if 0 != $z1 goto (branch);	return 0
;block_num 4