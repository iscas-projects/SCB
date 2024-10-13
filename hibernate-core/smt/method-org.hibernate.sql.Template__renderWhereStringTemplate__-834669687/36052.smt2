(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var3743 0)
(declare-sort var1910 0)
(declare-sort var7 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun openQuote/1212220691 (var3743) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun closeQuote/952993073 (var3743) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var7-init () var7)
(declare-fun <init>/-1517764957 (var7 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var7) Bool)
(declare-const null-String String)
(declare-const null-var3743 var3743)
(declare-const null-var1910 var1910)
(declare-const var3081 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3081 null-String)))
(declare-const var3927 String) ; Statement: r18 := @parameter1: java.lang.String 
(assert (not (= var3927 null-String)))
(declare-const var397 var3743) ; Statement: r2 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var397 null-var3743)))
(declare-const var3515 var1910) ; Statement: r17 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry 
(assert (not (= var3515 null-var1910)))
(define-const var1771 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1771)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1771!1 String)
(assert (= var1771!1 ""))
(assert true)
(define-const var1216 String (append/672562846 var1771!1 "=><!+-*/()\u0027,|&`")) ; Statement: $r1 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=><!+-*/()\',|&`") 
(declare-const var1771!2 String)
(assert (= var1771!2 (str.++ var1771!1 "=><!+-*/()\u0027,|&`")))
(assert true)
(define-const var2555 String (append/672562846 var1216 " \n\r\f\t")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t") 
(declare-const var1216!1 String)
(assert (= var1216!1 (str.++ var1216 " \n\r\f\t")))
(assert true)
(define-const var3802 Int (openQuote/1212220691 var397)) ; Statement: $c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>() 
(assert true)
(define-const var1656 String (append/-1166366385 var2555 var3802)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2555!1 String)
(assert (str.prefixof var2555 var2555!1))
(assert true)
(define-const var1197 Int (closeQuote/952993073 var397)) ; Statement: $c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(assert true)
(define-const var1939 String (append/-1166366385 var1656 var1197)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1656!1 String)
(assert (str.prefixof var1656 var1656!1))
(assert true)
(define-const var965 String (toString/-2075883882 var1939)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3255 var7 var7-init) ; Statement: $r71 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var3255 var3081 var965 (ite (= 1 1) true false))) ; Statement: specialinvoke $r71.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r8, r6, 1) 

(declare-const var3255!1 var7)
(declare-const var3081!1 String)
(declare-const var965!1 String)
(declare-const var1517 Int)
(define-const var921 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var921)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var921!1 String)
(assert (= var921!1 ""))
(define-const var360 Bool (ite (= 1 0) true false)) ; Statement: z19 = 0 
(define-const var3252 Bool (ite (= 1 0) true false)) ; Statement: z20 = 0 
(define-const var1207 Bool (ite (= 1 0) true false)) ; Statement: z21 = 0 
(define-const var708 Bool (ite (= 1 0) true false)) ; Statement: z22 = 0 
(define-const var3590 Bool (ite (= 1 0) true false)) ; Statement: z44 = 0 
(define-const var1158 Bool (ite (= 1 0) true false)) ; Statement: z43 = 0 
(define-const var1258 Bool (ite (= 1 0) true false)) ; Statement: z23 = 0 
(assert true)
(define-const var86 Bool (hasMoreTokens/711654492 var3255!1)) ; Statement: z24 = virtualinvoke $r71.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if z24 == 0 goto $r53 = null 
(assert (= (ite var86 1 0) 0)) ; Cond: z24 == 0 
(define-const var1948 String null-String) ; Statement: $r53 = null 
(assert true) ; Non Conditional
(define-const var3608 String var1948) ; Statement: r54 = $r53 
(assert true) ; Non Conditional
 ; Statement: if z24 == 0 goto $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var86 1 0) 0)) ; Cond: z24 == 0 
(assert true)
(define-const var2083 String (toString/-2075883882 var921!1)) ; Statement: $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), openQuote/1212220691=([org.hibernate.dialect.Dialect], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var7-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean)}
; {var3081=r8, var150=null_type, var3927=r18, var3743=org.hibernate.dialect.Dialect, var397=r2, var1910=org.hibernate.dialect.function.SQLFunctionRegistry, var3515=r17, var1771=$r70, var1216=$r1, var2555=$r3, var3802=$c0, var1656=$r4, var1197=$c1, var1939=$r5, var965=r6, var7=java.util.StringTokenizer, var3255=$r71, var1517=1, var921=$r72, var360=z19, var3252=z20, var1207=z21, var708=z22, var3590=z44, var1158=z43, var1258=z23, var86=z24, var1948=$r53, var3608=r54, var2083=$r10}
; {r8=var3081, null_type=var150, r18=var3927, org.hibernate.dialect.Dialect=var3743, r2=var397, org.hibernate.dialect.function.SQLFunctionRegistry=var1910, r17=var3515, $r70=var1771, $r1=var1216, $r3=var2555, $c0=var3802, $r4=var1656, $c1=var1197, $r5=var1939, r6=var965, java.util.StringTokenizer=var7, $r71=var3255, 1=var1517, $r72=var921, z19=var360, z20=var3252, z21=var1207, z22=var708, z44=var3590, z43=var1158, z23=var1258, z24=var86, $r53=var1948, r54=var3608, $r10=var2083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @parameter0: java.lang.String;	r18 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.dialect.Dialect;	r17 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=><!+-*/()\',|&`");	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t");	$c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r71 = new java.util.StringTokenizer;	specialinvoke $r71.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r8, r6, 1);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	z19 = 0;	z20 = 0;	z21 = 0;	z22 = 0;	z44 = 0;	z43 = 0;	z23 = 0;	z24 = virtualinvoke $r71.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if z24 == 0 goto $r53 = null;	$r53 = null;	r54 = $r53;	if z24 == 0 goto $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 5