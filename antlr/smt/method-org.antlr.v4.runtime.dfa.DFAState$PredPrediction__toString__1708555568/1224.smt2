(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1530 0)
(declare-sort var977 0)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pred/1257195928 (var1530) var977)
(declare-fun append/-1031950772 (String var44) String)
(declare-fun cast-from-var977-to-var44 (var977) var44)
(declare-fun alt/1257195928 (var1530) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1530 var1530)
(declare-const var1022 var1530) ; Statement: r1 := @this: org.antlr.v4.runtime.dfa.DFAState$PredPrediction 
(assert (not (= var1022 null-var1530)))
(define-const var3501 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3501)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3501!1 String)
(assert (= var3501!1 ""))
(assert true)
(define-const var2008 String (append/672562846 var3501!1 "(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3501!2 String)
(assert (= var3501!2 (str.++ var3501!1 "(")))
(define-const var1335 var977 (pred/1257195928 var1022)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.dfa.DFAState$PredPrediction: org.antlr.v4.runtime.atn.SemanticContext pred> 
(assert true)
(define-const var1231 String (append/-1031950772 var2008 (cast-from-var977-to-var44 var1335))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2008!1 String)
(assert (str.prefixof var2008 var2008!1))
(assert true)
(define-const var819 String (append/672562846 var1231 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1231!1 String)
(assert (= var1231!1 (str.++ var1231 ", ")))
(define-const var3875 Int (alt/1257195928 var1022)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.dfa.DFAState$PredPrediction: int alt> 
(assert true)
(define-const var3904 String (append/-1001720160 var819 var3875)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var819!1 String)
(assert (str.prefixof var819 var819!1))
(assert true)
(define-const var2989 String (append/672562846 var3904 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3904!1 String)
(assert (= var3904!1 (str.++ var3904 ")")))
(assert true)
(define-const var3245 String (toString/-2075883882 var2989)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pred/1257195928=([org.antlr.v4.runtime.dfa.DFAState$PredPrediction], org.antlr.v4.runtime.atn.SemanticContext), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var977-to-var44=([org.antlr.v4.runtime.atn.SemanticContext], java.lang.Object), alt/1257195928=([org.antlr.v4.runtime.dfa.DFAState$PredPrediction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1530=org.antlr.v4.runtime.dfa.DFAState$PredPrediction, var1022=r1, var3501=$r0, var2008=$r3, var977=org.antlr.v4.runtime.atn.SemanticContext, var1335=$r2, var44=java.lang.Object, var1231=$r4, var819=$r5, var3875=$i0, var3904=$r6, var2989=$r7, var3245=$r8}
; {org.antlr.v4.runtime.dfa.DFAState$PredPrediction=var1530, r1=var1022, $r0=var3501, $r3=var2008, org.antlr.v4.runtime.atn.SemanticContext=var977, $r2=var1335, java.lang.Object=var44, $r4=var1231, $r5=var819, $i0=var3875, $r6=var3904, $r7=var2989, $r8=var3245}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.dfa.DFAState$PredPrediction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<org.antlr.v4.runtime.dfa.DFAState$PredPrediction: org.antlr.v4.runtime.atn.SemanticContext pred>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r1.<org.antlr.v4.runtime.dfa.DFAState$PredPrediction: int alt>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1