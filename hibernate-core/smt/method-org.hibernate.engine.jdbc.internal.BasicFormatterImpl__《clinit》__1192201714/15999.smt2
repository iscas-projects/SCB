(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2226 0)
(declare-sort var983 0)
(declare-sort var555 0)
(declare-sort var3219 0)
(declare-sort var383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2226-init () var2226)
(declare-fun <init>/451842749 (var2226) void)
(declare-fun cast-from-var2226-to-var983 (var2226) var983)
(declare-fun var983_add/-1142548109 (var983 var3219) Bool)
(declare-fun cast-from-String-to-var3219 (String) var3219)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var383_lineSeparator/-342590142 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var555-BEGIN_CLAUSES var983)
(declare-const var555-END_CLAUSES var983)
(declare-const var555-LOGICAL var983)
(declare-const var555-QUANTIFIERS var983)
(declare-const var555-DML var983)
(declare-const var555-MISC var983)
(define-const var1741 var2226 var2226-init) ; Statement: $r0 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1741)) ; Statement: specialinvoke $r0.<java.util.HashSet: void <init>()>() 

(declare-const var1741!1 var2226)
(define-const var2950 var983 (cast-from-var2226-to-var983 var1741!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> = $r0 
(define-const var2323 var2226 var2226-init) ; Statement: $r1 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2323)) ; Statement: specialinvoke $r1.<java.util.HashSet: void <init>()>() 

(declare-const var2323!1 var2226)
(define-const var2316 var983 (cast-from-var2226-to-var983 var2323!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> = $r1 
(define-const var2722 var2226 var2226-init) ; Statement: $r2 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2722)) ; Statement: specialinvoke $r2.<java.util.HashSet: void <init>()>() 

(declare-const var2722!1 var2226)
(define-const var2641 var983 (cast-from-var2226-to-var983 var2722!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> = $r2 
(define-const var3794 var2226 var2226-init) ; Statement: $r3 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var3794)) ; Statement: specialinvoke $r3.<java.util.HashSet: void <init>()>() 

(declare-const var3794!1 var2226)
(define-const var143 var983 (cast-from-var2226-to-var983 var3794!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> = $r3 
(define-const var1181 var2226 var2226-init) ; Statement: $r4 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1181)) ; Statement: specialinvoke $r4.<java.util.HashSet: void <init>()>() 

(declare-const var1181!1 var2226)
(define-const var2042 var983 (cast-from-var2226-to-var983 var1181!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML> = $r4 
(define-const var1864 var2226 var2226-init) ; Statement: $r5 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1864)) ; Statement: specialinvoke $r5.<java.util.HashSet: void <init>()>() 

(declare-const var1864!1 var2226)
(define-const var483 var983 (cast-from-var2226-to-var983 var1864!1)) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC> = $r5 
(define-const var1750 var983 var555-BEGIN_CLAUSES) ; Statement: $r6 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var1750 (cast-from-String-to-var3219 "left"))) ; Statement: interfaceinvoke $r6.<java.util.Set: boolean add(java.lang.Object)>("left") 

(declare-const var1750!1 var983)
(declare-const var928 String)
(define-const var564 var983 var555-BEGIN_CLAUSES) ; Statement: $r7 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var564 (cast-from-String-to-var3219 "right"))) ; Statement: interfaceinvoke $r7.<java.util.Set: boolean add(java.lang.Object)>("right") 

(declare-const var564!1 var983)
(declare-const var2578 String)
(define-const var2100 var983 var555-BEGIN_CLAUSES) ; Statement: $r8 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var2100 (cast-from-String-to-var3219 "inner"))) ; Statement: interfaceinvoke $r8.<java.util.Set: boolean add(java.lang.Object)>("inner") 

(declare-const var2100!1 var983)
(declare-const var2744 String)
(define-const var1269 var983 var555-BEGIN_CLAUSES) ; Statement: $r9 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var1269 (cast-from-String-to-var3219 "outer"))) ; Statement: interfaceinvoke $r9.<java.util.Set: boolean add(java.lang.Object)>("outer") 

