(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/1433046282 (var3274) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun max/1433046282 (var3274) Int)
(declare-fun greedy/1433046282 (var3274) Bool)
(declare-const null-var3274 var3274)
(declare-const null-String String)
(declare-const var438 var3274) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition 
(assert (not (= var438 null-var3274)))
(declare-const var437 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var437 null-String)))
(assert true)
(define-const var348 String (append/672562846 var437 " min=")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" min=") 
(declare-const var437!1 String)
(assert (= var437!1 (str.++ var437 " min=")))
(define-const var2867 Int (min/1433046282 var438)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min> 
(assert true)
(define-const var1162 String (append/-1001720160 var348 var2867)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var348!1 String)
(assert (str.prefixof var348 var348!1))
(assert true)
(define-const var3702 String (append/672562846 var1162 ", max=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", max=") 
(declare-const var1162!1 String)
(assert (= var1162!1 (str.++ var1162 ", max=")))
(define-const var941 Int (max/1433046282 var438)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max> 
(assert true)
;(assert (append/-1001720160 var3702 var941)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3702!1 String)
(assert (str.prefixof var3702 var3702!1))
(define-const var1888 Bool (greedy/1433046282 var438)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy> 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1888 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), max/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), greedy/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], boolean)}
; {var3274=com.google.javascript.jscomp.regex.RegExpTree$Repetition, var438=r1, var437=r0, var348=$r2, var2867=$i0, var1162=$r3, var3702=$r4, var941=$i1, var1888=$z0}
; {com.google.javascript.jscomp.regex.RegExpTree$Repetition=var3274, r1=var438, r0=var437, $r2=var348, $i0=var2867, $r3=var1162, $r4=var3702, $i1=var941, $z0=var1888}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" min=");	$i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", max=");	$i1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>;	if $z0 != 0 goto return;	return
;block_num 2