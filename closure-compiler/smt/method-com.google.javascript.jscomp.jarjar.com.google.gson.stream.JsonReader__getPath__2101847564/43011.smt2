(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun stackSize/-1654894195 (var1226) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1226 var1226)
(declare-const null-Bool Bool)
(declare-const var2952 var1226) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2952 null-var1226)))
(declare-const var1713 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1713 null-Bool)))
(define-const var1195 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1195)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1195!1 String)
(assert (= var1195!1 ""))
(assert true)
(define-const var2901 String (append/-1166366385 var1195!1 36)) ; Statement: r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var1195!2 String)
(assert (str.prefixof var1195!1 var1195!2))
(define-const var3425 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2477 Int (stackSize/-1654894195 var2952)) ; Statement: $i0 = r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int stackSize> 
 ; Statement: if i4 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3425 var2477)) ; Cond: i4 >= $i0 
(assert true)
(define-const var593 String (toString/-2075883882 var2901)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), stackSize/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1226=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2952=r2, var1713=z0, var1195=$r12, var2901=r1, var3425=i4, var2477=$i0, var593=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1226, r2=var2952, z0=var1713, $r12=var1195, r1=var2901, i4=var3425, $i0=var2477, $r3=var593}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	z0 := @parameter0: boolean;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	i4 = 0;	$i0 = r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int stackSize>;	if i4 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3