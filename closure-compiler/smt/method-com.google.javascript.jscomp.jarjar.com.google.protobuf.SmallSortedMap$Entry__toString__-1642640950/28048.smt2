(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort var3204 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1266201010 (var3853) var3204)
(declare-fun append/-1031950772 (String var2577) String)
(declare-fun cast-from-var3204-to-var2577 (var3204) var2577)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1266201010 (var3853) var2577)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3853 var3853)
(declare-const var2029 var3853) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry 
(assert (not (= var2029 null-var3853)))
(define-const var2601 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2601)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2601!1 String)
(assert (= var2601!1 ""))
(define-const var3215 var3204 (key/1266201010 var2029)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry: java.lang.Comparable key> 
(assert true)
(define-const var416 String (append/-1031950772 var2601!1 (cast-from-var3204-to-var2577 var3215))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2601!2 String)
(assert (str.prefixof var2601!1 var2601!2))
(assert true)
(define-const var573 String (append/672562846 var416 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var416!1 String)
(assert (= var416!1 (str.++ var416 "=")))
(define-const var156 var2577 (value/1266201010 var2029)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry: java.lang.Object value> 
(assert true)
(define-const var2626 String (append/-1031950772 var573 var156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var573!1 String)
(assert (str.prefixof var573 var573!1))
(assert true)
(define-const var3387 String (toString/-2075883882 var2626)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1266201010=([com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry], java.lang.Comparable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3204-to-var2577=([java.lang.Comparable], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1266201010=([com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3853=com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry, var2029=r1, var2601=$r0, var3204=java.lang.Comparable, var3215=$r2, var2577=java.lang.Object, var416=$r3, var573=$r5, var156=$r4, var2626=$r6, var3387=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry=var3853, r1=var2029, $r0=var2601, java.lang.Comparable=var3204, $r2=var3215, java.lang.Object=var2577, $r3=var416, $r5=var573, $r4=var156, $r6=var2626, $r7=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry: java.lang.Comparable key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SmallSortedMap$Entry: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1