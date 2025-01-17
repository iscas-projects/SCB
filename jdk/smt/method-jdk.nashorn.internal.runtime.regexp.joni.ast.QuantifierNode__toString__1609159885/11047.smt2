(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort var1361 0)
(declare-sort var1212 0)
(declare-sort var559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-544818494 (var1361 Int) String)
(declare-fun cast-from-var178-to-var1361 (var178) var1361)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/944486860 (var178) var1212)
(declare-fun var1212_pad/1938805371 (var559 Int) String)
(declare-fun cast-from-var1212-to-var559 (var1212) var559)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun lower/944486860 (var178) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun upper/944486860 (var178) Int)
(declare-fun greedy/944486860 (var178) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun targetEmptyInfo/944486860 (var178) Int)
(declare-fun headExact/944486860 (var178) var1212)
(declare-fun nextHeadExact/944486860 (var178) var1212)
(declare-fun isRefered/944486860 (var178) Bool)
(declare-const null-var178 var178)
(declare-const null-Int Int)
(declare-const var518 var178) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode 
(assert (not (= var518 null-var178)))
(declare-const var127 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var127 null-Int)))
(define-const var1725 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1156 String (toString/-544818494 (cast-from-var178-to-var1361 var518) var127)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>(i0) 
(assert true)
;(assert (<init>/-1061048412 var1725 var1156)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var1725!1 String)
(assert (= var1725!1 var1156))
(define-const var859 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var859)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var859!1 String)
(assert (= var859!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var859!1 "\n  target: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  target: ") 
(declare-const var859!2 String)
(assert (= var859!2 (str.++ var859!1 "\n  target: ")))
(define-const var2645 var1212 (target/944486860 var518)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node target> 
(define-const var3234 Int (+ var127 1)) ; Statement: $i1 = i0 + 1 
(define-const var3080 String (var1212_pad/1938805371 (cast-from-var1212-to-var559 var2645) var3234)) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r4, $i1) 
(assert true)
(define-const var365 String (append/672562846 var3383 var3080)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var3080)))
(assert true)
(define-const var1932 String (toString/-2075883882 var365)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!1 var1932)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1725!2 String)
(assert (= var1725!2 (str.++ var1725!1 var1932)))
(define-const var1103 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1103)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1103!1 String)
(assert (= var1103!1 ""))
(assert true)
(define-const var805 String (append/672562846 var1103!1 "\n  lower: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  lower: ") 
(declare-const var1103!2 String)
(assert (= var1103!2 (str.++ var1103!1 "\n  lower: ")))
(define-const var3657 Int (lower/944486860 var518)) ; Statement: $i2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int lower> 
(assert true)
(define-const var1124 String (append/-1001720160 var805 var3657)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var805!1 String)
(assert (str.prefixof var805 var805!1))
(assert true)
(define-const var53 String (toString/-2075883882 var1124)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!2 var53)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1725!3 String)
(assert (= var1725!3 (str.++ var1725!2 var53)))
(define-const var1091 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1091)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1091!1 String)
(assert (= var1091!1 ""))
(assert true)
(define-const var797 String (append/672562846 var1091!1 "\n  upper: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  upper: ") 
(declare-const var1091!2 String)
(assert (= var1091!2 (str.++ var1091!1 "\n  upper: ")))
(define-const var1632 Int (upper/944486860 var518)) ; Statement: $i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int upper> 
(assert true)
(define-const var3038 String (append/-1001720160 var797 var1632)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var797!1 String)
(assert (str.prefixof var797 var797!1))
(assert true)
(define-const var1754 String (toString/-2075883882 var3038)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!3 var1754)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1725!4 String)
(assert (= var1725!4 (str.++ var1725!3 var1754)))
(define-const var3247 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3247)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3247!1 String)
(assert (= var3247!1 ""))
(assert true)
(define-const var52 String (append/672562846 var3247!1 "\n  greedy: ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  greedy: ") 
(declare-const var3247!2 String)
(assert (= var3247!2 (str.++ var3247!1 "\n  greedy: ")))
(define-const var808 Bool (greedy/944486860 var518)) ; Statement: $z0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: boolean greedy> 
(assert true)
(define-const var748 String (append/-388390247 var52 var808)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var52!1 String)
(assert (str.prefixof var52 var52!1))
(assert true)
(define-const var713 String (toString/-2075883882 var748)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!4 var713)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1725!5 String)
(assert (= var1725!5 (str.++ var1725!4 var713)))
(define-const var1523 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1523)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1523!1 String)
(assert (= var1523!1 ""))
(assert true)
(define-const var2499 String (append/672562846 var1523!1 "\n  targetEmptyInfo: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  targetEmptyInfo: ") 
(declare-const var1523!2 String)
(assert (= var1523!2 (str.++ var1523!1 "\n  targetEmptyInfo: ")))
(define-const var773 Int (targetEmptyInfo/944486860 var518)) ; Statement: $i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int targetEmptyInfo> 
(assert true)
(define-const var3020 String (append/-1001720160 var2499 var773)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2499!1 String)
(assert (str.prefixof var2499 var2499!1))
(assert true)
(define-const var250 String (toString/-2075883882 var3020)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!5 var250)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1725!6 String)
(assert (= var1725!6 (str.++ var1725!5 var250)))
(define-const var1828 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1828)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1828!1 String)
(assert (= var1828!1 ""))
(assert true)
(define-const var1681 String (append/672562846 var1828!1 "\n  headExact: ")) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  headExact: ") 
(declare-const var1828!2 String)
(assert (= var1828!2 (str.++ var1828!1 "\n  headExact: ")))
(define-const var3333 var1212 (headExact/944486860 var518)) ; Statement: $r26 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node headExact> 
(define-const var3671 Int (+ var127 1)) ; Statement: $i5 = i0 + 1 
(define-const var3856 String (var1212_pad/1938805371 (cast-from-var1212-to-var559 var3333) var3671)) ; Statement: $r27 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r26, $i5) 
(assert true)
(define-const var2279 String (append/672562846 var1681 var3856)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1681!1 String)
(assert (= var1681!1 (str.++ var1681 var3856)))
(assert true)
(define-const var749 String (toString/-2075883882 var2279)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!6 var749)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1725!7 String)
(assert (= var1725!7 (str.++ var1725!6 var749)))
(define-const var2055 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2055)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2055!1 String)
(assert (= var2055!1 ""))
(assert true)
(define-const var2526 String (append/672562846 var2055!1 "\n  nextHeadExact: ")) ; Statement: $r34 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nextHeadExact: ") 
(declare-const var2055!2 String)
(assert (= var2055!2 (str.++ var2055!1 "\n  nextHeadExact: ")))
(define-const var563 var1212 (nextHeadExact/944486860 var518)) ; Statement: $r32 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node nextHeadExact> 
(define-const var2918 Int (+ var127 1)) ; Statement: $i6 = i0 + 1 
(define-const var3043 String (var1212_pad/1938805371 (cast-from-var1212-to-var559 var563) var2918)) ; Statement: $r33 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r32, $i6) 
(assert true)
(define-const var3462 String (append/672562846 var2526 var3043)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var2526!1 String)
(assert (= var2526!1 (str.++ var2526 var3043)))
(assert true)
(define-const var1521 String (toString/-2075883882 var3462)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!7 var1521)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var1725!8 String)
(assert (= var1725!8 (str.++ var1725!7 var1521)))
(define-const var3673 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3673)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3673!1 String)
(assert (= var3673!1 ""))
(assert true)
(define-const var1547 String (append/672562846 var3673!1 "\n  isRefered: ")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  isRefered: ") 
(declare-const var3673!2 String)
(assert (= var3673!2 (str.++ var3673!1 "\n  isRefered: ")))
(define-const var396 Bool (isRefered/944486860 var518)) ; Statement: $z1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: boolean isRefered> 
(assert true)
(define-const var3135 String (append/-388390247 var1547 var396)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var1547!1 String)
(assert (str.prefixof var1547 var1547!1))
(assert true)
(define-const var768 String (toString/-2075883882 var3135)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1725!8 var768)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1725!9 String)
(assert (= var1725!9 (str.++ var1725!8 var768)))
(assert true)
(define-const var625 String (toString/-2075883882 var1725!9)) ; Statement: $r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-544818494=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, int], java.lang.String), cast-from-var178-to-var1361=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), var1212_pad/1938805371=([java.lang.Object, int], java.lang.String), cast-from-var1212-to-var559=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), lower/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), upper/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], int), greedy/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), targetEmptyInfo/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], int), headExact/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), nextHeadExact/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), isRefered/944486860=([jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode], boolean)}
; {var178=jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode, var518=r1, var127=i0, var1725=$r0, var1361=jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, var1156=$r2, var859=$r3, var3383=$r6, var1212=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var2645=$r4, var3234=$i1, var559=java.lang.Object, var3080=$r5, var365=$r7, var1932=$r8, var1103=$r9, var805=$r10, var3657=$i2, var1124=$r11, var53=$r12, var1091=$r13, var797=$r14, var1632=$i3, var3038=$r15, var1754=$r16, var3247=$r17, var52=$r18, var808=$z0, var748=$r19, var713=$r20, var1523=$r21, var2499=$r22, var773=$i4, var3020=$r23, var250=$r24, var1828=$r25, var1681=$r28, var3333=$r26, var3671=$i5, var3856=$r27, var2279=$r29, var749=$r30, var2055=$r31, var2526=$r34, var563=$r32, var2918=$i6, var3043=$r33, var3462=$r35, var1521=$r36, var3673=$r37, var1547=$r38, var396=$z1, var3135=$r39, var768=$r40, var625=$r41}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode=var178, r1=var518, i0=var127, $r0=var1725, jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode=var1361, $r2=var1156, $r3=var859, $r6=var3383, jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var1212, $r4=var2645, $i1=var3234, java.lang.Object=var559, $r5=var3080, $r7=var365, $r8=var1932, $r9=var1103, $r10=var805, $i2=var3657, $r11=var1124, $r12=var53, $r13=var1091, $r14=var797, $i3=var1632, $r15=var3038, $r16=var1754, $r17=var3247, $r18=var52, $z0=var808, $r19=var748, $r20=var713, $r21=var1523, $r22=var2499, $i4=var773, $r23=var3020, $r24=var250, $r25=var1828, $r28=var1681, $r26=var3333, $i5=var3671, $r27=var3856, $r29=var2279, $r30=var749, $r31=var2055, $r34=var2526, $r32=var563, $i6=var2918, $r33=var3043, $r35=var3462, $r36=var1521, $r37=var3673, $r38=var1547, $z1=var396, $r39=var3135, $r40=var768, $r41=var625}
;seq <jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 19,"<java.lang.StringBuilder: java.lang.String toString()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String toString(int)>(i0);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  target: ");	$r4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node target>;	$i1 = i0 + 1;	$r5 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r4, $i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  lower: ");	$i2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int lower>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  upper: ");	$i3 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int upper>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  greedy: ");	$z0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: boolean greedy>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  targetEmptyInfo: ");	$i4 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: int targetEmptyInfo>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  headExact: ");	$r26 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node headExact>;	$i5 = i0 + 1;	$r27 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r26, $i5);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  nextHeadExact: ");	$r32 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: jdk.nashorn.internal.runtime.regexp.joni.ast.Node nextHeadExact>;	$i6 = i0 + 1;	$r33 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: java.lang.String pad(java.lang.Object,int)>($r32, $i6);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  isRefered: ");	$z1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.QuantifierNode: boolean isRefered>;	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r41 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r41
;block_num 1