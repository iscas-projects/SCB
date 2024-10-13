(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1791 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1791 var1791)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3773 var1791) ; Statement: r12 := @this: cn.hutool.core.bean.BeanDesc 
(assert (not (= var3773 null-var1791)))
(declare-const var3714 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3714 null-String)))
(declare-const var1388 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var1388 null-String)))
(declare-const var1426 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1426 null-Bool)))
(declare-const var185 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var185 null-Bool)))
 ; Statement: if z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14) 
(assert (not (= (ite var185 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var3714!1 String (toLowerCase/415700667 var3714)) ; Statement: r13 = virtualinvoke r13.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1902 String (toLowerCase/415700667 var1388)) ; Statement: r15 = virtualinvoke r14.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1388!1 String var1902) ; Statement: r14 = r15 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var1426 1 0) 0)) ; Cond: z1 == 0 
(define-const var2937 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2937)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2937!1 String)
(assert (= var2937!1 ""))
(assert true)
(define-const var542 String (append/672562846 var2937!1 "get")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2937!2 String)
(assert (= var2937!2 (str.++ var2937!1 "get")))
(assert true)
(define-const var614 String (append/672562846 var542 var1902)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var542!1 String)
(assert (= var542!1 (str.++ var542 var1902)))
(assert true)
(define-const var2637 String (toString/-2075883882 var614)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3385 Bool (= var2637 var3714!1)) ; Statement: $z7 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>(r13) 
 ; Statement: return $z7 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1791=cn.hutool.core.bean.BeanDesc, var3773=r12, var3714=r13, var1814=null_type, var1388=r14, var1426=z1, var185=z0, var1902=r15, var2937=$r16, var542=$r17, var614=$r18, var2637=$r19, var3385=$z7}
; {cn.hutool.core.bean.BeanDesc=var1791, r12=var3773, r13=var3714, null_type=var1814, r14=var1388, z1=var1426, z0=var185, r15=var1902, $r16=var2937, $r17=var542, $r18=var614, $r19=var2637, $z7=var3385}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: cn.hutool.core.bean.BeanDesc;	r13 := @parameter0: java.lang.String;	r14 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z0 := @parameter3: boolean;	if z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14);	r13 = virtualinvoke r13.<java.lang.String: java.lang.String toLowerCase()>();	r15 = virtualinvoke r14.<java.lang.String: java.lang.String toLowerCase()>();	r14 = r15;	goto [?= (branch)];	if z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$z7 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>(r13);	return $z7
;block_num 4