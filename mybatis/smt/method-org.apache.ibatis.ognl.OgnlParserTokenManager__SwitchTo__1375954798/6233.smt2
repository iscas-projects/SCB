(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2599 0)
(declare-sort var3413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3413-init () var3413)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-284144644 (var3413 String Int) void)
(declare-const null-var2599 var2599)
(declare-const null-Int Int)
(declare-const var323 var2599) ; Statement: r6 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var323 null-var2599)))
(declare-const var1013 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1013 null-Int)))
 ; Statement: if i0 >= 4 goto $r0 = new org.apache.ibatis.ognl.TokenMgrError 
(assert (>= var1013 4)) ; Cond: i0 >= 4 
(define-const var3090 var3413 var3413-init) ; Statement: $r0 = new org.apache.ibatis.ognl.TokenMgrError 
(define-const var952 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var952)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var952!1 String)
(assert (= var952!1 ""))
(assert true)
(define-const var3805 String (append/672562846 var952!1 "Error: Ignoring invalid lexical state : ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ") 
(declare-const var952!2 String)
(assert (= var952!2 (str.++ var952!1 "Error: Ignoring invalid lexical state : ")))
(assert true)
(define-const var2358 String (append/-1001720160 var3805 var1013)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3805!1 String)
(assert (str.prefixof var3805 var3805!1))
(assert true)
(define-const var3292 String (append/672562846 var2358 ". State unchanged.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.") 
(declare-const var2358!1 String)
(assert (= var2358!1 (str.++ var2358 ". State unchanged.")))
(assert true)
(define-const var3211 String (toString/-2075883882 var3292)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-284144644 var3090 var3211 2)) ; Statement: specialinvoke $r0.<org.apache.ibatis.ognl.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2) 

(declare-const var3090!1 var3413)
(declare-const var3211!1 String)
(declare-const var1043 Int)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3413-init=([], org.apache.ibatis.ognl.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-284144644=([org.apache.ibatis.ognl.TokenMgrError, java.lang.String, int], void)}
; {var2599=org.apache.ibatis.ognl.OgnlParserTokenManager, var323=r6, var1013=i0, var3413=org.apache.ibatis.ognl.TokenMgrError, var3090=$r0, var952=$r1, var3805=$r2, var2358=$r3, var3292=$r4, var3211=$r5, var1043=2}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var2599, r6=var323, i0=var1013, org.apache.ibatis.ognl.TokenMgrError=var3413, $r0=var3090, $r1=var952, $r2=var3805, $r3=var2358, $r4=var3292, $r5=var3211, 2=var1043}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	i0 := @parameter0: int;	if i0 >= 4 goto $r0 = new org.apache.ibatis.ognl.TokenMgrError;	$r0 = new org.apache.ibatis.ognl.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: Ignoring invalid lexical state : ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". State unchanged.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.ognl.TokenMgrError: void <init>(java.lang.String,int)>($r5, 2);	throw $r0
;block_num 2