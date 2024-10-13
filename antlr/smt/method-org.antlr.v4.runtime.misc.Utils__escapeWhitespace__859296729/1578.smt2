(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2083 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2083 null-String)))
(declare-const var2246 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2246 null-Bool)))
(define-const var3356 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3356)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3356!1 String)
(assert (= var3356!1 ""))
(assert true)
(define-const var181 (Array Int Int) (toCharArray/415275702 var2083)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1150 Int (getLength-Arr-Int-1 var181)) ; Statement: i0 = lengthof r2 
(define-const var2474 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2474 var1150)) ; Cond: i2 >= i0 
(assert true)
(define-const var3563 String (toString/-2075883882 var3356!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2083=r1, var3339=null_type, var2246=z0, var3356=$r4, var181=r2, var1150=i0, var2474=i2, var3563=$r3}
; {r1=var2083, null_type=var3339, z0=var2246, $r4=var3356, r2=var181, i0=var1150, i2=var2474, $r3=var3563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3