(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var151 0)
(declare-sort var3067 0)
(declare-sort var2452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun car/1041600998 (var151) var3067)
(declare-fun var3067_pad/1938805371 (var2452 Int) String)
(declare-fun cast-from-var3067-to-var2452 (var3067) var2452)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cdr/1041600998 (var151) var151)
(declare-fun toString/1459463318 (var3067) String)
(declare-fun cast-from-var151-to-var3067 (var151) var3067)
(declare-const null-var151 var151)
(declare-const null-Int Int)
(declare-const var3752 var151) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode 
(assert (not (= var3752 null-var151)))
(declare-const var2615 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2615 null-Int)))
(define-const var3207 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3207)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3207!1 String)
(assert (= var3207!1 ""))
(define-const var2098 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2098)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2098!1 String)
(assert (= var2098!1 ""))
(assert true)
(define-const var2791 String (append/672562846 var2098!1 "\n  car: ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  car: ") 
(declare-const var2098!2 String)
(assert (= var2098!2 (str.++ var2098!1 "\n  car: ")))
(define-const var2057 var3067 (car/1041600998 var3752)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node car> 
(define-const var3535 Int (+ var2615 1)) ; Statement: $i1 = i0 + 1 
(define-const var230 String (var3067_pad/1938805371 (cast-from-var3067-to-var2452 var2057) var3535)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String pad(java.lang.Object,int)>($r3, $i1) 
(assert true)
(define-const var3828 String (append/672562846 var2791 var230)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 var230)))
(assert true)
(define-const var386 String (toString/-2075883882 var3828)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3207!1 var386)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3207!2 String)
(assert (= var3207!2 (str.++ var3207!1 var386)))
(define-const var1721 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1721)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1721!1 String)
(assert (= var1721!1 ""))
(assert true)
(define-const var191 String (append/672562846 var1721!1 "\n  cdr: ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  cdr: ") 
(declare-const var1721!2 String)
(assert (= var1721!2 (str.++ var1721!1 "\n  cdr: ")))
(define-const var3234 var151 (cdr/1041600998 var3752)) ; Statement: $r9 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr> 
 ; Statement: if $r9 != null goto $r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr> 
(assert (not (= var3234 null-var151))) ; Cond: $r9 != null 
(define-const var1720 var151 (cdr/1041600998 var3752)) ; Statement: $r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr> 
(assert true)
(define-const var2655 String (toString/1459463318 (cast-from-var151-to-var3067 var1720))) ; Statement: $r15 = virtualinvoke $r10.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var280 String (append/672562846 var191 var2655)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var191!1 String)
(assert (= var191!1 (str.++ var191 var2655)))
(assert true)
(define-const var1883 String (toString/-2075883882 var280)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3207!2 var1883)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3207!3 String)
(assert (= var3207!3 (str.++ var3207!2 var1883)))
(assert true)
(define-const var79 String (toString/-2075883882 var3207!3)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), car/1041600998=([jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), var3067_pad/1938805371=([java.lang.Object, int], java.lang.String), cast-from-var3067-to-var2452=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cdr/1041600998=([jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode], jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode), toString/1459463318=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.String), cast-from-var151-to-var3067=([jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node)}
; {var151=jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode, var3752=r2, var2615=i0, var3207=$r0, var2098=$r1, var2791=$r5, var3067=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var2057=$r3, var3535=$i1, var2452=java.lang.Object, var230=$r4, var3828=$r6, var386=$r7, var1721=$r8, var191=$r11, var3234=$r9, var1720=$r10, var2655=$r15, var280=$r12, var1883=$r13, var79=$r14}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode=var151, r2=var3752, i0=var2615, $r0=var3207, $r1=var2098, $r5=var2791, jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var3067, $r3=var2057, $i1=var3535, java.lang.Object=var2452, $r4=var230, $r6=var3828, $r7=var386, $r8=var1721, $r11=var191, $r9=var3234, $r10=var1720, $r15=var2655, $r12=var280, $r13=var1883, $r14=var79}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  car: ");	$r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node car>;	$i1 = i0 + 1;	$r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String pad(java.lang.Object,int)>($r3, $i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  cdr: ");	$r9 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr>;	if $r9 != null goto $r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr>;	$r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr>;	$r15 = virtualinvoke $r10.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3