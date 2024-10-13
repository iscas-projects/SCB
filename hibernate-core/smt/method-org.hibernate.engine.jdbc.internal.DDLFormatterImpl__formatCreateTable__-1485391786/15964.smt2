(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
(declare-sort var730 0)
(declare-sort var2969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2969-init () var2969)
(declare-fun <init>/-1517764957 (var2969 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var2969) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var236 var236)
(declare-const null-String String)
(declare-const var236-INITIAL_LINE String)
(declare-const var2567 var236) ; Statement: r11 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl 
(assert (not (= var2567 null-var236)))
(declare-const var1047 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1047 null-String)))
(define-const var1516 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1516 60)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>(int)>(60) 

(declare-const var1516!1 String)
(declare-const var2028 Int)
(define-const var2569 String var236-INITIAL_LINE) ; Statement: $r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE> 
(assert true)
(define-const var3636 String (append/672562846 var1516!1 var2569)) ; Statement: r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1516!2 String)
(assert (= var1516!2 (str.++ var1516!1 var2569)))
(define-const var1195 var2969 var2969-init) ; Statement: $r15 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var1195 var1047 "(,)\u0027[]\u0022" (ite (= 1 1) true false))) ; Statement: specialinvoke $r15.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, "(,)\'[]\"", 1) 

(declare-const var1195!1 var2969)
(declare-const var1047!1 String)
(declare-const var3341 String)
(declare-const var1365 Int)
(define-const var2719 Int 0) ; Statement: i0 = 0 
(define-const var1463 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2742 Bool (hasMoreTokens/711654492 var1195!1)) ; Statement: $z0 = virtualinvoke $r15.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2742 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3712 String (toString/-2075883882 var3636)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2969-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var236=org.hibernate.engine.jdbc.internal.DDLFormatterImpl, var2567=r11, var1047=r4, var730=null_type, var1516=$r14, var2028=60, var2569=$r1, var3636=r2, var2969=java.util.StringTokenizer, var1195=$r15, var3341="(,)\'[]\"", var1365=1, var2719=i0, var1463=z3, var2742=$z0, var3712=$r5}
; {org.hibernate.engine.jdbc.internal.DDLFormatterImpl=var236, r11=var2567, r4=var1047, null_type=var730, $r14=var1516, 60=var2028, $r1=var2569, r2=var3636, java.util.StringTokenizer=var2969, $r15=var1195, "(,)\'[]\""=var3341, 1=var1365, i0=var2719, z3=var1463, $z0=var2742, $r5=var3712}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl;	r4 := @parameter0: java.lang.String;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>(int)>(60);	$r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE>;	r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r15 = new java.util.StringTokenizer;	specialinvoke $r15.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, "(,)\'[]\"", 1);	i0 = 0;	z3 = 0;	$z0 = virtualinvoke $r15.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3