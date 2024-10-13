(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2148 0)
(declare-sort var2903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2903_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/-1103324373 (var2148) var2148)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/-1103324373 (var2148) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/-1103324373 (var2148) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2148 var2148)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1737 var2148) ; Statement: r3 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var1737 null-var2148)))
(declare-const var2536 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var2536 null-__Array__Int____Array__Int__Int____)))
(declare-const var2002 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var2002 null-__Array__Int__String__)))
(define-const var1815 String (var2903_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var389 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var389)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var389!1 String)
(define-const var395 Int 0) ; Statement: i11 = 0 
(define-const var1146 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var3344 Int (getLength-Arr-Int-2 var2536)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var1146 var3344)) ; Cond: i12 >= $i0 
(define-const var363 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var3351 var2148 (next/-1103324373 var1737)) ; Statement: r67 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var473 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var473 var395)) ; Cond: i15 >= i11 
(define-const var1633 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1633)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1633!1 String)
(assert (= var1633!1 ""))
(assert true)
(define-const var1075 String (append/672562846 var1633!1 var363)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var1633!2 String)
(assert (= var1633!2 (str.++ var1633!1 var363)))
(assert true)
(define-const var402 String (append/672562846 var1075 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var1075!1 String)
(assert (= var1075!1 (str.++ var1075 "\u0022 at line ")))
(define-const var3762 var2148 (next/-1103324373 var1737)) ; Statement: $r6 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var2092 Int (beginLine/-1103324373 var3762)) ; Statement: $i1 = $r6.<org.javacc.jjtree.Token: int beginLine> 
(assert true)
(define-const var1822 String (append/-1001720160 var402 var2092)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var402!1 String)
(assert (str.prefixof var402 var402!1))
(assert true)
(define-const var135 String (append/672562846 var1822 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1822!1 String)
(assert (= var1822!1 (str.++ var1822 ", column ")))
(define-const var3424 var2148 (next/-1103324373 var1737)) ; Statement: $r9 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var1731 Int (beginColumn/-1103324373 var3424)) ; Statement: $i2 = $r9.<org.javacc.jjtree.Token: int beginColumn> 
(assert true)
(define-const var1240 String (append/-1001720160 var135 var1731)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var135!1 String)
(assert (str.prefixof var135 var135!1))
(assert true)
(define-const var2267 String (toString/-2075883882 var1240)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1320 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1320)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1320!1 String)
(assert (= var1320!1 ""))
(assert true)
(define-const var845 String (append/672562846 var1320!1 var2267)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var1320!2 String)
(assert (= var1320!2 (str.++ var1320!1 var2267)))
(assert true)
(define-const var2465 String (append/672562846 var845 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var845!1 String)
(assert (= var845!1 (str.++ var845 ".")))
(assert true)
(define-const var1820 String (append/672562846 var2465 var1815)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2465!1 String)
(assert (= var2465!1 (str.++ var2465 var1815)))
(assert true)
(define-const var3214 String (toString/-2075883882 var1820)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3648 Int (getLength-Arr-Int-2 var2536)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var3648 1)))) ; Negate: Cond: $i3 != 1  
(define-const var3067 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3067)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3067!1 String)
(assert (= var3067!1 ""))
(assert true)
(define-const var2648 String (append/672562846 var3067!1 var3214)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var3067!2 String)
(assert (= var3067!2 (str.++ var3067!1 var3214)))
(assert true)
(define-const var1727 String (append/672562846 var2648 "Was expecting:")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:") 
(declare-const var2648!1 String)
(assert (= var2648!1 (str.++ var2648 "Was expecting:")))
(assert true)
(define-const var3128 String (append/672562846 var1727 var1815)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1727!1 String)
(assert (= var1727!1 (str.++ var1727 var1815)))
(assert true)
(define-const var2230 String (append/672562846 var3128 "    ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3128!1 String)
(assert (= var3128!1 (str.++ var3128 "    ")))
(assert true)
(define-const var1675 String (toString/-2075883882 var2230)) ; Statement: r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r21 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2052 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2052)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2052!1 String)
(assert (= var2052!1 ""))
(assert true)
(define-const var2081 String (append/672562846 var2052!1 var1675)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2052!2 String)
(assert (= var2052!2 (str.++ var2052!1 var1675)))
(assert true)
(define-const var975 String (toString/-222306083 var389!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var3406 String (append/672562846 var2081 var975)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2081!1 String)
(assert (= var2081!1 (str.++ var2081 var975)))
(assert true)
(define-const var29 String (toString/-2075883882 var3406)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2903_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/-1103324373=([org.javacc.jjtree.Token], org.javacc.jjtree.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/-1103324373=([org.javacc.jjtree.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/-1103324373=([org.javacc.jjtree.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2148=org.javacc.jjtree.Token, var1737=r3, var2536=r2, var2002=r33, var2903=java.lang.System, var1815=r0, var389=$r1, var395=i11, var1146=i12, var3344=$i0, var363=r66, var3351=r67, var473=i15, var1633=$r4, var1075=$r5, var402=$r7, var3762=$r6, var2092=$i1, var1822=$r8, var135=$r10, var3424=$r9, var1731=$i2, var1240=$r11, var2267=$r52, var1320=$r12, var845=$r13, var2465=$r14, var1820=$r15, var3214=$r53, var3648=$i3, var3067=$r25, var2648=$r26, var1727=$r27, var3128=$r28, var2230=$r29, var1675=r71, var2052=$r21, var2081=$r23, var975=$r22, var3406=$r24, var29=$r30}
; {org.javacc.jjtree.Token=var2148, r3=var1737, r2=var2536, r33=var2002, java.lang.System=var2903, r0=var1815, $r1=var389, i11=var395, i12=var1146, $i0=var3344, r66=var363, r67=var3351, i15=var473, $r4=var1633, $r5=var1075, $r7=var402, $r6=var3762, $i1=var2092, $r8=var1822, $r10=var135, $r9=var3424, $i2=var1731, $r11=var1240, $r52=var2267, $r12=var1320, $r13=var845, $r14=var2465, $r15=var1820, $r53=var3214, $i3=var3648, $r25=var3067, $r26=var2648, $r27=var1727, $r28=var3128, $r29=var2230, r71=var1675, $r21=var2052, $r23=var2081, $r22=var975, $r24=var3406, $r30=var29}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.jjtree.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	$i1 = $r6.<org.javacc.jjtree.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	$i2 = $r9.<org.javacc.jjtree.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r21 = new java.lang.StringBuilder];	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7