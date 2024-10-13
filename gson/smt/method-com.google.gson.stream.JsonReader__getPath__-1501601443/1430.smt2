(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun stackSize/1477480286 (var700) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var700 var700)
(declare-const null-Bool Bool)
(declare-const var1225 var700) ; Statement: r2 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var1225 null-var700)))
(declare-const var1017 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1017 null-Bool)))
(define-const var1372 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1372)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1372!1 String)
(assert (= var1372!1 ""))
(assert true)
(define-const var893 String (append/-1166366385 var1372!1 36)) ; Statement: r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var1372!2 String)
(assert (str.prefixof var1372!1 var1372!2))
(define-const var223 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3225 Int (stackSize/1477480286 var1225)) ; Statement: $i0 = r2.<com.google.gson.stream.JsonReader: int stackSize> 
 ; Statement: if i4 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var223 var3225)) ; Cond: i4 >= $i0 
(assert true)
(define-const var1188 String (toString/-2075883882 var893)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), stackSize/1477480286=([com.google.gson.stream.JsonReader], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var700=com.google.gson.stream.JsonReader, var1225=r2, var1017=z0, var1372=$r12, var893=r1, var223=i4, var3225=$i0, var1188=$r3}
; {com.google.gson.stream.JsonReader=var700, r2=var1225, z0=var1017, $r12=var1372, r1=var893, i4=var223, $i0=var3225, $r3=var1188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.gson.stream.JsonReader;	z0 := @parameter0: boolean;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	i4 = 0;	$i0 = r2.<com.google.gson.stream.JsonReader: int stackSize>;	if i4 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3