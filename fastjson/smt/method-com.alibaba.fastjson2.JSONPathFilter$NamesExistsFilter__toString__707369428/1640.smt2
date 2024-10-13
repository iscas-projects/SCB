(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun names/-1304331716 (var2619) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2619 var2619)
(declare-const var794 var2619) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter 
(assert (not (= var794 null-var2619)))
(define-const var3510 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3510 "exists(@")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("exists(@") 
(declare-const var3510!1 String)
(assert (= var3510!1 "exists(@"))
(define-const var2172 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var420 (Array Int String) (names/-1304331716 var794)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter: java.lang.String[] names> 
(define-const var1611 Int (getLength-Arr-String-1 var420)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var2172 var1611)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var3510!1 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3510!2 String)
(assert (str.prefixof var3510!1 var3510!2))
(assert true)
(define-const var2777 String (toString/-2075883882 var3510!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), names/-1304331716=([com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2619=com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter, var794=r1, var3510=$r0, var2172=i1, var420=$r2, var1611=$i0, var2777=$r3}
; {com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter=var2619, r1=var794, $r0=var3510, i1=var2172, $r2=var420, $i0=var1611, $r3=var2777}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("exists(@");	i1 = 0;	$r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NamesExistsFilter: java.lang.String[] names>;	$i0 = lengthof $r2;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3