(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2704 0)
(declare-sort var3605 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3068-init () var3068)
(declare-fun <init>/-1517764957 (var3068 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var3068) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2704 var2704)
(declare-const null-String String)
(declare-const var2704-INITIAL_LINE String)
(declare-const var2787 var2704) ; Statement: r8 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl 
(assert (not (= var2787 null-var2704)))
(declare-const var488 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var488 null-String)))
(define-const var1928 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1928 60)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(60) 

(declare-const var1928!1 String)
(declare-const var386 Int)
(define-const var3358 String var2704-INITIAL_LINE) ; Statement: $r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE> 
(assert true)
(define-const var3160 String (append/672562846 var1928!1 var3358)) ; Statement: r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1928!2 String)
(assert (= var1928!2 (str.++ var1928!1 var3358)))
(define-const var34 var3068 var3068-init) ; Statement: $r3 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var34 var488 " (,)\u0027[]\u0022" (ite (= 1 1) true false))) ; Statement: specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, " (,)\'[]\"", 1) 

(declare-const var34!1 var3068)
(declare-const var488!1 String)
(declare-const var177 String)
(declare-const var2891 Int)
(define-const var2821 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1187 Bool (hasMoreTokens/711654492 var34!1)) ; Statement: $z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1187 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var58 String (toString/-2075883882 var3160)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3068-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2704=org.hibernate.engine.jdbc.internal.DDLFormatterImpl, var2787=r8, var488=r4, var3605=null_type, var1928=$r0, var386=60, var3358=$r1, var3160=r2, var3068=java.util.StringTokenizer, var34=$r3, var177=" (,)\'[]\"", var2891=1, var2821=z3, var1187=$z0, var58=$r5}
; {org.hibernate.engine.jdbc.internal.DDLFormatterImpl=var2704, r8=var2787, r4=var488, null_type=var3605, $r0=var1928, 60=var386, $r1=var3358, r2=var3160, java.util.StringTokenizer=var3068, $r3=var34, " (,)\'[]\""=var177, 1=var2891, z3=var2821, $z0=var1187, $r5=var58}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(60);	$r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE>;	r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = new java.util.StringTokenizer;	specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, " (,)\'[]\"", 1);	z3 = 0;	$z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3