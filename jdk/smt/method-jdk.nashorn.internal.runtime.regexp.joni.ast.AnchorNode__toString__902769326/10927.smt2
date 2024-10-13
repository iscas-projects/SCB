(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var1375 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun typeToString/484020113 (var575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun target/-1686397493 (var575) var1375)
(declare-fun var1375_pad/1938805371 (var2535 Int) String)
(declare-fun cast-from-var1375-to-var2535 (var1375) var2535)
(declare-const null-var575 var575)
(declare-const null-Int Int)
(declare-const var1008 var575) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode 
(assert (not (= var1008 null-var575)))
(declare-const var603 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var603 null-Int)))
(define-const var1472 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1472)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1472!1 String)
(assert (= var1472!1 ""))
(define-const var2594 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2594)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2594!1 String)
(assert (= var2594!1 ""))
(assert true)
(define-const var3291 String (append/672562846 var2594!1 "\n  type: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  type: ") 
(declare-const var2594!2 String)
(assert (= var2594!2 (str.++ var2594!1 "\n  type: ")))
(assert true)
(define-const var1364 String (typeToString/484020113 var1008)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: java.lang.String typeToString()>() 
(assert true)
(define-const var1073 String (append/672562846 var3291 var1364)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3291!1 String)
(assert (= var3291!1 (str.++ var3291 var1364)))
(assert true)
(define-const var3113 String (toString/-2075883882 var1073)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1472!1 var3113)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1472!2 String)
(assert (= var1472!2 (str.++ var1472!1 var3113)))
(define-const var1775 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1775)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1775!1 String)
(assert (= var1775!1 ""))
(assert true)
(define-const var3110 String (append/672562846 var1775!1 "\n  target: ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  target: ") 
(declare-const var1775!2 String)
(assert (= var1775!2 (str.++ var1775!1 "\n  target: ")))
(define-const var259 var1375 (target/-1686397493 var1008)) ; Statement: $r8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node target> 
(define-const var3149 Int (+ var603 1)) ; Statement: $i1 = i0 + 1 
(define-const var3211 String (var1375_pad/1938805371 (cast-from-var1375-to-var2535 var259) var3149)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: java.lang.String pad(java.lang.Object,int)>($r8, $i1) 
(assert true)
(define-const var861 String (append/672562846 var3110 var3211)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3110!1 String)
(assert (= var3110!1 (str.++ var3110 var3211)))
(assert true)
(define-const var2393 String (toString/-2075883882 var861)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1472!2 var2393)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1472!3 String)
(assert (= var1472!3 (str.++ var1472!2 var2393)))
(assert true)
(define-const var607 String (toString/-2075883882 var1472!3)) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), typeToString/484020113=([jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), target/-1686397493=([jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), var1375_pad/1938805371=([java.lang.Object, int], java.lang.String), cast-from-var1375-to-var2535=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.Object)}
; {var575=jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode, var1008=r2, var603=i0, var1472=$r0, var2594=$r1, var3291=$r4, var1364=$r3, var1073=$r5, var3113=$r6, var1775=$r7, var3110=$r10, var1375=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var259=$r8, var3149=$i1, var2535=java.lang.Object, var3211=$r9, var861=$r11, var2393=$r12, var607=$r13}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode=var575, r2=var1008, i0=var603, $r0=var1472, $r1=var2594, $r4=var3291, $r3=var1364, $r5=var1073, $r6=var3113, $r7=var1775, $r10=var3110, jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var1375, $r8=var259, $i1=var3149, java.lang.Object=var2535, $r9=var3211, $r11=var861, $r12=var2393, $r13=var607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  type: ");	$r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: java.lang.String typeToString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  target: ");	$r8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node target>;	$i1 = i0 + 1;	$r9 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.AnchorNode: java.lang.String pad(java.lang.Object,int)>($r8, $i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1