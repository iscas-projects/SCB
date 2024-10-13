(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2639 0)
(declare-sort var214 0)
(declare-sort var1219 0)
(declare-sort var325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun openQuote/1212220691 (var214) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun closeQuote/952993073 (var214) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var325-init () var325)
(declare-fun <init>/-1517764957 (var325 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var325) Bool)
(declare-fun nextToken/-418815358 (var325) String)
(declare-const null-String String)
(declare-const null-var214 var214)
(declare-const null-var1219 var1219)
(declare-const var548 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var548 null-String)))
(declare-const var1529 String) ; Statement: r18 := @parameter1: java.lang.String 
(assert (not (= var1529 null-String)))
(declare-const var2204 var214) ; Statement: r2 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var2204 null-var214)))
(declare-const var3662 var1219) ; Statement: r17 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry 
(assert (not (= var3662 null-var1219)))
(define-const var3913 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3913)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3913!1 String)
(assert (= var3913!1 ""))
(assert true)
(define-const var3100 String (append/672562846 var3913!1 "=><!+-*/()\u0027,|&`")) ; Statement: $r1 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=><!+-*/()\',|&`") 
(declare-const var3913!2 String)
(assert (= var3913!2 (str.++ var3913!1 "=><!+-*/()\u0027,|&`")))
(assert true)
(define-const var155 String (append/672562846 var3100 " \n\r\f\t")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t") 
(declare-const var3100!1 String)
(assert (= var3100!1 (str.++ var3100 " \n\r\f\t")))
(assert true)
(define-const var2912 Int (openQuote/1212220691 var2204)) ; Statement: $c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>() 
(assert true)
(define-const var1850 String (append/-1166366385 var155 var2912)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var155!1 String)
(assert (str.prefixof var155 var155!1))
(assert true)
(define-const var3772 Int (closeQuote/952993073 var2204)) ; Statement: $c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(assert true)
(define-const var74 String (append/-1166366385 var1850 var3772)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1850!1 String)
(assert (str.prefixof var1850 var1850!1))
(assert true)
(define-const var1295 String (toString/-2075883882 var74)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var431 var325 var325-init) ; Statement: $r71 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var431 var548 var1295 (ite (= 1 1) true false))) ; Statement: specialinvoke $r71.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r8, r6, 1) 

(declare-const var431!1 var325)
(declare-const var548!1 String)
(declare-const var1295!1 String)
(declare-const var3003 Int)
(define-const var2084 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2084)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2084!1 String)
(assert (= var2084!1 ""))
(define-const var2764 Bool (ite (= 1 0) true false)) ; Statement: z19 = 0 
(define-const var3591 Bool (ite (= 1 0) true false)) ; Statement: z20 = 0 
(define-const var3080 Bool (ite (= 1 0) true false)) ; Statement: z21 = 0 
(define-const var585 Bool (ite (= 1 0) true false)) ; Statement: z22 = 0 
(define-const var254 Bool (ite (= 1 0) true false)) ; Statement: z44 = 0 
(define-const var2687 Bool (ite (= 1 0) true false)) ; Statement: z43 = 0 
(define-const var3773 Bool (ite (= 1 0) true false)) ; Statement: z23 = 0 
(assert true)
(define-const var466 Bool (hasMoreTokens/711654492 var431!1)) ; Statement: z24 = virtualinvoke $r71.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if z24 == 0 goto $r53 = null 
(assert (not (= (ite var466 1 0) 0))) ; Negate: Cond: z24 == 0  
(assert true)
(define-const var2382 String (nextToken/-418815358 var431!1)) ; Statement: $r53 = virtualinvoke $r71.<java.util.StringTokenizer: java.lang.String nextToken()>() 
 ; Statement: goto [?= r54 = $r53] 
(assert true) ; Non Conditional
(define-const var1570 String var2382) ; Statement: r54 = $r53 
(assert true) ; Non Conditional
 ; Statement: if z24 == 0 goto $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var466 1 0) 0)) ; Cond: z24 == 0 
(assert true)
(define-const var1154 String (toString/-2075883882 var2084!1)) ; Statement: $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), openQuote/1212220691=([org.hibernate.dialect.Dialect], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var325-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String)}
; {var548=r8, var2639=null_type, var1529=r18, var214=org.hibernate.dialect.Dialect, var2204=r2, var1219=org.hibernate.dialect.function.SQLFunctionRegistry, var3662=r17, var3913=$r70, var3100=$r1, var155=$r3, var2912=$c0, var1850=$r4, var3772=$c1, var74=$r5, var1295=r6, var325=java.util.StringTokenizer, var431=$r71, var3003=1, var2084=$r72, var2764=z19, var3591=z20, var3080=z21, var585=z22, var254=z44, var2687=z43, var3773=z23, var466=z24, var2382=$r53, var1570=r54, var1154=$r10}
; {r8=var548, null_type=var2639, r18=var1529, org.hibernate.dialect.Dialect=var214, r2=var2204, org.hibernate.dialect.function.SQLFunctionRegistry=var1219, r17=var3662, $r70=var3913, $r1=var3100, $r3=var155, $c0=var2912, $r4=var1850, $c1=var3772, $r5=var74, r6=var1295, java.util.StringTokenizer=var325, $r71=var431, 1=var3003, $r72=var2084, z19=var2764, z20=var3591, z21=var3080, z22=var585, z44=var254, z43=var2687, z23=var3773, z24=var466, $r53=var2382, r54=var1570, $r10=var1154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @parameter0: java.lang.String;	r18 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.dialect.Dialect;	r17 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=><!+-*/()\',|&`");	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \n\r\f\t");	$c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r71 = new java.util.StringTokenizer;	specialinvoke $r71.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r8, r6, 1);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	z19 = 0;	z20 = 0;	z21 = 0;	z22 = 0;	z44 = 0;	z43 = 0;	z23 = 0;	z24 = virtualinvoke $r71.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if z24 == 0 goto $r53 = null;	$r53 = virtualinvoke $r71.<java.util.StringTokenizer: java.lang.String nextToken()>();	goto [?= r54 = $r53];	r54 = $r53;	if z24 == 0 goto $r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 5