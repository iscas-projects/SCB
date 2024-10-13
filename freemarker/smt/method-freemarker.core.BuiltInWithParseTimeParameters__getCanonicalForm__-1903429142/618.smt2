(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var2034 0)
(declare-sort var980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCanonicalForm/294688326 (var2034) String)
(declare-fun cast-from-var3561-to-var2034 (var3561) var2034)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getArgumentsAsList/46759573 (var3561) var980)
(declare-fun var980_size/-959786421 (var980) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3561 var3561)
(declare-const var3676 var3561) ; Statement: r1 := @this: freemarker.core.BuiltInWithParseTimeParameters 
(assert (not (= var3676 null-var3561)))
(define-const var2619 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2619)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2619!1 String)
(assert (= var2619!1 ""))
(assert true)
(define-const var237 String (getCanonicalForm/294688326 (cast-from-var3561-to-var2034 var3676))) ; Statement: $r2 = specialinvoke r1.<freemarker.core.SpecialBuiltIn: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2619!1 var237)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2619!2 String)
(assert (= var2619!2 (str.++ var2619!1 var237)))
(assert true)
;(assert (append/672562846 var2619!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2619!3 String)
(assert (= var2619!3 (str.++ var2619!2 "(")))
(assert true)
(define-const var3394 var980 (getArgumentsAsList/46759573 var3676)) ; Statement: r3 = virtualinvoke r1.<freemarker.core.BuiltInWithParseTimeParameters: java.util.List getArgumentsAsList()>() 
(define-const var1815 Int (var980_size/-959786421 var3394)) ; Statement: i0 = interfaceinvoke r3.<java.util.List: int size()>() 
(define-const var2994 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (>= var2994 var1815)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/672562846 var2619!3 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2619!4 String)
(assert (= var2619!4 (str.++ var2619!3 ")")))
(assert true)
(define-const var96 String (toString/-2075883882 var2619!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCanonicalForm/294688326=([freemarker.core.BuiltIn], java.lang.String), cast-from-var3561-to-var2034=([freemarker.core.BuiltInWithParseTimeParameters], freemarker.core.BuiltIn), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getArgumentsAsList/46759573=([freemarker.core.BuiltInWithParseTimeParameters], java.util.List), var980_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3561=freemarker.core.BuiltInWithParseTimeParameters, var3676=r1, var2619=$r0, var2034=freemarker.core.BuiltIn, var237=$r2, var980=java.util.List, var3394=r3, var1815=i0, var2994=i1, var96=$r4}
; {freemarker.core.BuiltInWithParseTimeParameters=var3561, r1=var3676, $r0=var2619, freemarker.core.BuiltIn=var2034, $r2=var237, java.util.List=var980, r3=var3394, i0=var1815, i1=var2994, $r4=var96}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInWithParseTimeParameters;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<freemarker.core.SpecialBuiltIn: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r3 = virtualinvoke r1.<freemarker.core.BuiltInWithParseTimeParameters: java.util.List getArgumentsAsList()>();	i0 = interfaceinvoke r3.<java.util.List: int size()>();	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3