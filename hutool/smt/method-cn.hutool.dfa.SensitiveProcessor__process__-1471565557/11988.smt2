(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var1096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFoundWord/-422164563 (var1096) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1183 var1183)
(declare-const null-var1096 var1096)
(declare-const var2534 var1183) ; Statement: r4 := @this: cn.hutool.dfa.SensitiveProcessor 
(assert (not (= var2534 null-var1183)))
(declare-const var3808 var1096) ; Statement: r0 := @parameter0: cn.hutool.dfa.FoundWord 
(assert (not (= var3808 null-var1096)))
(assert true)
(define-const var2041 String (getFoundWord/-422164563 var3808)) ; Statement: $r1 = virtualinvoke r0.<cn.hutool.dfa.FoundWord: java.lang.String getFoundWord()>() 
(assert true)
(define-const var1160 Int (length/-134980193 var2041)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1489 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1489 var1160)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var1489!1 String)
(declare-const var1160!1 Int)
(define-const var973 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var973 var1160!1)) ; Cond: i1 >= i0 
(assert true)
(define-const var1225 String (toString/-2075883882 var1489!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getFoundWord/-422164563=([cn.hutool.dfa.FoundWord], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1183=cn.hutool.dfa.SensitiveProcessor, var2534=r4, var1096=cn.hutool.dfa.FoundWord, var3808=r0, var2041=$r1, var1160=i0, var1489=$r2, var973=i1, var1225=$r3}
; {cn.hutool.dfa.SensitiveProcessor=var1183, r4=var2534, cn.hutool.dfa.FoundWord=var1096, r0=var3808, $r1=var2041, i0=var1160, $r2=var1489, i1=var973, $r3=var1225}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: cn.hutool.dfa.SensitiveProcessor;	r0 := @parameter0: cn.hutool.dfa.FoundWord;	$r1 = virtualinvoke r0.<cn.hutool.dfa.FoundWord: java.lang.String getFoundWord()>();	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(i0);	i1 = 0;	if i1 >= i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3