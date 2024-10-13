(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3497 0)
(declare-sort var1646 0)
(declare-sort var25 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var25-init () var25)
(declare-fun <init>/-1517764957 (var25 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var25) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3497 var3497)
(declare-const null-String String)
(declare-const var3497-INITIAL_LINE String)
(declare-const var1299 var3497) ; Statement: r9 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl 
(assert (not (= var1299 null-var3497)))
(declare-const var2079 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2079 null-String)))
(define-const var3636 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3636 60)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(60) 

(declare-const var3636!1 String)
(declare-const var3413 Int)
(define-const var1008 String var3497-INITIAL_LINE) ; Statement: $r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE> 
(assert true)
(define-const var2291 String (append/672562846 var3636!1 var1008)) ; Statement: r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3636!2 String)
(assert (= var3636!2 (str.++ var3636!1 var1008)))
(define-const var1147 var25 var25-init) ; Statement: $r3 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var1147 var2079 " \u0027[]\u0022" (ite (= 1 1) true false))) ; Statement: specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, " \'[]\"", 1) 

(declare-const var1147!1 var25)
(declare-const var2079!1 String)
(declare-const var1611 String)
(declare-const var520 Int)
(define-const var2737 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2020 Bool (hasMoreTokens/711654492 var1147!1)) ; Statement: $z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2020 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3077 String (toString/-2075883882 var2291)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var25-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3497=org.hibernate.engine.jdbc.internal.DDLFormatterImpl, var1299=r9, var2079=r4, var1646=null_type, var3636=$r0, var3413=60, var1008=$r1, var2291=r2, var25=java.util.StringTokenizer, var1147=$r3, var1611=" \'[]\"", var520=1, var2737=z3, var2020=$z0, var3077=$r5}
; {org.hibernate.engine.jdbc.internal.DDLFormatterImpl=var3497, r9=var1299, r4=var2079, null_type=var1646, $r0=var3636, 60=var3413, $r1=var1008, r2=var2291, java.util.StringTokenizer=var25, $r3=var1147, " \'[]\""=var1611, 1=var520, z3=var2737, $z0=var2020, $r5=var3077}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.engine.jdbc.internal.DDLFormatterImpl;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(60);	$r1 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE>;	r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = new java.util.StringTokenizer;	specialinvoke $r3.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r4, " \'[]\"", 1);	z3 = 0;	$z0 = virtualinvoke $r3.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3