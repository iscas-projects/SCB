(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun left/-269031027 (var1213) var3596)
(declare-fun right/-269031027 (var1213) var3596)
(declare-fun toString/-735317725 (var3596) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1213 var1213)
(declare-const null-var3596 var3596)
(declare-const var2765 var1213) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair 
(assert (not (= var2765 null-var1213)))
(define-const var1639 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1639)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1639!1 String)
(assert (= var1639!1 ""))
(assert true)
;(assert (append/672562846 var1639!1 "(<Pair> ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ") 
(declare-const var1639!2 String)
(assert (= var1639!2 (str.++ var1639!1 "(<Pair> ")))
(define-const var2321 var3596 (left/-269031027 var2765)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert (not (not (= var2321 null-var3596)))) ; Negate: Cond: $r2 != null  
(define-const var3041 String "<null>") ; Statement: $r7 = "<null>" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1639!2 var3041)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1639!3 String)
(assert (= var1639!3 (str.++ var1639!2 var3041)))
(assert true)
;(assert (append/672562846 var1639!3 " . ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ") 
(declare-const var1639!4 String)
(assert (= var1639!4 (str.++ var1639!3 " . ")))
(define-const var3999 var3596 (right/-269031027 var2765)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert (not (= var3999 null-var3596))) ; Cond: $r4 != null 
(define-const var3606 var3596 (right/-269031027 var2765)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert true)
(define-const var3208 String (toString/-735317725 var3606)) ; Statement: $r8 = virtualinvoke $r5.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1639!4 var3208)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1639!5 String)
(assert (= var1639!5 (str.++ var1639!4 var3208)))
(assert true)
;(assert (append/-1166366385 var1639!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1639!6 String)
(assert (str.prefixof var1639!5 var1639!6))
(assert true)
(define-const var2606 String (toString/-2075883882 var1639!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), left/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), right/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), toString/-735317725=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1213=org.apache.ibatis.javassist.compiler.ast.Pair, var2765=r1, var1639=$r0, var3596=org.apache.ibatis.javassist.compiler.ast.ASTree, var2321=$r2, var3041=$r7, var3999=$r4, var3606=$r5, var3208=$r8, var2606=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Pair=var1213, r1=var2765, $r0=var1639, org.apache.ibatis.javassist.compiler.ast.ASTree=var3596, $r2=var2321, $r7=var3041, $r4=var3999, $r5=var3606, $r8=var3208, $r6=var2606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ");	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r7 = "<null>";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ");	$r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r8 = virtualinvoke $r5.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5