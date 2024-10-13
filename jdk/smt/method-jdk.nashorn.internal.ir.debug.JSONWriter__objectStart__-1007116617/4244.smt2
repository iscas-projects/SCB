(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2958 0)
(declare-sort var414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var2958) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2958 var2958)
(declare-const null-String String)
(declare-const var1104 var2958) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var1104 null-var2958)))
(declare-const var2075 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2075 null-String)))
(define-const var2389 String (buf/-2106681294 var1104)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var2389 34)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2389!1 String)
(assert (str.prefixof var2389 var2389!1))
(define-const var1589 String (buf/-2106681294 var1104)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1589 var2075)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1589!1 String)
(assert (= var1589!1 (str.++ var1589 var2075)))
(define-const var539 String (buf/-2106681294 var1104)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var539 "\u0022:{")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\":{") 
(declare-const var539!1 String)
(assert (= var539!1 (str.++ var539 "\u0022:{")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2958=jdk.nashorn.internal.ir.debug.JSONWriter, var1104=r0, var2075=r2, var414=null_type, var2389=$r1, var1589=$r3, var539=$r4}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var2958, r0=var1104, r2=var2075, null_type=var414, $r1=var2389, $r3=var1589, $r4=var539}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\":{");	return
;block_num 1