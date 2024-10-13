(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2133 0)
(declare-sort var1961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1961-init () var1961)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-739797453 (var1961 String Int) void)
(declare-const null-var2133 var2133)
(declare-const null-Int Int)
(declare-const var1132 var2133) ; Statement: r6 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1132 null-var2133)))
(declare-const var3019 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3019 null-Int)))
 ; Statement: if i0 >= 8 goto $r0 = new freemarker.core.TokenMgrError 
(assert (not (>= var3019 8))) ; Negate: Cond: i0 >= 8  
 ; Statement: if i0 >= 0 goto r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0 
(assert (not (>= var3019 0))) ; Negate: Cond: i0 >= 0  
(define-const var1307 var1961 var1961-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var269 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var269)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var269!1 String)
(assert (= var269!1 ""))
(assert true)
(define-const var3348 String (append/672562846 var269!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var269!2 String)
(assert (= var269!2 (str.++ var269!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var1879 String (append/-1001720160 var3348 var3019)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3348!1 String)
(assert (str.prefixof var3348 var3348!1))
(assert true)
(define-const var2503 String (append/672562846 var1879 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var1879!1 String)
(assert (= var1879!1 (str.++ var1879 ". State unchanged.")))
(assert true)
(define-const var2681 String (toString/-2075883882 var2503)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-739797453 var1307 var2681 2)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var1307!1 var1961)
(declare-const var2681!1 String)
(declare-const var3015 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1961-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-739797453=([freemarker.core.TokenMgrError, java.lang.String, int], void)}
; {var2133=freemarker.core.FMParserTokenManager, var1132=r6, var3019=i0, var1961=freemarker.core.TokenMgrError, var1307=$r0, var269=$r1, var3348=$r2, var1879=$r3, var2503=$r4, var2681=$r5, var3015=2}
; {freemarker.core.FMParserTokenManager=var2133, r6=var1132, i0=var3019, freemarker.core.TokenMgrError=var1961, $r0=var1307, $r1=var269, $r2=var3348, $r3=var1879, $r4=var2503, $r5=var2681, 2=var3015}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.core.FMParserTokenManager;	i0 := @parameter0: int;	if i0 >= 8 goto $r0 = new freemarker.core.TokenMgrError;	if i0 >= 0 goto r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 3