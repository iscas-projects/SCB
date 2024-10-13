(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ranges/-1411749008 (var1139) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1139 var1139)
(declare-const var199 var1139) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.CharRanges 
(assert (not (= var199 null-var1139)))
(define-const var3547 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3547)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3547!1 String)
(assert (= var3547!1 ""))
(assert true)
;(assert (append/-1166366385 var3547!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3547!2 String)
(assert (str.prefixof var3547!1 var3547!2))
(define-const var2023 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var676 (Array Int Int) (ranges/-1411749008 var199)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.CharRanges: int[] ranges> 
(define-const var441 Int (getLength-Arr-Int-1 var676)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i7 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var2023 var441)) ; Cond: i7 >= $i0 
(assert true)
;(assert (append/-1166366385 var3547!2 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3547!3 String)
(assert (str.prefixof var3547!2 var3547!3))
(assert true)
(define-const var1928 String (toString/-2075883882 var3547!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ranges/-1411749008=([com.google.javascript.jscomp.regex.CharRanges], int[]), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1139=com.google.javascript.jscomp.regex.CharRanges, var199=r1, var3547=$r0, var2023=i7, var676=$r2, var441=$i0, var1928=$r3}
; {com.google.javascript.jscomp.regex.CharRanges=var1139, r1=var199, $r0=var3547, i7=var2023, $r2=var676, $i0=var441, $r3=var1928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.CharRanges;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i7 = 0;	$r2 = r1.<com.google.javascript.jscomp.regex.CharRanges: int[] ranges>;	$i0 = lengthof $r2;	if i7 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3