(declare-const var1269!1 var983)
(declare-const var2121 String)
(define-const var1690 var983 var555-BEGIN_CLAUSES) ; Statement: $r10 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var1690 (cast-from-String-to-var3219 "group"))) ; Statement: interfaceinvoke $r10.<java.util.Set: boolean add(java.lang.Object)>("group") 

(declare-const var1690!1 var983)
(declare-const var557 String)
(define-const var3153 var983 var555-BEGIN_CLAUSES) ; Statement: $r11 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> 
;(assert (var983_add/-1142548109 var3153 (cast-from-String-to-var3219 "order"))) ; Statement: interfaceinvoke $r11.<java.util.Set: boolean add(java.lang.Object)>("order") 

(declare-const var3153!1 var983)
(declare-const var3857 String)
(define-const var3279 var983 var555-END_CLAUSES) ; Statement: $r12 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var3279 (cast-from-String-to-var3219 "where"))) ; Statement: interfaceinvoke $r12.<java.util.Set: boolean add(java.lang.Object)>("where") 

(declare-const var3279!1 var983)
(declare-const var2367 String)
(define-const var146 var983 var555-END_CLAUSES) ; Statement: $r13 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var146 (cast-from-String-to-var3219 "set"))) ; Statement: interfaceinvoke $r13.<java.util.Set: boolean add(java.lang.Object)>("set") 

(declare-const var146!1 var983)
(declare-const var2677 String)
(define-const var2590 var983 var555-END_CLAUSES) ; Statement: $r14 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var2590 (cast-from-String-to-var3219 "having"))) ; Statement: interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>("having") 

(declare-const var2590!1 var983)
(declare-const var1418 String)
(define-const var1740 var983 var555-END_CLAUSES) ; Statement: $r15 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var1740 (cast-from-String-to-var3219 "from"))) ; Statement: interfaceinvoke $r15.<java.util.Set: boolean add(java.lang.Object)>("from") 

(declare-const var1740!1 var983)
(declare-const var340 String)
(define-const var1715 var983 var555-END_CLAUSES) ; Statement: $r16 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var1715 (cast-from-String-to-var3219 "by"))) ; Statement: interfaceinvoke $r16.<java.util.Set: boolean add(java.lang.Object)>("by") 

(declare-const var1715!1 var983)
(declare-const var179 String)
(define-const var941 var983 var555-END_CLAUSES) ; Statement: $r17 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var941 (cast-from-String-to-var3219 "join"))) ; Statement: interfaceinvoke $r17.<java.util.Set: boolean add(java.lang.Object)>("join") 

(declare-const var941!1 var983)
(declare-const var1094 String)
(define-const var2220 var983 var555-END_CLAUSES) ; Statement: $r18 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var2220 (cast-from-String-to-var3219 "into"))) ; Statement: interfaceinvoke $r18.<java.util.Set: boolean add(java.lang.Object)>("into") 

(declare-const var2220!1 var983)
(declare-const var2483 String)
(define-const var3508 var983 var555-END_CLAUSES) ; Statement: $r19 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> 
;(assert (var983_add/-1142548109 var3508 (cast-from-String-to-var3219 "union"))) ; Statement: interfaceinvoke $r19.<java.util.Set: boolean add(java.lang.Object)>("union") 

(declare-const var3508!1 var983)
(declare-const var1624 String)
(define-const var2315 var983 var555-LOGICAL) ; Statement: $r20 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> 
;(assert (var983_add/-1142548109 var2315 (cast-from-String-to-var3219 "and"))) ; Statement: interfaceinvoke $r20.<java.util.Set: boolean add(java.lang.Object)>("and") 

(declare-const var2315!1 var983)
(declare-const var2815 String)
(define-const var2807 var983 var555-LOGICAL) ; Statement: $r21 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> 
;(assert (var983_add/-1142548109 var2807 (cast-from-String-to-var3219 "or"))) ; Statement: interfaceinvoke $r21.<java.util.Set: boolean add(java.lang.Object)>("or") 

(declare-const var2807!1 var983)
(declare-const var436 String)
(define-const var2369 var983 var555-LOGICAL) ; Statement: $r22 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> 
;(assert (var983_add/-1142548109 var2369 (cast-from-String-to-var3219 "when"))) ; Statement: interfaceinvoke $r22.<java.util.Set: boolean add(java.lang.Object)>("when") 

