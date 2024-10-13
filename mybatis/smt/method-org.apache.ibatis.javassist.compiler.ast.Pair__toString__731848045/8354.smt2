(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var637 0)
(declare-sort var3367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun left/-269031027 (var637) var3367)
(declare-fun toString/-735317725 (var3367) String)
(declare-fun right/-269031027 (var637) var3367)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var637 var637)
(declare-const null-var3367 var3367)
(declare-const var963 var637) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair 
(assert (not (= var963 null-var637)))
(define-const var1651 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1651)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1651!1 String)
(assert (= var1651!1 ""))
(assert true)
;(assert (append/672562846 var1651!1 "(<Pair> ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ") 
(declare-const var1651!2 String)
(assert (= var1651!2 (str.++ var1651!1 "(<Pair> ")))
(define-const var3927 var3367 (left/-269031027 var963)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert (not (= var3927 null-var3367))) ; Cond: $r2 != null 
(define-const var2543 var3367 (left/-269031027 var963)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert true)
(define-const var2895 String (toString/-735317725 var2543)) ; Statement: $r7 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1651!2 var2895)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1651!3 String)
(assert (= var1651!3 (str.++ var1651!2 var2895)))
(assert true)
;(assert (append/672562846 var1651!3 " . ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ") 
(declare-const var1651!4 String)
(assert (= var1651!4 (str.++ var1651!3 " . ")))
(define-const var3202 var3367 (right/-269031027 var963)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert (not (= var3202 null-var3367))) ; Cond: $r4 != null 
(define-const var3659 var3367 (right/-269031027 var963)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert true)
(define-const var2387 String (toString/-735317725 var3659)) ; Statement: $r8 = virtualinvoke $r5.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1651!4 var2387)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1651!5 String)
(assert (= var1651!5 (str.++ var1651!4 var2387)))
(assert true)
;(assert (append/-1166366385 var1651!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1651!6 String)
(assert (str.prefixof var1651!5 var1651!6))
(assert true)
(define-const var783 String (toString/-2075883882 var1651!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), left/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), toString/-735317725=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.String), right/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var637=org.apache.ibatis.javassist.compiler.ast.Pair, var963=r1, var1651=$r0, var3367=org.apache.ibatis.javassist.compiler.ast.ASTree, var3927=$r2, var2543=$r3, var2895=$r7, var3202=$r4, var3659=$r5, var2387=$r8, var783=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Pair=var637, r1=var963, $r0=var1651, org.apache.ibatis.javassist.compiler.ast.ASTree=var3367, $r2=var3927, $r3=var2543, $r7=var2895, $r4=var3202, $r5=var3659, $r8=var2387, $r6=var783}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ");	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r7 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ");	$r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r8 = virtualinvoke $r5.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5