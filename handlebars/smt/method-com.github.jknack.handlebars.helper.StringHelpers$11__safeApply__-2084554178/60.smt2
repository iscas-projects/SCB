(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2756 0)
(declare-sort var1647 0)
(declare-sort var1572 0)
(declare-sort var930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var1647) String)
(declare-fun var930_strip/1628310920 (String) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2756 var2756)
(declare-const null-var1647 var1647)
(declare-const null-var1572 var1572)
(declare-const var3540 var2756) ; Statement: r5 := @this: com.github.jknack.handlebars.helper.StringHelpers$11 
(assert (not (= var3540 null-var2756)))
(declare-const var3262 var1647) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3262 null-var1647)))
(declare-const var1784 var1572) ; Statement: r6 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var1784 null-var1572)))
(assert true)
(define-const var822 String (toString/-522406933 var3262)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var684 String (var930_strip/1628310920 var822)) ; Statement: r2 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String)>($r1) 
(define-const var3352 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var62 Int (length/-134980193 var684)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var3352 var62)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3352!1 String)
(declare-const var62!1 Int)
(define-const var3647 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2301 Int (length/-134980193 var684)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3647 var2301)) ; Cond: i4 >= $i1 
(assert true)
(define-const var429 String (toString/-2075883882 var3352!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), var930_strip/1628310920=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2756=com.github.jknack.handlebars.helper.StringHelpers$11, var3540=r5, var1647=java.lang.Object, var3262=r0, var1572=com.github.jknack.handlebars.Options, var1784=r6, var822=$r1, var930=org.apache.commons.lang3.StringUtils, var684=r2, var3352=$r3, var62=$i0, var3647=i4, var2301=$i1, var429=$r4}
; {com.github.jknack.handlebars.helper.StringHelpers$11=var2756, r5=var3540, java.lang.Object=var1647, r0=var3262, com.github.jknack.handlebars.Options=var1572, r6=var1784, $r1=var822, org.apache.commons.lang3.StringUtils=var930, r2=var684, $r3=var3352, $i0=var62, i4=var3647, $i1=var2301, $r4=var429}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.github.jknack.handlebars.helper.StringHelpers$11;	r0 := @parameter0: java.lang.Object;	r6 := @parameter1: com.github.jknack.handlebars.Options;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	r2 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String)>($r1);	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i0);	i4 = 0;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if i4 >= $i1 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3