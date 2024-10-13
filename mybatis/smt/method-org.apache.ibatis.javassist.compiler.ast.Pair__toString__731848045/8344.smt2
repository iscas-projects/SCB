(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1907 0)
(declare-sort var1448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun left/-269031027 (var1907) var1448)
(declare-fun toString/-735317725 (var1448) String)
(declare-fun right/-269031027 (var1907) var1448)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1907 var1907)
(declare-const null-var1448 var1448)
(declare-const var2855 var1907) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair 
(assert (not (= var2855 null-var1907)))
(define-const var2772 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2772)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2772!1 String)
(assert (= var2772!1 ""))
(assert true)
;(assert (append/672562846 var2772!1 "(<Pair> ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ") 
(declare-const var2772!2 String)
(assert (= var2772!2 (str.++ var2772!1 "(<Pair> ")))
(define-const var3275 var1448 (left/-269031027 var2855)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert (not (= var3275 null-var1448))) ; Cond: $r2 != null 
(define-const var631 var1448 (left/-269031027 var2855)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert true)
(define-const var2902 String (toString/-735317725 var631)) ; Statement: $r7 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2772!2 var2902)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2772!3 String)
(assert (= var2772!3 (str.++ var2772!2 var2902)))
(assert true)
;(assert (append/672562846 var2772!3 " . ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ") 
(declare-const var2772!4 String)
(assert (= var2772!4 (str.++ var2772!3 " . ")))
(define-const var394 var1448 (right/-269031027 var2855)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert (not (not (= var394 null-var1448)))) ; Negate: Cond: $r4 != null  
(define-const var2496 String "<null>") ; Statement: $r8 = "<null>" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2772!4 var2496)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2772!5 String)
(assert (= var2772!5 (str.++ var2772!4 var2496)))
(assert true)
;(assert (append/-1166366385 var2772!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2772!6 String)
(assert (str.prefixof var2772!5 var2772!6))
(assert true)
(define-const var1539 String (toString/-2075883882 var2772!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), left/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), toString/-735317725=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.String), right/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1907=org.apache.ibatis.javassist.compiler.ast.Pair, var2855=r1, var2772=$r0, var1448=org.apache.ibatis.javassist.compiler.ast.ASTree, var3275=$r2, var631=$r3, var2902=$r7, var394=$r4, var2496=$r8, var1539=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Pair=var1907, r1=var2855, $r0=var2772, org.apache.ibatis.javassist.compiler.ast.ASTree=var1448, $r2=var3275, $r3=var631, $r7=var2902, $r4=var394, $r8=var2496, $r6=var1539}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ");	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r7 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ");	$r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r8 = "<null>";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5