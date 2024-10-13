(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1423 0)
(declare-sort var2135 0)
(declare-sort var2739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun car/1041600998 (var1423) var2135)
(declare-fun var2135_pad/1938805371 (var2739 Int) String)
(declare-fun cast-from-var2135-to-var2739 (var2135) var2739)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cdr/1041600998 (var1423) var1423)
(declare-const null-var1423 var1423)
(declare-const null-Int Int)
(declare-const var2767 var1423) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode 
(assert (not (= var2767 null-var1423)))
(declare-const var1644 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1644 null-Int)))
(define-const var2610 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2610)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2610!1 String)
(assert (= var2610!1 ""))
(define-const var3308 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3308)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3308!1 String)
(assert (= var3308!1 ""))
(assert true)
(define-const var2873 String (append/672562846 var3308!1 "\n  car: ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  car: ") 
(declare-const var3308!2 String)
(assert (= var3308!2 (str.++ var3308!1 "\n  car: ")))
(define-const var1081 var2135 (car/1041600998 var2767)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node car> 
(define-const var1492 Int (+ var1644 1)) ; Statement: $i1 = i0 + 1 
(define-const var2687 String (var2135_pad/1938805371 (cast-from-var2135-to-var2739 var1081) var1492)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String pad(java.lang.Object,int)>($r3, $i1) 
(assert true)
(define-const var1562 String (append/672562846 var2873 var2687)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2873!1 String)
(assert (= var2873!1 (str.++ var2873 var2687)))
(assert true)
(define-const var1952 String (toString/-2075883882 var1562)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2610!1 var1952)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2610!2 String)
(assert (= var2610!2 (str.++ var2610!1 var1952)))
(define-const var181 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var181)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var181!1 String)
(assert (= var181!1 ""))
(assert true)
(define-const var2550 String (append/672562846 var181!1 "\n  cdr: ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  cdr: ") 
(declare-const var181!2 String)
(assert (= var181!2 (str.++ var181!1 "\n  cdr: ")))
(define-const var3606 var1423 (cdr/1041600998 var2767)) ; Statement: $r9 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr> 
 ; Statement: if $r9 != null goto $r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr> 
(assert (not (not (= var3606 null-var1423)))) ; Negate: Cond: $r9 != null  
(define-const var1249 String "NULL") ; Statement: $r15 = "NULL" 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var571 String (append/672562846 var2550 var1249)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2550!1 String)
(assert (= var2550!1 (str.++ var2550 var1249)))
(assert true)
(define-const var255 String (toString/-2075883882 var571)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2610!2 var255)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2610!3 String)
(assert (= var2610!3 (str.++ var2610!2 var255)))
(assert true)
(define-const var2495 String (toString/-2075883882 var2610!3)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), car/1041600998=([jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), var2135_pad/1938805371=([java.lang.Object, int], java.lang.String), cast-from-var2135-to-var2739=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cdr/1041600998=([jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode], jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode)}
; {var1423=jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode, var2767=r2, var1644=i0, var2610=$r0, var3308=$r1, var2873=$r5, var2135=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var1081=$r3, var1492=$i1, var2739=java.lang.Object, var2687=$r4, var1562=$r6, var1952=$r7, var181=$r8, var2550=$r11, var3606=$r9, var1249=$r15, var571=$r12, var255=$r13, var2495=$r14}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode=var1423, r2=var2767, i0=var1644, $r0=var2610, $r1=var3308, $r5=var2873, jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var2135, $r3=var1081, $i1=var1492, java.lang.Object=var2739, $r4=var2687, $r6=var1562, $r7=var1952, $r8=var181, $r11=var2550, $r9=var3606, $r15=var1249, $r12=var571, $r13=var255, $r14=var2495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  car: ");	$r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node car>;	$i1 = i0 + 1;	$r4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: java.lang.String pad(java.lang.Object,int)>($r3, $i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  cdr: ");	$r9 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr>;	if $r9 != null goto $r10 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode: jdk.nashorn.internal.runtime.regexp.joni.ast.ConsAltNode cdr>;	$r15 = "NULL";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3