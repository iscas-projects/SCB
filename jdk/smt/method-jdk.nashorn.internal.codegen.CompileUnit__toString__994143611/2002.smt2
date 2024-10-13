(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var2554 0)
(declare-sort var658 0)
(declare-sort var543 0)
(declare-sort var2566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classEmitter/352731939 (var2103) var2554)
(declare-fun getMethodNames/1478040858 (var2554) var658)
(declare-fun toString/-522406933 (var543) String)
(declare-fun cast-from-var658-to-var543 (var658) var543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/352731939 (var2103) String)
(declare-fun var2103_shortName/-1672988367 (String) String)
(declare-fun weight/352731939 (var2103) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2103 var2103)
(declare-const null-var2554 var2554)
(declare-const var2566-SPLIT_THRESHOLD Int)
(declare-const var2020 var2103) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CompileUnit 
(assert (not (= var2020 null-var2103)))
(define-const var869 var2554 (classEmitter/352731939 var2020)) ; Statement: $r1 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter> 
 ; Statement: if $r1 == null goto $r17 = "<anon>" 
(assert (not (= var869 null-var2554))) ; Negate: Cond: $r1 == null  
(define-const var1805 var2554 (classEmitter/352731939 var2020)) ; Statement: $r15 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter> 
(assert true)
(define-const var1258 var658 (getMethodNames/1478040858 var1805)) ; Statement: $r16 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.ClassEmitter: java.util.Set getMethodNames()>() 
(assert true)
(define-const var1004 String (toString/-522406933 (cast-from-var658-to-var543 var1258))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var635 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var635)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var635!1 String)
(assert (= var635!1 ""))
(assert true)
(define-const var1001 String (append/672562846 var635!1 "[CompileUnit className=")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CompileUnit className=") 
(declare-const var635!2 String)
(assert (= var635!2 (str.++ var635!1 "[CompileUnit className=")))
(define-const var3697 String (className/352731939 var2020)) ; Statement: $r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className> 
(define-const var99 String (var2103_shortName/-1672988367 var3697)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: java.lang.String shortName(java.lang.String)>($r3) 
(assert true)
(define-const var2227 String (append/672562846 var1001 var99)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1001!1 String)
(assert (= var1001!1 (str.++ var1001 var99)))
(assert true)
(define-const var1200 String (append/672562846 var2227 " weight=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=") 
(declare-const var2227!1 String)
(assert (= var2227!1 (str.++ var2227 " weight=")))
(define-const var1744 Int (weight/352731939 var2020)) ; Statement: $l0 = r0.<jdk.nashorn.internal.codegen.CompileUnit: long weight> 
(assert true)
(define-const var310 String (append/-901862667 var1200 var1744)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1200!1 String)
(assert (str.prefixof var1200 var1200!1))
(assert true)
(define-const var756 String (append/-1166366385 var310 47)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var310!1 String)
(assert (str.prefixof var310 var310!1))
(define-const var2976 Int var2566-SPLIT_THRESHOLD) ; Statement: $l1 = <jdk.nashorn.internal.codegen.Splitter: long SPLIT_THRESHOLD> 
(assert true)
(define-const var459 String (append/-901862667 var756 var2976)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var756!1 String)
(assert (str.prefixof var756 var756!1))
(assert true)
(define-const var35 String (append/672562846 var459 " hasCode=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hasCode=") 
(declare-const var459!1 String)
(assert (= var459!1 (str.++ var459 " hasCode=")))
(assert true)
(define-const var1957 String (append/672562846 var35 var1004)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var35!1 String)
(assert (= var35!1 (str.++ var35 var1004)))
(assert true)
(define-const var374 String (append/-1166366385 var1957 93)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1957!1 String)
(assert (str.prefixof var1957 var1957!1))
(assert true)
(define-const var2185 String (toString/-2075883882 var374)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {classEmitter/352731939=([jdk.nashorn.internal.codegen.CompileUnit], jdk.nashorn.internal.codegen.ClassEmitter), getMethodNames/1478040858=([jdk.nashorn.internal.codegen.ClassEmitter], java.util.Set), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var658-to-var543=([java.util.Set], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/352731939=([jdk.nashorn.internal.codegen.CompileUnit], java.lang.String), var2103_shortName/-1672988367=([java.lang.String], java.lang.String), weight/352731939=([jdk.nashorn.internal.codegen.CompileUnit], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2103=jdk.nashorn.internal.codegen.CompileUnit, var2020=r0, var2554=jdk.nashorn.internal.codegen.ClassEmitter, var869=$r1, var1805=$r15, var658=java.util.Set, var1258=$r16, var543=java.lang.Object, var1004=$r17, var635=$r2, var1001=$r5, var3697=$r3, var99=$r4, var2227=$r6, var1200=$r7, var1744=$l0, var310=$r8, var756=$r9, var2566=jdk.nashorn.internal.codegen.Splitter, var2976=$l1, var459=$r10, var35=$r11, var1957=$r12, var374=$r13, var2185=$r14}
; {jdk.nashorn.internal.codegen.CompileUnit=var2103, r0=var2020, jdk.nashorn.internal.codegen.ClassEmitter=var2554, $r1=var869, $r15=var1805, java.util.Set=var658, $r16=var1258, java.lang.Object=var543, $r17=var1004, $r2=var635, $r5=var1001, $r3=var3697, $r4=var99, $r6=var2227, $r7=var1200, $l0=var1744, $r8=var310, $r9=var756, jdk.nashorn.internal.codegen.Splitter=var2566, $l1=var2976, $r10=var459, $r11=var35, $r12=var1957, $r13=var374, $r14=var2185}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CompileUnit;	$r1 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter>;	if $r1 == null goto $r17 = "<anon>";	$r15 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter>;	$r16 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.ClassEmitter: java.util.Set getMethodNames()>();	$r17 = virtualinvoke $r16.<java.lang.Object: java.lang.String toString()>();	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CompileUnit className=");	$r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className>;	$r4 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: java.lang.String shortName(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=");	$l0 = r0.<jdk.nashorn.internal.codegen.CompileUnit: long weight>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$l1 = <jdk.nashorn.internal.codegen.Splitter: long SPLIT_THRESHOLD>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hasCode=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3