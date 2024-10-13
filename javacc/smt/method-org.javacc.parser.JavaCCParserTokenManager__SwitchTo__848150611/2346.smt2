(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1877 0)
(declare-sort var3360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3360-init () var3360)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2103077939 (var3360 String Int) void)
(declare-const null-var1877 var1877)
(declare-const null-Int Int)
(declare-const var1504 var1877) ; Statement: r6 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var1504 null-var1877)))
(declare-const var1015 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1015 null-Int)))
 ; Statement: if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError 
(assert (not (>= var1015 5))) ; Negate: Cond: i0 >= 5  
 ; Statement: if i0 >= 0 goto r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0 
(assert (not (>= var1015 0))) ; Negate: Cond: i0 >= 0  
(define-const var371 var3360 var3360-init) ; Statement: $r0 = new org.javacc.parser.TokenMgrError 
(define-const var1978 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1978)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1978!1 String)
(assert (= var1978!1 ""))
(assert true)
(define-const var1243 String (append/672562846 var1978!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var1978!2 String)
(assert (= var1978!2 (str.++ var1978!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var1131 String (append/-1001720160 var1243 var1015)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1243!1 String)
(assert (str.prefixof var1243 var1243!1))
(assert true)
(define-const var1546 String (append/672562846 var1131 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 ". State unchanged.")))
(assert true)
(define-const var2602 String (toString/-2075883882 var1546)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2103077939 var371 var2602 2)) ; Statement: specialinvoke $r0.<org.javacc.parser.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var371!1 var3360)
(declare-const var2602!1 String)
(declare-const var3071 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3360-init=([], org.javacc.parser.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2103077939=([org.javacc.parser.TokenMgrError, java.lang.String, int], void)}
; {var1877=org.javacc.parser.JavaCCParserTokenManager, var1504=r6, var1015=i0, var3360=org.javacc.parser.TokenMgrError, var371=$r0, var1978=$r1, var1243=$r2, var1131=$r3, var1546=$r4, var2602=$r5, var3071=2}
; {org.javacc.parser.JavaCCParserTokenManager=var1877, r6=var1504, i0=var1015, org.javacc.parser.TokenMgrError=var3360, $r0=var371, $r1=var1978, $r2=var1243, $r3=var1131, $r4=var1546, $r5=var2602, 2=var3071}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.parser.JavaCCParserTokenManager;	i0 := @parameter0: int;	if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError;	if i0 >= 0 goto r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0;	$r0 = new org.javacc.parser.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.javacc.parser.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 3