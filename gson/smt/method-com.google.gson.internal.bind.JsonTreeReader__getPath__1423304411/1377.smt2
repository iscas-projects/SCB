(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun stackSize/-1151902492 (var1300) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1300 var1300)
(declare-const null-Bool Bool)
(declare-const var2955 var1300) ; Statement: r2 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2955 null-var1300)))
(declare-const var532 Bool) ; Statement: z4 := @parameter0: boolean 
(assert (not (= var532 null-Bool)))
(define-const var3454 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3454)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3454!1 String)
(assert (= var3454!1 ""))
(assert true)
(define-const var3198 String (append/-1166366385 var3454!1 36)) ; Statement: r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var3454!2 String)
(assert (str.prefixof var3454!1 var3454!2))
(define-const var2694 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var780 Int (stackSize/-1151902492 var2955)) ; Statement: $i0 = r2.<com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if i7 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2694 var780)) ; Cond: i7 >= $i0 
(assert true)
(define-const var1828 String (toString/-2075883882 var3198)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), stackSize/-1151902492=([com.google.gson.internal.bind.JsonTreeReader], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1300=com.google.gson.internal.bind.JsonTreeReader, var2955=r2, var532=z4, var3454=$r19, var3198=r1, var2694=i7, var780=$i0, var1828=$r3}
; {com.google.gson.internal.bind.JsonTreeReader=var1300, r2=var2955, z4=var532, $r19=var3454, r1=var3198, i7=var2694, $i0=var780, $r3=var1828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.gson.internal.bind.JsonTreeReader;	z4 := @parameter0: boolean;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	i7 = 0;	$i0 = r2.<com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if i7 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3