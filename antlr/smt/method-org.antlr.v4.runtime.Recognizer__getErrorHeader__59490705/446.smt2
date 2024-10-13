(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1716 0)
(declare-sort var2148 0)
(declare-sort var612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOffendingToken/-1021747607 (var2148) var612)
(declare-fun var612_getLine/-1887331676 (var612) Int)
(declare-fun var612_getCharPositionInLine/969483936 (var612) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1716 var1716)
(declare-const null-var2148 var2148)
(declare-const var3927 var1716) ; Statement: r9 := @this: org.antlr.v4.runtime.Recognizer 
(assert (not (= var3927 null-var1716)))
(declare-const var3482 var2148) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.RecognitionException 
(assert (not (= var3482 null-var2148)))
(assert true)
(define-const var742 var612 (getOffendingToken/-1021747607 var3482)) ; Statement: $r1 = virtualinvoke r0.<org.antlr.v4.runtime.RecognitionException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(define-const var1379 Int (var612_getLine/-1887331676 var742)) ; Statement: i0 = interfaceinvoke $r1.<org.antlr.v4.runtime.Token: int getLine()>() 
(assert true)
(define-const var2899 var612 (getOffendingToken/-1021747607 var3482)) ; Statement: $r2 = virtualinvoke r0.<org.antlr.v4.runtime.RecognitionException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(define-const var1075 Int (var612_getCharPositionInLine/969483936 var2899)) ; Statement: i1 = interfaceinvoke $r2.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>() 
(define-const var338 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var338)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var338!1 String)
(assert (= var338!1 ""))
(assert true)
(define-const var2203 String (append/672562846 var338!1 "line ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ") 
(declare-const var338!2 String)
(assert (= var338!2 (str.++ var338!1 "line ")))
(assert true)
(define-const var383 String (append/-1001720160 var2203 var1379)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2203!1 String)
(assert (str.prefixof var2203 var2203!1))
(assert true)
(define-const var3214 String (append/672562846 var383 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 ":")))
(assert true)
(define-const var2343 String (append/-1001720160 var3214 var1075)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3214!1 String)
(assert (str.prefixof var3214 var3214!1))
(assert true)
(define-const var2256 String (toString/-2075883882 var2343)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getOffendingToken/-1021747607=([org.antlr.v4.runtime.RecognitionException], org.antlr.v4.runtime.Token), var612_getLine/-1887331676=([org.antlr.v4.runtime.Token], int), var612_getCharPositionInLine/969483936=([org.antlr.v4.runtime.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1716=org.antlr.v4.runtime.Recognizer, var3927=r9, var2148=org.antlr.v4.runtime.RecognitionException, var3482=r0, var612=org.antlr.v4.runtime.Token, var742=$r1, var1379=i0, var2899=$r2, var1075=i1, var338=$r3, var2203=$r4, var383=$r5, var3214=$r6, var2343=$r7, var2256=$r8}
; {org.antlr.v4.runtime.Recognizer=var1716, r9=var3927, org.antlr.v4.runtime.RecognitionException=var2148, r0=var3482, org.antlr.v4.runtime.Token=var612, $r1=var742, i0=var1379, $r2=var2899, i1=var1075, $r3=var338, $r4=var2203, $r5=var383, $r6=var3214, $r7=var2343, $r8=var2256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.antlr.v4.runtime.Recognizer;	r0 := @parameter0: org.antlr.v4.runtime.RecognitionException;	$r1 = virtualinvoke r0.<org.antlr.v4.runtime.RecognitionException: org.antlr.v4.runtime.Token getOffendingToken()>();	i0 = interfaceinvoke $r1.<org.antlr.v4.runtime.Token: int getLine()>();	$r2 = virtualinvoke r0.<org.antlr.v4.runtime.RecognitionException: org.antlr.v4.runtime.Token getOffendingToken()>();	i1 = interfaceinvoke $r2.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1