(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1001561857 (var3362) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3362 var3362)
(declare-const var3666 var3362) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment 
(assert (not (= var3666 null-var3362)))
(define-const var2940 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2940)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2940!1 String)
(assert (= var2940!1 ""))
(assert true)
(define-const var2459 String (append/672562846 var2940!1 "..")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var2940!2 String)
(assert (= var2940!2 (str.++ var2940!1 "..")))
(define-const var8 String (name/-1001561857 var3666)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment: java.lang.String name> 
(assert true)
(define-const var2644 String (append/672562846 var2459 var8)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2459!1 String)
(assert (= var2459!1 (str.++ var2459 var8)))
(assert true)
(define-const var877 String (toString/-2075883882 var2644)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1001561857=([com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3362=com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment, var3666=r1, var2940=$r0, var2459=$r3, var8=$r2, var2644=$r4, var877=$r5}
; {com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment=var3362, r1=var3666, $r0=var2940, $r3=var2459, $r2=var8, $r4=var2644, $r5=var877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$r2 = r1.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1