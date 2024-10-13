(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sort/-537476865 (var1770) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun valueBuffer/-537476865 (var1770) String)
(declare-fun valueBegin/-537476865 (var1770) Int)
(declare-fun valueEnd/-537476865 (var1770) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1770 var1770)
(declare-const var2565 var1770) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.Type 
(assert (not (= var2565 null-var1770)))
(define-const var2312 Int (sort/-537476865 var2565)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i0 != 10 goto $i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
(assert (not (= var2312 10))) ; Cond: $i0 != 10 
(define-const var2897 Int (sort/-537476865 var2565)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: if $i1 != 12 goto r13 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(assert (not (not (= var2897 12)))) ; Negate: Cond: $i1 != 12  
(define-const var1377 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1377)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1377!1 String)
(assert (= var1377!1 ""))
(assert true)
(define-const var920 String (append/-1166366385 var1377!1 76)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var1377!2 String)
(assert (str.prefixof var1377!1 var1377!2))
(define-const var2934 String (valueBuffer/-537476865 var2565)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var1325 Int (valueBegin/-537476865 var2565)) ; Statement: $i8 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var494 Int (valueEnd/-537476865 var2565)) ; Statement: $i7 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (and true (and (>= var1325 0) (>= (str.len var2934) var494) (>= var494 var1325))))
(define-const var1190 String (substring/-1240304868 var2934 var1325 var494)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i8, $i7) 
(assert true)
(define-const var442 String (append/672562846 var920 var1190)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 var1190)))
(assert true)
(define-const var1737 String (append/-1166366385 var442 59)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var442!1 String)
(assert (str.prefixof var442 var442!1))
(assert true)
(define-const var1996 String (toString/-2075883882 var1737)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1770=com.alibaba.fastjson2.internal.asm.Type, var2565=r0, var2312=$i0, var2897=$i1, var1377=$r1, var920=$r4, var2934=$r2, var1325=$i8, var494=$i7, var1190=$r3, var442=$r5, var1737=$r6, var1996=$r7}
; {com.alibaba.fastjson2.internal.asm.Type=var1770, r0=var2565, $i0=var2312, $i1=var2897, $r1=var1377, $r4=var920, $r2=var2934, $i8=var1325, $i7=var494, $r3=var1190, $r5=var442, $r6=var1737, $r7=var1996}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.Type;	$i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i0 != 10 goto $i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	$i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	if $i1 != 12 goto r13 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r2 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i8 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i7 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i8, $i7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3