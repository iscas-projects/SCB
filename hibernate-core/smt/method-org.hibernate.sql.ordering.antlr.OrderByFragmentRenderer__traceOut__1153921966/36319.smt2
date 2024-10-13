(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort var1582 0)
(declare-sort var2665 0)
(declare-sort var2860 0)
(declare-sort var3213 0)
(declare-sort var97 0)
(declare-sort var106 0)
(declare-sort var3032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputState/-774545314 (var3213) var2860)
(declare-fun cast-from-var2236-to-var3213 (var2236) var3213)
(declare-fun guessing/1132528042 (var2860) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun traceDepth/190266787 (var2236) Int)
(declare-fun var97_repeat/-97481534 (Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun trace/-660176171 (var106 var3032) void)
(declare-fun cast-from-String-to-var3032 (String) var3032)
(declare-const null-var2236 var2236)
(declare-const null-String String)
(declare-const null-var2665 var2665)
(declare-const var2236-LOG var106)
(declare-const var167 var2236) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer 
(assert (not (= var167 null-var2236)))
(declare-const var3552 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3552 null-String)))
(declare-const var2506 var2665) ; Statement: r14 := @parameter1: antlr.collections.AST 
(assert (not (= var2506 null-var2665)))
(define-const var1964 var2860 (inputState/-774545314 (cast-from-var2236-to-var3213 var167))) ; Statement: $r1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: antlr.TreeParserSharedInputState inputState> 
(define-const var1776 Int (guessing/1132528042 var1964)) ; Statement: $i0 = $r1.<antlr.TreeParserSharedInputState: int guessing> 
 ; Statement: if $i0 <= 0 goto $r2 = new java.lang.StringBuilder 
(assert (<= var1776 0)) ; Cond: $i0 <= 0 
(define-const var2141 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2141)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2141!1 String)
(assert (= var2141!1 ""))
(assert true)
(define-const var268 String (append/672562846 var2141!1 "<-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<-") 
(declare-const var2141!2 String)
(assert (= var2141!2 (str.++ var2141!1 "<-")))
(define-const var1891 Int (traceDepth/190266787 var167)) ; Statement: $i1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> 
(define-const var2614 Int (- var1891 1)) ; Statement: $i2 = $i1 - 1 
(declare-const var167!1 var2236)
(assert (not (= var167!1 null-var2236)))
(assert (= (traceDepth/190266787 var167!1) var2614)) ; Statement: r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> = $i2 
(define-const var100 Int (* var2614 2)) ; Statement: $i3 = $i2 * 2 
(define-const var274 String (var97_repeat/-97481534 45 var100)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(45, $i3) 
(assert true)
(define-const var2652 String (append/672562846 var268 var274)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var268!1 String)
(assert (= var268!1 (str.++ var268 var274)))
(assert true)
(define-const var3591 String (append/672562846 var2652 " ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2652!1 String)
(assert (= var2652!1 (str.++ var2652 " ")))
(assert true)
(define-const var717 String (toString/-2075883882 var3591)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var84 var106 var2236-LOG) ; Statement: $r9 = <org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: org.jboss.logging.Logger LOG> 
(define-const var2710 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2710)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2710!1 String)
(assert (= var2710!1 ""))
(assert true)
(define-const var515 String (append/672562846 var2710!1 var717)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2710!2 String)
(assert (= var2710!2 (str.++ var2710!1 var717)))
(assert true)
(define-const var1861 String (append/672562846 var515 var3552)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var515!1 String)
(assert (= var515!1 (str.++ var515 var3552)))
(assert true)
(define-const var983 String (toString/-2075883882 var1861)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var84 (cast-from-String-to-var3032 var983))) ; Statement: virtualinvoke $r9.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r13) 

(declare-const var84!1 var106)
(declare-const var983!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {inputState/-774545314=([antlr.TreeParser], antlr.TreeParserSharedInputState), cast-from-var2236-to-var3213=([org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer], antlr.TreeParser), guessing/1132528042=([antlr.TreeParserSharedInputState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), traceDepth/190266787=([org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer], int), var97_repeat/-97481534=([char, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var3032=([java.lang.String], java.lang.Object)}
; {var2236=org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer, var167=r0, var3552=r10, var1582=null_type, var2665=antlr.collections.AST, var2506=r14, var2860=antlr.TreeParserSharedInputState, var3213=antlr.TreeParser, var1964=$r1, var1776=$i0, var2141=$r2, var268=$r4, var1891=$i1, var2614=$i2, var100=$i3, var97=org.hibernate.internal.util.StringHelper, var274=$r3, var2652=$r5, var3591=$r6, var717=r7, var106=org.jboss.logging.Logger, var84=$r9, var2710=$r8, var515=$r11, var1861=$r12, var983=$r13, var3032=java.lang.Object}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer=var2236, r0=var167, r10=var3552, null_type=var1582, antlr.collections.AST=var2665, r14=var2506, antlr.TreeParserSharedInputState=var2860, antlr.TreeParser=var3213, $r1=var1964, $i0=var1776, $r2=var2141, $r4=var268, $i1=var1891, $i2=var2614, $i3=var100, org.hibernate.internal.util.StringHelper=var97, $r3=var274, $r5=var2652, $r6=var3591, r7=var717, org.jboss.logging.Logger=var106, $r9=var84, $r8=var2710, $r11=var515, $r12=var1861, $r13=var983, java.lang.Object=var3032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer;	r10 := @parameter0: java.lang.String;	r14 := @parameter1: antlr.collections.AST;	$r1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: antlr.TreeParserSharedInputState inputState>;	$i0 = $r1.<antlr.TreeParserSharedInputState: int guessing>;	if $i0 <= 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<-");	$i1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth>;	$i2 = $i1 - 1;	r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> = $i2;	$i3 = $i2 * 2;	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(45, $i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = <org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: org.jboss.logging.Logger LOG>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r9.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r13);	return
;block_num 2