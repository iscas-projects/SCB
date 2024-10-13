(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1134 0)
(declare-sort var2949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/-312620604 (var2949) String)
(declare-fun cast-from-var1134-to-var2949 (var1134) var2949)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1134 var1134)
(declare-const var2626 var1134) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.NotSetTransition 
(assert (not (= var2626 null-var1134)))
(define-const var348 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var348)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var348!1 String)
(assert (= var348!1 ""))
(assert true)
(define-const var3572 String (append/-1166366385 var348!1 126)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126) 
(declare-const var348!2 String)
(assert (str.prefixof var348!1 var348!2))
(assert true)
(define-const var2236 String (toString/-312620604 (cast-from-var1134-to-var2949 var2626))) ; Statement: $r2 = specialinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.SetTransition: java.lang.String toString()>() 
(assert true)
(define-const var737 String (append/672562846 var3572 var2236)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 var2236)))
(assert true)
(define-const var3786 String (toString/-2075883882 var737)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-312620604=([com.github.jknack.handlebars.internal.antlr.atn.SetTransition], java.lang.String), cast-from-var1134-to-var2949=([com.github.jknack.handlebars.internal.antlr.atn.NotSetTransition], com.github.jknack.handlebars.internal.antlr.atn.SetTransition), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1134=com.github.jknack.handlebars.internal.antlr.atn.NotSetTransition, var2626=r1, var348=$r0, var3572=$r3, var2949=com.github.jknack.handlebars.internal.antlr.atn.SetTransition, var2236=$r2, var737=$r4, var3786=$r5}
; {com.github.jknack.handlebars.internal.antlr.atn.NotSetTransition=var1134, r1=var2626, $r0=var348, $r3=var3572, com.github.jknack.handlebars.internal.antlr.atn.SetTransition=var2949, $r2=var2236, $r4=var737, $r5=var3786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<com.github.jknack.handlebars.internal.antlr.atn.SetTransition: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.NotSetTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(126);	$r2 = specialinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.SetTransition: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1