(declare-const var2369!1 var983)
(declare-const var3821 String)
(define-const var3555 var983 var555-LOGICAL) ; Statement: $r23 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> 
;(assert (var983_add/-1142548109 var3555 (cast-from-String-to-var3219 "else"))) ; Statement: interfaceinvoke $r23.<java.util.Set: boolean add(java.lang.Object)>("else") 

(declare-const var3555!1 var983)
(declare-const var1966 String)
(define-const var576 var983 var555-LOGICAL) ; Statement: $r24 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> 
;(assert (var983_add/-1142548109 var576 (cast-from-String-to-var3219 "end"))) ; Statement: interfaceinvoke $r24.<java.util.Set: boolean add(java.lang.Object)>("end") 

(declare-const var576!1 var983)
(declare-const var280 String)
(define-const var2846 var983 var555-QUANTIFIERS) ; Statement: $r25 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> 
;(assert (var983_add/-1142548109 var2846 (cast-from-String-to-var3219 "in"))) ; Statement: interfaceinvoke $r25.<java.util.Set: boolean add(java.lang.Object)>("in") 

(declare-const var2846!1 var983)
(declare-const var3918 String)
(define-const var2261 var983 var555-QUANTIFIERS) ; Statement: $r26 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> 
;(assert (var983_add/-1142548109 var2261 (cast-from-String-to-var3219 "all"))) ; Statement: interfaceinvoke $r26.<java.util.Set: boolean add(java.lang.Object)>("all") 

(declare-const var2261!1 var983)
(declare-const var116 String)
(define-const var55 var983 var555-QUANTIFIERS) ; Statement: $r27 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> 
;(assert (var983_add/-1142548109 var55 (cast-from-String-to-var3219 "exists"))) ; Statement: interfaceinvoke $r27.<java.util.Set: boolean add(java.lang.Object)>("exists") 

(declare-const var55!1 var983)
(declare-const var748 String)
(define-const var93 var983 var555-QUANTIFIERS) ; Statement: $r28 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> 
;(assert (var983_add/-1142548109 var93 (cast-from-String-to-var3219 "some"))) ; Statement: interfaceinvoke $r28.<java.util.Set: boolean add(java.lang.Object)>("some") 

(declare-const var93!1 var983)
(declare-const var2455 String)
(define-const var578 var983 var555-QUANTIFIERS) ; Statement: $r29 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> 
;(assert (var983_add/-1142548109 var578 (cast-from-String-to-var3219 "any"))) ; Statement: interfaceinvoke $r29.<java.util.Set: boolean add(java.lang.Object)>("any") 

(declare-const var578!1 var983)
(declare-const var3675 String)
(define-const var367 var983 var555-DML) ; Statement: $r30 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML> 
;(assert (var983_add/-1142548109 var367 (cast-from-String-to-var3219 "insert"))) ; Statement: interfaceinvoke $r30.<java.util.Set: boolean add(java.lang.Object)>("insert") 

(declare-const var367!1 var983)
(declare-const var3316 String)
(define-const var1839 var983 var555-DML) ; Statement: $r31 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML> 
;(assert (var983_add/-1142548109 var1839 (cast-from-String-to-var3219 "update"))) ; Statement: interfaceinvoke $r31.<java.util.Set: boolean add(java.lang.Object)>("update") 

(declare-const var1839!1 var983)
(declare-const var276 String)
(define-const var573 var983 var555-DML) ; Statement: $r32 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML> 
;(assert (var983_add/-1142548109 var573 (cast-from-String-to-var3219 "delete"))) ; Statement: interfaceinvoke $r32.<java.util.Set: boolean add(java.lang.Object)>("delete") 

(declare-const var573!1 var983)
(declare-const var3184 String)
(define-const var3576 var983 var555-MISC) ; Statement: $r33 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC> 
;(assert (var983_add/-1142548109 var3576 (cast-from-String-to-var3219 "select"))) ; Statement: interfaceinvoke $r33.<java.util.Set: boolean add(java.lang.Object)>("select") 

