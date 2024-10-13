(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAddressName/981013177 (var701) String)
(declare-fun parent/-1228377994 (var701) var701)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var3068) String)
(declare-fun cast-from-String-to-var3068 (String) var3068)
(declare-fun toString/978417251 (var701 Int) String)
(declare-const null-var701 var701)
(declare-const var3538 var701) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node 
(assert (not (= var3538 null-var701)))
(define-const var2692 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2692)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2692!1 String)
(assert (= var2692!1 ""))
(define-const var1355 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1355)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1355!1 String)
(assert (= var1355!1 ""))
(assert true)
(define-const var3678 String (append/672562846 var1355!1 "<")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1355!2 String)
(assert (= var1355!2 (str.++ var1355!1 "<")))
(assert true)
(define-const var923 String (getAddressName/981013177 var3538)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>() 
(assert true)
(define-const var396 String (append/672562846 var3678 var923)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3678!1 String)
(assert (= var3678!1 (str.++ var3678 var923)))
(assert true)
(define-const var3754 String (append/672562846 var396 " (")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 " (")))
(define-const var520 var701 (parent/-1228377994 var3538)) ; Statement: $r6 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent> 
 ; Statement: if $r6 != null goto $r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent> 
(assert (not (not (= var520 null-var701)))) ; Negate: Cond: $r6 != null  
(define-const var3140 String "NULL") ; Statement: $r17 = "NULL" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var545 String (append/672562846 var3754 var3140)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3754!1 String)
(assert (= var3754!1 (str.++ var3754 var3140)))
(assert true)
(define-const var3033 String (append/672562846 var545 ")>")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")>") 
(declare-const var545!1 String)
(assert (= var545!1 (str.++ var545 ")>")))
(assert true)
(define-const var3333 String (toString/-2075883882 var3033)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2692!1 var3333)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2692!2 String)
(assert (= var2692!2 (str.++ var2692!1 var3333)))
(define-const var524 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var524)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var524!1 String)
(assert (= var524!1 ""))
(assert true)
(define-const var930 String (append/-1031950772 var524!1 (cast-from-String-to-var3068 var2692!2))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var524!2 String)
(assert (str.prefixof var524!1 var524!2))
(assert true)
(define-const var2736 String (toString/978417251 var3538 0)) ; Statement: $r13 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>(0) 
(assert true)
(define-const var3545 String (append/672562846 var930 var2736)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var930!1 String)
(assert (= var930!1 (str.++ var930 var2736)))
(assert true)
(define-const var932 String (toString/-2075883882 var3545)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAddressName/981013177=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.String), parent/-1228377994=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3068=([java.lang.StringBuilder], java.lang.Object), toString/978417251=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node, int], java.lang.String)}
; {var701=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var3538=r2, var2692=$r0, var1355=$r1, var3678=$r4, var923=$r3, var396=$r5, var3754=$r8, var520=$r6, var3140=$r17, var545=$r9, var3033=$r10, var3333=$r11, var524=$r12, var3068=java.lang.Object, var930=$r14, var2736=$r13, var3545=$r15, var932=$r16}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var701, r2=var3538, $r0=var2692, $r1=var1355, $r4=var3678, $r3=var923, $r5=var396, $r8=var3754, $r6=var520, $r17=var3140, $r9=var545, $r10=var3033, $r11=var3333, $r12=var524, java.lang.Object=var3068, $r14=var930, $r13=var2736, $r15=var3545, $r16=var932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r6 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent>;	if $r6 != null goto $r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent>;	$r17 = "NULL";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")>");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r13 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>(0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 3