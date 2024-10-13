(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun index/2127357054 (var3361) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun character/2127357054 (var3361) Int)
(declare-fun line/2127357054 (var3361) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3361 var3361)
(declare-const var1094 var3361) ; Statement: r1 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var1094 null-var3361)))
(define-const var2674 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2674)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2674!1 String)
(assert (= var2674!1 ""))
(assert true)
(define-const var2342 String (append/672562846 var2674!1 " at ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at ") 
(declare-const var2674!2 String)
(assert (= var2674!2 (str.++ var2674!1 " at ")))
(define-const var1076 Int (index/2127357054 var1094)) ; Statement: $l0 = r1.<cn.hutool.json.JSONTokener: long index> 
(assert true)
(define-const var1459 String (append/-901862667 var2342 var1076)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2342!1 String)
(assert (str.prefixof var2342 var2342!1))
(assert true)
(define-const var1367 String (append/672562846 var1459 " [character ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [character ") 
(declare-const var1459!1 String)
(assert (= var1459!1 (str.++ var1459 " [character ")))
(define-const var2588 Int (character/2127357054 var1094)) ; Statement: $l1 = r1.<cn.hutool.json.JSONTokener: long character> 
(assert true)
(define-const var1937 String (append/-901862667 var1367 var2588)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1367!1 String)
(assert (str.prefixof var1367 var1367!1))
(assert true)
(define-const var1779 String (append/672562846 var1937 " line ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var1937!1 String)
(assert (= var1937!1 (str.++ var1937 " line ")))
(define-const var109 Int (line/2127357054 var1094)) ; Statement: $l2 = r1.<cn.hutool.json.JSONTokener: long line> 
(assert true)
(define-const var3939 String (append/-901862667 var1779 var109)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1779!1 String)
(assert (str.prefixof var1779 var1779!1))
(assert true)
(define-const var334 String (append/672562846 var3939 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3939!1 String)
(assert (= var3939!1 (str.++ var3939 "]")))
(assert true)
(define-const var3614 String (toString/-2075883882 var334)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), index/2127357054=([cn.hutool.json.JSONTokener], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), character/2127357054=([cn.hutool.json.JSONTokener], long), line/2127357054=([cn.hutool.json.JSONTokener], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3361=cn.hutool.json.JSONTokener, var1094=r1, var2674=$r0, var2342=$r2, var1076=$l0, var1459=$r3, var1367=$r4, var2588=$l1, var1937=$r5, var1779=$r6, var109=$l2, var3939=$r7, var334=$r8, var3614=$r9}
; {cn.hutool.json.JSONTokener=var3361, r1=var1094, $r0=var2674, $r2=var2342, $l0=var1076, $r3=var1459, $r4=var1367, $l1=var2588, $r5=var1937, $r6=var1779, $l2=var109, $r7=var3939, $r8=var334, $r9=var3614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.json.JSONTokener;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at ");	$l0 = r1.<cn.hutool.json.JSONTokener: long index>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [character ");	$l1 = r1.<cn.hutool.json.JSONTokener: long character>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$l2 = r1.<cn.hutool.json.JSONTokener: long line>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1