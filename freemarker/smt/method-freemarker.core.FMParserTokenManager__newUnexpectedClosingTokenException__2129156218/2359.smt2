(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1714 0)
(declare-sort var343 0)
(declare-sort var116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var116-init () var116)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/-1758362606 (var343) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun beginLine/-1758362606 (var343) Int)
(declare-fun beginColumn/-1758362606 (var343) Int)
(declare-fun endLine/-1758362606 (var343) Int)
(declare-fun endColumn/-1758362606 (var343) Int)
(declare-fun <init>/1657950015 (var116 String Int Int Int Int Int) void)
(declare-const null-var1714 var1714)
(declare-const null-var343 var343)
(declare-const var2250 var1714) ; Statement: r8 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2250 null-var1714)))
(declare-const var2345 var343) ; Statement: r2 := @parameter0: freemarker.core.Token 
(assert (not (= var2345 null-var343)))
(define-const var2754 var116 var116-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var1368 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1368)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1368!1 String)
(assert (= var1368!1 ""))
(assert true)
(define-const var1359 String (append/672562846 var1368!1 "You can\u0027t have an \u0022")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You can\'t have an \"") 
(declare-const var1368!2 String)
(assert (= var1368!2 (str.++ var1368!1 "You can\u0027t have an \u0022")))
(define-const var3008 String (image/-1758362606 var2345)) ; Statement: $r3 = r2.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var3645 String (append/672562846 var1359 var3008)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1359!1 String)
(assert (= var1359!1 (str.++ var1359 var3008)))
(assert true)
(define-const var3561 String (append/672562846 var3645 "\u0022 here, as there\u0027s nothing open that it could close.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" here, as there\'s nothing open that it could close.") 
(declare-const var3645!1 String)
(assert (= var3645!1 (str.++ var3645 "\u0022 here, as there\u0027s nothing open that it could close.")))
(assert true)
(define-const var2451 String (toString/-2075883882 var3561)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var209 Int (beginLine/-1758362606 var2345)) ; Statement: $i3 = r2.<freemarker.core.Token: int beginLine> 
(define-const var532 Int (beginColumn/-1758362606 var2345)) ; Statement: $i2 = r2.<freemarker.core.Token: int beginColumn> 
(define-const var166 Int (endLine/-1758362606 var2345)) ; Statement: $i1 = r2.<freemarker.core.Token: int endLine> 
(define-const var3227 Int (endColumn/-1758362606 var2345)) ; Statement: $i0 = r2.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/1657950015 var2754 var2451 0 var209 var532 var166 var3227)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r7, 0, $i3, $i2, $i1, $i0) 

(declare-const var2754!1 var116)
(declare-const var2451!1 String)
(declare-const var2852 Int)
(declare-const var209!1 Int)
(declare-const var532!1 Int)
(declare-const var166!1 Int)
(declare-const var3227!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var116-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/-1758362606=([freemarker.core.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/1657950015=([freemarker.core.TokenMgrError, java.lang.String, int, int, int, int, int], void)}
; {var1714=freemarker.core.FMParserTokenManager, var2250=r8, var343=freemarker.core.Token, var2345=r2, var116=freemarker.core.TokenMgrError, var2754=$r0, var1368=$r1, var1359=$r4, var3008=$r3, var3645=$r5, var3561=$r6, var2451=$r7, var209=$i3, var532=$i2, var166=$i1, var3227=$i0, var2852=0}
; {freemarker.core.FMParserTokenManager=var1714, r8=var2250, freemarker.core.Token=var343, r2=var2345, freemarker.core.TokenMgrError=var116, $r0=var2754, $r1=var1368, $r4=var1359, $r3=var3008, $r5=var3645, $r6=var3561, $r7=var2451, $i3=var209, $i2=var532, $i1=var166, $i0=var3227, 0=var2852}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: freemarker.core.FMParserTokenManager;	r2 := @parameter0: freemarker.core.Token;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You can\'t have an \"");	$r3 = r2.<freemarker.core.Token: java.lang.String image>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" here, as there\'s nothing open that it could close.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = r2.<freemarker.core.Token: int beginLine>;	$i2 = r2.<freemarker.core.Token: int beginColumn>;	$i1 = r2.<freemarker.core.Token: int endLine>;	$i0 = r2.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r7, 0, $i3, $i2, $i1, $i0);	return $r0
;block_num 1