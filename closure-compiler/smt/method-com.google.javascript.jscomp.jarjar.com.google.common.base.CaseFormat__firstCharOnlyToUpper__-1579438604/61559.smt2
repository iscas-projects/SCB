(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3385 0)
(declare-sort var2691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2691_toUpperCase/1185862532 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2691_toLowerCase/1634554405 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1371 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1371 null-String)))
(assert true)
(define-const var1470 Bool (isEmpty/-1285796103 var1371)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1470 1 0) 0)) ; Cond: $z0 == 0 
(define-const var994 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var994)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var994!1 String)
(assert (= var994!1 ""))
(assert (and true (and (> (str.len var1371) 0) (<= 0 0))))
(define-const var2702 Int (charAt/698050440 var1371 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2145 Int (var2691_toUpperCase/1185862532 var2702)) ; Statement: $c1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: char toUpperCase(char)>($c0) 
(assert true)
(define-const var2525 String (append/-1166366385 var994!1 var2145)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var994!2 String)
(assert (str.prefixof var994!1 var994!2))
(assert (and true (and (>= 1 0) (>= (str.len var1371) 1))))
(define-const var3469 String (substring/850833817 var1371 1)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
(define-const var880 String (var2691_toLowerCase/1634554405 var3469)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2) 
(assert true)
(define-const var3797 String (append/672562846 var2525 var880)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 var880)))
(assert true)
(define-const var3344 String (toString/-2075883882 var3797)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), var2691_toUpperCase/1185862532=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), var2691_toLowerCase/1634554405=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1371=r0, var3385=null_type, var1470=$z0, var994=$r1, var2702=$c0, var2691=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var2145=$c1, var2525=$r4, var3469=$r2, var880=$r3, var3797=$r5, var3344=$r6}
; {r0=var1371, null_type=var3385, $z0=var1470, $r1=var994, $c0=var2702, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var2691, $c1=var2145, $r4=var2525, $r2=var3469, $r3=var880, $r5=var3797, $r6=var3344}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: char toUpperCase(char)>($c0);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3