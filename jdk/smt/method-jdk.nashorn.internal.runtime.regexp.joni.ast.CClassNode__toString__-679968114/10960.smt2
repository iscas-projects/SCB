(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1883 0)
(declare-sort var2979 0)
(declare-sort var1084 0)
(declare-sort var3175 0)
(declare-sort var1645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun flagsToString/-1889556016 (var1883) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun bs/-670021141 (var1883) var2979)
(declare-fun var1084_pad/1938805371 (var3175 Int) String)
(declare-fun cast-from-var2979-to-var3175 (var2979) var3175)
(declare-fun mbuf/-670021141 (var1883) var1645)
(declare-fun cast-from-var1645-to-var3175 (var1645) var3175)
(declare-const null-var1883 var1883)
(declare-const null-Int Int)
(declare-const var1538 var1883) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode 
(assert (not (= var1538 null-var1883)))
(declare-const var80 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var80 null-Int)))
(define-const var2402 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2402)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2402!1 String)
(assert (= var2402!1 ""))
(define-const var1136 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1136)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1136!1 String)
(assert (= var1136!1 ""))
(assert true)
(define-const var2535 String (append/672562846 var1136!1 "\n  flags: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  flags: ") 
(declare-const var1136!2 String)
(assert (= var1136!2 (str.++ var1136!1 "\n  flags: ")))
(assert true)
(define-const var2432 String (flagsToString/-1889556016 var1538)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String flagsToString()>() 
(assert true)
(define-const var773 String (append/672562846 var2535 var2432)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2535!1 String)
(assert (= var2535!1 (str.++ var2535 var2432)))
(assert true)
(define-const var303 String (toString/-2075883882 var773)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2402!1 var303)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2402!2 String)
(assert (= var2402!2 (str.++ var2402!1 var303)))
(define-const var3705 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3705)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3705!1 String)
(assert (= var3705!1 ""))
(assert true)
(define-const var1522 String (append/672562846 var3705!1 "\n  bs: ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bs: ") 
(declare-const var3705!2 String)
(assert (= var3705!2 (str.++ var3705!1 "\n  bs: ")))
(define-const var18 var2979 (bs/-670021141 var1538)) ; Statement: $r8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: jdk.nashorn.internal.runtime.regexp.joni.BitSet bs> 
(define-const var2260 Int (+ var80 1)) ; Statement: $i1 = i0 + 1 
(define-const var3648 String (var1084_pad/1938805371 (cast-from-var2979-to-var3175 var18) var2260)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String pad(java.lang.Object,int)>($r8, $i1) 
(assert true)
(define-const var1615 String (append/672562846 var1522 var3648)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 var3648)))
(assert true)
(define-const var3031 String (toString/-2075883882 var1615)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2402!2 var3031)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2402!3 String)
(assert (= var2402!3 (str.++ var2402!2 var3031)))
(define-const var1750 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1750)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1750!1 String)
(assert (= var1750!1 ""))
(assert true)
(define-const var2305 String (append/672562846 var1750!1 "\n  mbuf: ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  mbuf: ") 
(declare-const var1750!2 String)
(assert (= var1750!2 (str.++ var1750!1 "\n  mbuf: ")))
(define-const var484 var1645 (mbuf/-670021141 var1538)) ; Statement: $r14 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer mbuf> 
(define-const var1192 Int (+ var80 1)) ; Statement: $i2 = i0 + 1 
(define-const var1924 String (var1084_pad/1938805371 (cast-from-var1645-to-var3175 var484) var1192)) ; Statement: $r15 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String pad(java.lang.Object,int)>($r14, $i2) 
(assert true)
(define-const var647 String (append/672562846 var2305 var1924)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2305!1 String)
(assert (= var2305!1 (str.++ var2305 var1924)))
(assert true)
(define-const var234 String (toString/-2075883882 var647)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2402!3 var234)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2402!4 String)
(assert (= var2402!4 (str.++ var2402!3 var234)))
(assert true)
(define-const var3128 String (toString/-2075883882 var2402!4)) ; Statement: $r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), flagsToString/-1889556016=([jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), bs/-670021141=([jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode], jdk.nashorn.internal.runtime.regexp.joni.BitSet), var1084_pad/1938805371=([java.lang.Object, int], java.lang.String), cast-from-var2979-to-var3175=([jdk.nashorn.internal.runtime.regexp.joni.BitSet], java.lang.Object), mbuf/-670021141=([jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode], jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer), cast-from-var1645-to-var3175=([jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer], java.lang.Object)}
; {var1883=jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode, var1538=r2, var80=i0, var2402=$r0, var1136=$r1, var2535=$r4, var2432=$r3, var773=$r5, var303=$r6, var3705=$r7, var1522=$r10, var2979=jdk.nashorn.internal.runtime.regexp.joni.BitSet, var18=$r8, var2260=$i1, var1084=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var3175=java.lang.Object, var3648=$r9, var1615=$r11, var3031=$r12, var1750=$r13, var2305=$r16, var1645=jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer, var484=$r14, var1192=$i2, var1924=$r15, var647=$r17, var234=$r18, var3128=$r19}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode=var1883, r2=var1538, i0=var80, $r0=var2402, $r1=var1136, $r4=var2535, $r3=var2432, $r5=var773, $r6=var303, $r7=var3705, $r10=var1522, jdk.nashorn.internal.runtime.regexp.joni.BitSet=var2979, $r8=var18, $i1=var2260, jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var1084, java.lang.Object=var3175, $r9=var3648, $r11=var1615, $r12=var3031, $r13=var1750, $r16=var2305, jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer=var1645, $r14=var484, $i2=var1192, $r15=var1924, $r17=var647, $r18=var234, $r19=var3128}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  flags: ");	$r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String flagsToString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  bs: ");	$r8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: jdk.nashorn.internal.runtime.regexp.joni.BitSet bs>;	$i1 = i0 + 1;	$r9 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String pad(java.lang.Object,int)>($r8, $i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  mbuf: ");	$r14 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: jdk.nashorn.internal.runtime.regexp.joni.CodeRangeBuffer mbuf>;	$i2 = i0 + 1;	$r15 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.ast.CClassNode: java.lang.String pad(java.lang.Object,int)>($r14, $i2);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r19 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 1