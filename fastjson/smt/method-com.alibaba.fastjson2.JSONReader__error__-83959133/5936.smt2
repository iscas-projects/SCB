(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var242 0)
(declare-sort var1614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1614-init () var1614)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1778045184 (var1614 String) void)
(declare-const null-var242 var242)
(declare-const null-Int Int)
(declare-const var2221 var242) ; Statement: r7 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2221 null-var242)))
(declare-const var2483 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2483 null-Int)))
(declare-const var3915 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3915 null-Int)))
(define-const var793 var1614 var1614-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONValidException 
(define-const var3731 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
(define-const var2938 String (append/672562846 var3731!1 "error, offset ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error, offset ") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "error, offset ")))
(assert true)
(define-const var2543 String (append/-1001720160 var2938 var2483)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2938!1 String)
(assert (str.prefixof var2938 var2938!1))
(assert true)
(define-const var3415 String (append/672562846 var2543 ", char ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 ", char ")))
(define-const var183 Int (cast-from-Int-to-Int var3915)) ; Statement: $c2 = (char) i1 
(assert true)
(define-const var3404 String (append/-1166366385 var3415 var183)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3415!1 String)
(assert (str.prefixof var3415 var3415!1))
(assert true)
(define-const var1690 String (toString/-2075883882 var3404)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1778045184 var793 var1690)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONValidException: void <init>(java.lang.String)>($r6) 

(declare-const var793!1 var1614)
(declare-const var1690!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1614-init=([], com.alibaba.fastjson2.JSONValidException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1778045184=([com.alibaba.fastjson2.JSONValidException, java.lang.String], void)}
; {var242=com.alibaba.fastjson2.JSONReader, var2221=r7, var2483=i0, var3915=i1, var1614=com.alibaba.fastjson2.JSONValidException, var793=$r0, var3731=$r1, var2938=$r2, var2543=$r3, var3415=$r4, var183=$c2, var3404=$r5, var1690=$r6}
; {com.alibaba.fastjson2.JSONReader=var242, r7=var2221, i0=var2483, i1=var3915, com.alibaba.fastjson2.JSONValidException=var1614, $r0=var793, $r1=var3731, $r2=var2938, $r3=var2543, $r4=var3415, $c2=var183, $r5=var3404, $r6=var1690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.JSONReader;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new com.alibaba.fastjson2.JSONValidException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error, offset ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c2 = (char) i1;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONValidException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1