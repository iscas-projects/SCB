(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var451_numDigits/624219890 (Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var451_appendSpaces/2026083365 (String Int) void)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1097 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1097 null-Int)))
(declare-const var2362 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2362 null-Int)))
(define-const var2242 Int (var451_numDigits/624219890 var1097)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.Tracer: int numDigits(long)>(l0) 
(define-const var3925 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3925)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3925!1 String)
(assert (= var3925!1 ""))
(define-const var3263 Int (- var2362 var2242)) ; Statement: $i3 = i2 - i1 
;(assert (var451_appendSpaces/2026083365 var3925!1 var3263)) ; Statement: staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, $i3) 

(declare-const var3925!2 String)
(declare-const var3263!1 Int)
(assert true)
;(assert (append/-901862667 var3925!2 var1097)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3925!3 String)
(assert (str.prefixof var3925!2 var3925!3))
(assert true)
(define-const var1837 String (toString/-2075883882 var3925!3)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var451_numDigits/624219890=([long], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var451_appendSpaces/2026083365=([java.lang.StringBuilder, int], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1097=l0, var2362=i2, var451=com.google.javascript.jscomp.Tracer, var2242=i1, var3925=$r0, var3263=$i3, var1837=$r1}
; {l0=var1097, i2=var2362, com.google.javascript.jscomp.Tracer=var451, i1=var2242, $r0=var3925, $i3=var3263, $r1=var1837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	i2 := @parameter1: int;	i1 = staticinvoke <com.google.javascript.jscomp.Tracer: int numDigits(long)>(l0);	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i3 = i2 - i1;	staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, $i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 1