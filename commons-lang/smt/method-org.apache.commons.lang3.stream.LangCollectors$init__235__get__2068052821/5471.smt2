(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var2883 var2883)
(declare-const var2028 var2883) ; Statement: $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$init__235 
(assert (not (= var2028 null-var2883)))
(define-const var3020 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3020)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3020!1 String)
(assert (= var3020!1 ""))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var2883=org.apache.commons.lang3.stream.LangCollectors$init__235, var2028=$r0, var3020=$r1}
; {org.apache.commons.lang3.stream.LangCollectors$init__235=var2883, $r0=var2028, $r1=var3020}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.stream.LangCollectors$init__235;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	return $r1
;block_num 1