(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3267-to-String (var3267) String)
(declare-fun cap0/391084656 (var3811) String)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-var3811 var3811)
(declare-const null-var3267 var3267)
(declare-const var797 var3811) ; Statement: $r0 := @this: org.apache.lucene.util.JavaLoggingInfoStream$concat__432 
(assert (not (= var797 null-var3811)))
(declare-const var2721 var3267) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2721 null-var3267)))
(define-const var1911 String (cast-from-var3267-to-String var2721)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var2062 String (cap0/391084656 var797)) ; Statement: $r3 = $r0.<org.apache.lucene.util.JavaLoggingInfoStream$concat__432: java.lang.String cap0> 
(assert true)
(define-const var3514 String (concat/1917019066 var2062 var1911)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String concat(java.lang.String)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3267-to-String=([java.lang.Object], java.lang.String), cap0/391084656=([org.apache.lucene.util.JavaLoggingInfoStream$concat__432], java.lang.String), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var3811=org.apache.lucene.util.JavaLoggingInfoStream$concat__432, var797=$r0, var3267=java.lang.Object, var2721=$r1, var1911=$r2, var2062=$r3, var3514=$r4}
; {org.apache.lucene.util.JavaLoggingInfoStream$concat__432=var3811, $r0=var797, java.lang.Object=var3267, $r1=var2721, $r2=var1911, $r3=var2062, $r4=var3514}
;seq <java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 1}
;stmts $r0 := @this: org.apache.lucene.util.JavaLoggingInfoStream$concat__432;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<org.apache.lucene.util.JavaLoggingInfoStream$concat__432: java.lang.String cap0>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String concat(java.lang.String)>($r2);	return $r4
;block_num 1