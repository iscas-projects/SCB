(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2398 0)
(declare-sort var3861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var2398) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2398 var2398)
(declare-const null-String String)
(declare-const var382 var2398) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var382 null-var2398)))
(declare-const var191 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var191 null-String)))
(define-const var797 String (buf/-2106681294 var382)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var797 34)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var797!1 String)
(assert (str.prefixof var797 var797!1))
(define-const var3928 String (buf/-2106681294 var382)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var3928 var191)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3928!1 String)
(assert (= var3928!1 (str.++ var3928 var191)))
(define-const var3126 String (buf/-2106681294 var382)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var3126 34)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3126!1 String)
(assert (str.prefixof var3126 var3126!1))
(define-const var2743 String (buf/-2106681294 var382)) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var2743 58)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2743!1 String)
(assert (str.prefixof var2743 var2743!1))
(define-const var3301 String (buf/-2106681294 var382)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var3301 91)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3301!1 String)
(assert (str.prefixof var3301 var3301!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2398=jdk.nashorn.internal.ir.debug.JSONWriter, var382=r0, var191=r2, var3861=null_type, var797=$r1, var3928=$r3, var3126=$r4, var2743=$r5, var3301=$r6}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var2398, r0=var382, r2=var191, null_type=var3861, $r1=var797, $r3=var3928, $r4=var3126, $r5=var2743, $r6=var3301}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r5 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	return
;block_num 1