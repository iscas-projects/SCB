(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3537 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3823-init () var3823)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2103077939 (var3823 String Int) void)
(declare-const null-var3537 var3537)
(declare-const null-Int Int)
(declare-const var3569 var3537) ; Statement: r6 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var3569 null-var3537)))
(declare-const var1485 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1485 null-Int)))
 ; Statement: if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError 
(assert (>= var1485 5)) ; Cond: i0 >= 5 
(define-const var3252 var3823 var3823-init) ; Statement: $r0 = new org.javacc.parser.TokenMgrError 
(define-const var341 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var341)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var341!1 String)
(assert (= var341!1 ""))
(assert true)
(define-const var2571 String (append/672562846 var341!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var341!2 String)
(assert (= var341!2 (str.++ var341!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var1327 String (append/-1001720160 var2571 var1485)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2571!1 String)
(assert (str.prefixof var2571 var2571!1))
(assert true)
(define-const var637 String (append/672562846 var1327 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var1327!1 String)
(assert (= var1327!1 (str.++ var1327 ". State unchanged.")))
(assert true)
(define-const var3314 String (toString/-2075883882 var637)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2103077939 var3252 var3314 2)) ; Statement: specialinvoke $r0.<org.javacc.parser.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var3252!1 var3823)
(declare-const var3314!1 String)
(declare-const var3245 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3823-init=([], org.javacc.parser.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2103077939=([org.javacc.parser.TokenMgrError, java.lang.String, int], void)}
; {var3537=org.javacc.parser.JavaCCParserTokenManager, var3569=r6, var1485=i0, var3823=org.javacc.parser.TokenMgrError, var3252=$r0, var341=$r1, var2571=$r2, var1327=$r3, var637=$r4, var3314=$r5, var3245=2}
; {org.javacc.parser.JavaCCParserTokenManager=var3537, r6=var3569, i0=var1485, org.javacc.parser.TokenMgrError=var3823, $r0=var3252, $r1=var341, $r2=var2571, $r3=var1327, $r4=var637, $r5=var3314, 2=var3245}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.parser.JavaCCParserTokenManager;	i0 := @parameter0: int;	if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError;	$r0 = new org.javacc.parser.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.javacc.parser.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 2