(declare-const var3576!1 var983)
(declare-const var2432 String)
(define-const var3573 var983 var555-MISC) ; Statement: $r34 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC> 
;(assert (var983_add/-1142548109 var3573 (cast-from-String-to-var3219 "on"))) ; Statement: interfaceinvoke $r34.<java.util.Set: boolean add(java.lang.Object)>("on") 

(declare-const var3573!1 var983)
(declare-const var162 String)
(define-const var301 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var301)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var301!1 String)
(assert (= var301!1 ""))
(define-const var1591 String var383_lineSeparator/-342590142) ; Statement: $r36 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var2551 String (append/672562846 var301!1 var1591)) ; Statement: $r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var301!2 String)
(assert (= var301!2 (str.++ var301!1 var1591)))
(assert true)
(define-const var3977 String (append/672562846 var2551 "    ")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2551!1 String)
(assert (= var2551!1 (str.++ var2551 "    ")))
(assert true)
(define-const var2570 String (toString/-2075883882 var3977)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2602 String var2570) ; Statement: <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String INITIAL> = $r39 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2226-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), cast-from-var2226-to-var983=([java.util.HashSet], java.util.Set), var983_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3219=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var383_lineSeparator/-342590142=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2226=java.util.HashSet, var1741=$r0, var983=java.util.Set, var2950=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>, var2323=$r1, var2316=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>, var2722=$r2, var2641=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>, var3794=$r3, var143=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>, var1181=$r4, var2042=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML>, var1864=$r5, var483=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC>, var555=org.hibernate.engine.jdbc.internal.BasicFormatterImpl, var1750=$r6, var3219=java.lang.Object, var928="left", var564=$r7, var2578="right", var2100=$r8, var2744="inner", var1269=$r9, var2121="outer", var1690=$r10, var557="group", var3153=$r11, var3857="order", var3279=$r12, var2367="where", var146=$r13, var2677="set", var2590=$r14, var1418="having", var1740=$r15, var340="from", var1715=$r16, var179="by", var941=$r17, var1094="join", var2220=$r18, var2483="into", var3508=$r19, var1624="union", var2315=$r20, var2815="and", var2807=$r21, var436="or", var2369=$r22, var3821="when", var3555=$r23, var1966="else", var576=$r24, var280="end", var2846=$r25, var3918="in", var2261=$r26, var116="all", var55=$r27, var748="exists", var93=$r28, var2455="some", var578=$r29, var3675="any", var367=$r30, var3316="insert", var1839=$r31, var276="update", var573=$r32, var3184="delete", var3576=$r33, var2432="select", var3573=$r34, var162="on", var301=$r35, var383=java.lang.System, var1591=$r36, var2551=$r37, var3977=$r38, var2570=$r39, var2602=<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String INITIAL>}
; {java.util.HashSet=var2226, $r0=var1741, java.util.Set=var983, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>=var2950, $r1=var2323, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>=var2316, $r2=var2722, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>=var2641, $r3=var3794, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>=var143, $r4=var1181, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML>=var2042, $r5=var1864, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC>=var483, org.hibernate.engine.jdbc.internal.BasicFormatterImpl=var555, $r6=var1750, java.lang.Object=var3219, "left"=var928, $r7=var564, "right"=var2578, $r8=var2100, "inner"=var2744, $r9=var1269, "outer"=var2121, $r10=var1690, "group"=var557, $r11=var3153, "order"=var3857, $r12=var3279, "where"=var2367, $r13=var146, "set"=var2677, $r14=var2590, "having"=var1418, $r15=var1740, "from"=var340, $r16=var1715, "by"=var179, $r17=var941, "join"=var1094, $r18=var2220, "into"=var2483, $r19=var3508, "union"=var1624, $r20=var2315, "and"=var2815, $r21=var2807, "or"=var436, $r22=var2369, "when"=var3821, $r23=var3555, "else"=var1966, $r24=var576, "end"=var280, $r25=var2846, "in"=var3918, $r26=var2261, "all"=var116, $r27=var55, "exists"=var748, $r28=var93, "some"=var2455, $r29=var578, "any"=var3675, $r30=var367, "insert"=var3316, $r31=var1839, "update"=var276, $r32=var573, "delete"=var3184, $r33=var3576, "select"=var2432, $r34=var3573, "on"=var162, $r35=var301, java.lang.System=var383, $r36=var1591, $r37=var2551, $r38=var3977, $r39=var2570, <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String INITIAL>=var2602}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.HashSet;	specialinvoke $r0.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES> = $r0;	$r1 = new java.util.HashSet;	specialinvoke $r1.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES> = $r1;	$r2 = new java.util.HashSet;	specialinvoke $r2.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL> = $r2;	$r3 = new java.util.HashSet;	specialinvoke $r3.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS> = $r3;	$r4 = new java.util.HashSet;	specialinvoke $r4.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML> = $r4;	$r5 = new java.util.HashSet;	specialinvoke $r5.<java.util.HashSet: void <init>()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC> = $r5;	$r6 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r6.<java.util.Set: boolean add(java.lang.Object)>("left");	$r7 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r7.<java.util.Set: boolean add(java.lang.Object)>("right");	$r8 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r8.<java.util.Set: boolean add(java.lang.Object)>("inner");	$r9 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r9.<java.util.Set: boolean add(java.lang.Object)>("outer");	$r10 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r10.<java.util.Set: boolean add(java.lang.Object)>("group");	$r11 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set BEGIN_CLAUSES>;	interfaceinvoke $r11.<java.util.Set: boolean add(java.lang.Object)>("order");	$r12 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r12.<java.util.Set: boolean add(java.lang.Object)>("where");	$r13 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r13.<java.util.Set: boolean add(java.lang.Object)>("set");	$r14 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r14.<java.util.Set: boolean add(java.lang.Object)>("having");	$r15 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r15.<java.util.Set: boolean add(java.lang.Object)>("from");	$r16 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r16.<java.util.Set: boolean add(java.lang.Object)>("by");	$r17 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r17.<java.util.Set: boolean add(java.lang.Object)>("join");	$r18 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r18.<java.util.Set: boolean add(java.lang.Object)>("into");	$r19 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set END_CLAUSES>;	interfaceinvoke $r19.<java.util.Set: boolean add(java.lang.Object)>("union");	$r20 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>;	interfaceinvoke $r20.<java.util.Set: boolean add(java.lang.Object)>("and");	$r21 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>;	interfaceinvoke $r21.<java.util.Set: boolean add(java.lang.Object)>("or");	$r22 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>;	interfaceinvoke $r22.<java.util.Set: boolean add(java.lang.Object)>("when");	$r23 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>;	interfaceinvoke $r23.<java.util.Set: boolean add(java.lang.Object)>("else");	$r24 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set LOGICAL>;	interfaceinvoke $r24.<java.util.Set: boolean add(java.lang.Object)>("end");	$r25 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>;	interfaceinvoke $r25.<java.util.Set: boolean add(java.lang.Object)>("in");	$r26 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>;	interfaceinvoke $r26.<java.util.Set: boolean add(java.lang.Object)>("all");	$r27 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>;	interfaceinvoke $r27.<java.util.Set: boolean add(java.lang.Object)>("exists");	$r28 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>;	interfaceinvoke $r28.<java.util.Set: boolean add(java.lang.Object)>("some");	$r29 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set QUANTIFIERS>;	interfaceinvoke $r29.<java.util.Set: boolean add(java.lang.Object)>("any");	$r30 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML>;	interfaceinvoke $r30.<java.util.Set: boolean add(java.lang.Object)>("insert");	$r31 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML>;	interfaceinvoke $r31.<java.util.Set: boolean add(java.lang.Object)>("update");	$r32 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set DML>;	interfaceinvoke $r32.<java.util.Set: boolean add(java.lang.Object)>("delete");	$r33 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC>;	interfaceinvoke $r33.<java.util.Set: boolean add(java.lang.Object)>("select");	$r34 = <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.util.Set MISC>;	interfaceinvoke $r34.<java.util.Set: boolean add(java.lang.Object)>("on");	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r36 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	<org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String INITIAL> = $r39;	return
;block_num 1