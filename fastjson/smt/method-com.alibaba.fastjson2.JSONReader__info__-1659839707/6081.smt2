(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1260 0)
(declare-sort var301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1287024874 (var1260) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1260 var1260)
(declare-const null-String String)
(declare-const var635 var1260) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var635 null-var1260)))
(declare-const var2002 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2002 null-String)))
 ; Statement: if r0 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var2002 null-String)) ; Cond: r0 == null 
(define-const var1427 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1427)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1427!1 String)
(assert (= var1427!1 ""))
(assert true)
(define-const var1918 String (append/672562846 var1427!1 "offset ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ") 
(declare-const var1427!2 String)
(assert (= var1427!2 (str.++ var1427!1 "offset ")))
(define-const var2064 Int (offset/1287024874 var635)) ; Statement: $i0 = r2.<com.alibaba.fastjson2.JSONReader: int offset> 
(assert true)
(define-const var99 String (append/-1001720160 var1918 var2064)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1918!1 String)
(assert (str.prefixof var1918 var1918!1))
(assert true)
(define-const var354 String (toString/-2075883882 var99)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1260=com.alibaba.fastjson2.JSONReader, var635=r2, var2002=r0, var301=null_type, var1427=$r1, var1918=$r3, var2064=$i0, var99=$r4, var354=$r5}
; {com.alibaba.fastjson2.JSONReader=var1260, r2=var635, r0=var2002, null_type=var301, $r1=var1427, $r3=var1918, $i0=var2064, $r4=var99, $r5=var354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReader;	r0 := @parameter0: java.lang.String;	if r0 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("offset ");	$i0 = r2.<com.alibaba.fastjson2.JSONReader: int offset>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2