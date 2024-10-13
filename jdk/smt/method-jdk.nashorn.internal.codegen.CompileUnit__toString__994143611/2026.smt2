(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1467 0)
(declare-sort var338 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classEmitter/352731939 (var1467) var338)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/352731939 (var1467) String)
(declare-fun var1467_shortName/-1672988367 (String) String)
(declare-fun weight/352731939 (var1467) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1467 var1467)
(declare-const null-var338 var338)
(declare-const var2765-SPLIT_THRESHOLD Int)
(declare-const var1365 var1467) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CompileUnit 
(assert (not (= var1365 null-var1467)))
(define-const var3111 var338 (classEmitter/352731939 var1365)) ; Statement: $r1 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter> 
 ; Statement: if $r1 == null goto $r17 = "<anon>" 
(assert (= var3111 null-var338)) ; Cond: $r1 == null 
(define-const var3856 String "<anon>") ; Statement: $r17 = "<anon>" 
(assert true) ; Non Conditional
(define-const var2690 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2690)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2690!1 String)
(assert (= var2690!1 ""))
(assert true)
(define-const var982 String (append/672562846 var2690!1 "[CompileUnit className=")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CompileUnit className=") 
(declare-const var2690!2 String)
(assert (= var2690!2 (str.++ var2690!1 "[CompileUnit className=")))
(define-const var3816 String (className/352731939 var1365)) ; Statement: $r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className> 
(define-const var1488 String (var1467_shortName/-1672988367 var3816)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: java.lang.String shortName(java.lang.String)>($r3) 
(assert true)
(define-const var2906 String (append/672562846 var982 var1488)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var982!1 String)
(assert (= var982!1 (str.++ var982 var1488)))
(assert true)
(define-const var252 String (append/672562846 var2906 " weight=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=") 
(declare-const var2906!1 String)
(assert (= var2906!1 (str.++ var2906 " weight=")))
(define-const var2954 Int (weight/352731939 var1365)) ; Statement: $l0 = r0.<jdk.nashorn.internal.codegen.CompileUnit: long weight> 
(assert true)
(define-const var3676 String (append/-901862667 var252 var2954)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var252!1 String)
(assert (str.prefixof var252 var252!1))
(assert true)
(define-const var3204 String (append/-1166366385 var3676 47)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var3676!1 String)
(assert (str.prefixof var3676 var3676!1))
(define-const var1446 Int var2765-SPLIT_THRESHOLD) ; Statement: $l1 = <jdk.nashorn.internal.codegen.Splitter: long SPLIT_THRESHOLD> 
(assert true)
(define-const var1698 String (append/-901862667 var3204 var1446)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3204!1 String)
(assert (str.prefixof var3204 var3204!1))
(assert true)
(define-const var915 String (append/672562846 var1698 " hasCode=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hasCode=") 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 " hasCode=")))
(assert true)
(define-const var139 String (append/672562846 var915 var3856)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var915!1 String)
(assert (= var915!1 (str.++ var915 var3856)))
(assert true)
(define-const var1385 String (append/-1166366385 var139 93)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var139!1 String)
(assert (str.prefixof var139 var139!1))
(assert true)
(define-const var2970 String (toString/-2075883882 var1385)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {classEmitter/352731939=([jdk.nashorn.internal.codegen.CompileUnit], jdk.nashorn.internal.codegen.ClassEmitter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/352731939=([jdk.nashorn.internal.codegen.CompileUnit], java.lang.String), var1467_shortName/-1672988367=([java.lang.String], java.lang.String), weight/352731939=([jdk.nashorn.internal.codegen.CompileUnit], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1467=jdk.nashorn.internal.codegen.CompileUnit, var1365=r0, var338=jdk.nashorn.internal.codegen.ClassEmitter, var3111=$r1, var3856=$r17, var2690=$r2, var982=$r5, var3816=$r3, var1488=$r4, var2906=$r6, var252=$r7, var2954=$l0, var3676=$r8, var3204=$r9, var2765=jdk.nashorn.internal.codegen.Splitter, var1446=$l1, var1698=$r10, var915=$r11, var139=$r12, var1385=$r13, var2970=$r14}
; {jdk.nashorn.internal.codegen.CompileUnit=var1467, r0=var1365, jdk.nashorn.internal.codegen.ClassEmitter=var338, $r1=var3111, $r17=var3856, $r2=var2690, $r5=var982, $r3=var3816, $r4=var1488, $r6=var2906, $r7=var252, $l0=var2954, $r8=var3676, $r9=var3204, jdk.nashorn.internal.codegen.Splitter=var2765, $l1=var1446, $r10=var1698, $r11=var915, $r12=var139, $r13=var1385, $r14=var2970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CompileUnit;	$r1 = r0.<jdk.nashorn.internal.codegen.CompileUnit: jdk.nashorn.internal.codegen.ClassEmitter classEmitter>;	if $r1 == null goto $r17 = "<anon>";	$r17 = "<anon>";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CompileUnit className=");	$r3 = r0.<jdk.nashorn.internal.codegen.CompileUnit: java.lang.String className>;	$r4 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: java.lang.String shortName(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=");	$l0 = r0.<jdk.nashorn.internal.codegen.CompileUnit: long weight>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$l1 = <jdk.nashorn.internal.codegen.Splitter: long SPLIT_THRESHOLD>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hasCode=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3