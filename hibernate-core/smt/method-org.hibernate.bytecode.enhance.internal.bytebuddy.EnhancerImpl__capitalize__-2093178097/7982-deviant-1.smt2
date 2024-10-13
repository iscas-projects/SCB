(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var368 0)
(declare-sort var2555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2555_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1125 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1125 null-String)))
(define-const var2031 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2031)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2031!1 String)
(assert (= var2031!1 ""))
(assert (and true (and (> (str.len var1125) 0) (<= 0 0))))
(define-const var3950 Int (charAt/698050440 var1125 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var2391 Int (var2555_toUpperCase/1913344327 var3950)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var823 String (append/-1166366385 var2031!1 var2391)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2031!2 String)
(assert (str.prefixof var2031!1 var2031!2))
(assert (not (and true (and (>= 1 0) (>= (str.len var1125) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), var2555_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1125=r1, var368=null_type, var2031=$r0, var3950=$c0, var2555=java.lang.Character, var2391=$c1, var823=$r3, var77=$r2, var3254=$r4, var2842=$r5}
; {r1=var1125, null_type=var368, $r0=var2031, $c0=var3950, java.lang.Character=var2555, $c1=var2391, $r3=var823, $r2=var77, $r4=var3254, $r5=var2842}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1