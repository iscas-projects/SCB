(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2214 0)
(declare-sort var868 0)
(declare-sort var8 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var2214) Bool)
(declare-fun var8-init () var8)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1287024874 (var2214) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var2214) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var8 String) void)
(declare-const null-var2214 var2214)
(declare-const null-var868 var868)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const var3787 var2214) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3787 null-var2214)))
(declare-const var521 var868) ; Statement: r8 := @parameter0: java.util.Map 
(assert (not (= var521 null-var868)))
(declare-const var1027 ClassObject) ; Statement: r1 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1027 null-ClassObject)))
(declare-const var3998 ClassObject) ; Statement: r4 := @parameter2: java.lang.reflect.Type 
(assert (not (= var3998 null-ClassObject)))
(declare-const var2307 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var2307 null-Int)))
(assert true)
(define-const var2352 Bool (nextIfObjectStart/-245382802 var3787)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
 ; Statement: if z0 != 0 goto $r2 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(assert (not (not (= (ite var2352 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var328 var8 var8-init) ; Statement: $r26 = new com.alibaba.fastjson2.JSONException 
(define-const var794 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var794)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var794!1 String)
(assert (= var794!1 ""))
(assert true)
(define-const var247 String (append/672562846 var794!1 "illegal input\uff0c offset ")) ; Statement: $r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input\uff0c offset ") 
(declare-const var794!2 String)
(assert (= var794!2 (str.++ var794!1 "illegal input\uff0c offset ")))
(define-const var3746 Int (offset/1287024874 var3787)) ; Statement: $i10 = r0.<com.alibaba.fastjson2.JSONReader: int offset> 
(assert true)
(define-const var2602 String (append/-1001720160 var247 var3746)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var247!1 String)
(assert (str.prefixof var247 var247!1))
(assert true)
(define-const var3877 String (append/672562846 var2602 ", char ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 ", char ")))
(define-const var3775 Int (ch/1287024874 var3787)) ; Statement: $c11 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var2332 String (append/-1166366385 var3877 var3775)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var3877!1 String)
(assert (str.prefixof var3877 var3877!1))
(assert true)
(define-const var1806 String (toString/-2075883882 var2332)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var328 var1806)) ; Statement: specialinvoke $r26.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23) 

(declare-const var328!1 var8)
(declare-const var1806!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), var8-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2214=com.alibaba.fastjson2.JSONReader, var3787=r0, var868=java.util.Map, var521=r8, var1027=r1, var3998=r4, var2307=l0, var2352=z0, var8=com.alibaba.fastjson2.JSONException, var328=$r26, var794=$r25, var247=$r19, var3746=$i10, var2602=$r20, var3877=$r21, var3775=$c11, var2332=$r22, var1806=$r23}
; {com.alibaba.fastjson2.JSONReader=var2214, r0=var3787, java.util.Map=var868, r8=var521, r1=var1027, r4=var3998, l0=var2307, z0=var2352, com.alibaba.fastjson2.JSONException=var8, $r26=var328, $r25=var794, $r19=var247, $i10=var3746, $r20=var2602, $r21=var3877, $c11=var3775, $r22=var2332, $r23=var1806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r8 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.reflect.Type;	r4 := @parameter2: java.lang.reflect.Type;	l0 := @parameter3: long;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	if z0 != 0 goto $r2 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	$r26 = new com.alibaba.fastjson2.JSONException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input\uff0c offset ");	$i10 = r0.<com.alibaba.fastjson2.JSONReader: int offset>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c11 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23);	throw $r26
;block_num 2